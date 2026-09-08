Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572581B4F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788907834; cv=none; b=QRVEvQx7QIQtYQS88cISSfLYAjwX/gxUaQA7AN+LNt7/xJ8zJxpyD888knQn4XvNMcxlCUzLvj7O9d79wwU/pS7WWQDvx84oLiD1E9twOfx6h8KUG5WeanKPVn4kAHeX9x3qV4jcsbtMealVeewigGXZh3iGmHxBD25Z8I2POWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788907834; c=relaxed/simple;
	bh=GCv2y3S3mcA699uLNk0uTkDY5QzzYQ/hkG6Hkl5loNY=;
	h=To:Subject:From:Message-Id:Date; b=sOQ2+b3KjpoIpeyoplCKnXAzw5SA+p6AstoI9UcIo2IUZFzRUYImIBJXhYatTVoB4WLaEjBNMkalOlXraJgIDY68o5dytobb7TKaeTH/soqcjznu08CFuCRtQzMS57sf33balGAjanb3GB0xDbgZ2eZFEId2gn/F2oP4q9+zHew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH6MHmV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH6MHmV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC406C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788907833;
	bh=GCv2y3S3mcA699uLNk0uTkDY5QzzYQ/hkG6Hkl5loNY=;
	h=To:Subject:From:Date:From;
	b=oH6MHmV/pje9lKMB7SIc/vCBe1sizY5z2K9Vur4c34dh5cTQkvNqzhq2pvtGilU+p
	 wMycoCGCH9bAEJTveGF0pBGLl6lZ1Sck40wSBJ3UKao7e/02Z5HwcYmtK2wARvagVl
	 Y8NYwzn/b2eTDUN1IoCgUvOIW6EsTmBvt6VU1AeyOBVAGEme0ICMuILi1DgfnujPOA
	 ik9kaKFGOxZFNeQG0Sehd8fbCJvjtmK5Btymzj8vuZahGB6l1MEE+kcI7iq4fRYGsT
	 8AK2sydLqSRlSD9AJuyUIu5VxbjOCmVYiXKU132JjKCWFxsZLopoe9+lgnYEqtPBjz
	 5pmQgN64gRbAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7422C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890783372.15397.9103738977470163744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04050f87e6f3b32a4dbd1cb4876efd922086f0fcedf2801bdc7315d363fed706
Date: Tue, 08 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788907833
