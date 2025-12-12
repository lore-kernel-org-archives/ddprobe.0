Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3FC2561A2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765519974; cv=none; b=p1y4XjMviMzPC14brH87pfBg95sfRAEHNwlM7p/U+QRWEId7N2YkBscdRhjtEwTz7TQ0OnlTOyPKxDBqztAalAgM4caXbDkfKsFFPAAxfqMnDOIMACL8tlM/BJaPBqB4XZP1nxnz6YtuPZYUO5vsfJ4FiRs8FFJB2e/qJwmw9gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765519974; c=relaxed/simple;
	bh=6ltLKoTcjtIdatuMOk5a4u2OhNKlS9qq4tWAZU6GPNI=;
	h=To:Subject:From:Message-Id:Date; b=O9Q75doXplt/C79hnlzcTi7/S/b7sibBI2s0CueYfwilSUpVJZlYGIym0gWh+hr0ID0TEuFDli8v7r/SgGTnvj/YDeF6Vh5zK8wt/tRdGr3TuzvRz9/F0RZVHl6mAedsLsmajuOhuIG4AR5GhgZwBGpI+akdWh8m/fIOegCZrtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cN0+ywJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cN0+ywJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB249C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765519973;
	bh=6ltLKoTcjtIdatuMOk5a4u2OhNKlS9qq4tWAZU6GPNI=;
	h=To:Subject:From:Date:From;
	b=cN0+ywJz1gEI1ywDgPjS1tXFNQwA7G5WKaOzFDcmJRGpLnRV4KWcVATeUGHsIx4ev
	 kiHaDmRDmHqY3RlSl2xW1I6bYp2PRoVwozPX9E3OgFQPZm48yusS4pq3elSLqcOu57
	 wZTA6mAcxEYN8ewaUIXBemUbX9Fda6mdrSrWwJ0Hh8nxvvW6rxp3RviwqqhMq0aqh0
	 u127c0f7YvK2h1y26QJmMX/0O3q1TJgXupyenM8n7xwbkXYqcDsHcVgSJR8lrnULJK
	 n7UVM8X+BGKbVGHFNPhRhSSyZdK5OFL+9WRnBJFpKwRAzdJlnp7bSgfr6YLYBXf9Fv
	 /ku8m3CCWYFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996F8D4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551997361.9239.14351848363025495012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc738e0cc3432b9fabb47fd7b00e4452d00f54840fad023cadb8bdcc566e4ab
Date: Fri, 12 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765519973
