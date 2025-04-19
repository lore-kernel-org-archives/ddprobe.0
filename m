Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E811BC5C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745071194; cv=none; b=A9st4J0iUrV4W8HcJIaN7djQMz7AoJE0+O7EOn0RUeGKyDjbjL4b6KFfYa529nJvdhtzSe1/VcS/pTNkhQhVTPQIoX+O2SVGvsUGJQ4GsbmjqMgryd7tSJyQ/p8ghQx1k8Bj592xTyqr2hxFkPeITHioCUDa/ouq73iU6pPyScQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745071194; c=relaxed/simple;
	bh=yJncRUJ/6icsDHID/gjHb1NgV5sUdssYCnd8Ag1ughA=;
	h=To:Subject:From:Message-Id:Date; b=lAkGo+Eg0zxNZRRxUBVWEHxhyPdQ2BfR7BtJ9SuUX3EdK4kH2bmajgkqDLjKyfM8RCQTPuG3XBrpDsGEZqEcZv1LQ7Qs4JpyjCp9URIIqGQMDT7zYjYI6lfBFEsW+zIjDfCqyfxe+SDPXIU729ilZXJsERkX8voBtieBDcY0Kn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boONsvCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boONsvCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A421CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745071193;
	bh=yJncRUJ/6icsDHID/gjHb1NgV5sUdssYCnd8Ag1ughA=;
	h=To:Subject:From:Date:From;
	b=boONsvCAKhwS6PyHAER6FjcEMzPn1OJjbPEIT2wyo7M0I6N48q1EoIBac4J6gtnj2
	 EKZc65fk0ECC6zximabVOVQn9jd85577kqTZL66nS3qaGTGR3J5PNd1iuhI7Q3OL/4
	 VaeZOkjLtCQQ8RcI724O2bDoteXOvFHpjevFWRhqeS4dBq/zGWw/YSAPDqoAQzzMtX
	 m2OZsN2SwdVY1asUFE2ayuNHi3jmuguU5r2/2H9Kh/fLkb7EralyNqNc5eppDDvPsP
	 tAG/72Q18XBbteW5Mplkl+CZWKxmOlkFKv1LMURu/GCarLUW79XqvDAPfM47u18C05
	 BWTLoo+ik3fZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92192C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507119358.12868.6734855074711042660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1a3202ab733e2c4c5e12ad2ff348a509cc6235c71319f1ff0f00d9e7a883f8
Date: Sat, 19 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745071193
