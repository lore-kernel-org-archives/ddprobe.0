Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE251394798
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778317654; cv=none; b=WYgVWYukDvVPalqLsUqVFsZoj97W8Xt6VRk/d7D8oApUGuqj/TT3lHxWsVQ3oDYPCrUzZpDThZeK24p7K46oqhlVilz+8s8VrrXspbAB2ZEY4dS6R7ShFdOlwWto9aech1FfiQSWkUcARoa6fUIUobd0mi00Q/Mt/p1w8npMAis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778317654; c=relaxed/simple;
	bh=B8khHFfJ6/NBoc1i/SHR3CXkYZef4wFlZHSYqMb40js=;
	h=To:Subject:From:Message-Id:Date; b=asv/VAUhf9aKjaVQd3vMCcTphN2LFrmsYicevY97mDt2tkWxSAXkKRidAJbsmIqOADdKA6t2PbYliYdJtenF66sanUwHCCiFhTQBKlTnRbARN5DeLSzOTJwPKBBTUcXgEdv536V/oJLzrzy9XexhmA+iz3s09bd+ppH5KM33dVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1yLmWJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1yLmWJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4905AC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778317654;
	bh=B8khHFfJ6/NBoc1i/SHR3CXkYZef4wFlZHSYqMb40js=;
	h=To:Subject:From:Date:From;
	b=B1yLmWJ1flmZ8eZ5VW4MiUZjVYDOIjlVKAJ1fLEHo3L+zih1hip7D5+NQdom6Mxwm
	 INivqnnIYtXSOR6VXcdvFO5KzchkqxHe9VcfKX2Np+PbEEiK4L0AU834WYp9RUtzq2
	 /Otai/VBZJplKPzcCOWYfdrNdMOQrclLYGGJjOgwp90UzQp+94+OejBBpeljzZutPk
	 wr+SjwyV2m3On4Z/p4hq+2yz+x9EnR1jtjFg0/1+kE2iIBdKQDhv9xmKsztVOgdKPw
	 kBALrY6CkD8wmgjCs3L49hIJ1aG6dYm3rAZxfOIfo5w/HhEYFPyNagYEEIRndWVUXu
	 RZq5fvI02dTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0861CCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831765395.27178.16579598684938129169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43b243d3157bc4ccbd9ce602aa3cb134154e77742f2fb232ebdaed0a50889f1
Date: Sat, 09 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778317653
