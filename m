Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F57D1AA1DA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750646394; cv=none; b=e5A4F4pj7igXi7EKAymPITukWnt8bFuUXfXjWEH6cf+UxfhdYqmZYO1X1QkES8jKE34IQTFynj/qw7a8p/SXN9b9M39Y50C/5sLUHSoi+dfSxeexPiDHJAvYC4Vyv1CZ1p6eo3EWw0xGjcCiURnHdK+J7DN//5VwNlotcqkDUVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750646394; c=relaxed/simple;
	bh=nU0+RxKuSKwRbdVITtae2MHwG/47lmkEErIuE65NQxk=;
	h=To:Subject:From:Message-Id:Date; b=lH5PZDxn06V6UPg6Mk+dUg3cnz4mPzmnjr4Yle9E0pDCrnrYTAr9J0qJrFpRnwh3lgHSmQ5j1tRtDpDuznWAibwPD6FogySVsUV0i1lvGAUBQetgzR9MrRSIt/EmLy71chtetDvGM2i0G1MrH7vGV3Is0suDutwbeKM6V9AndHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HECBOFSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HECBOFSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F357C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750646393;
	bh=nU0+RxKuSKwRbdVITtae2MHwG/47lmkEErIuE65NQxk=;
	h=To:Subject:From:Date:From;
	b=HECBOFSq8ovMoKYTn73z3AU4lg5aU5gAlnXsf8VLn07sJqoEOV1NP8NVpYyfmUlq/
	 v8mD9wRsCHSkeBpMLMdi8ckvH4TgzKstwECfJNhVkyM1HQVRZIS43hRxTEeMtmSKhC
	 EkEWQj28pZS2lpYEbAlxamBXNgrpRSoyAOMo/klx/UwfIWF8/vpkp4MB7PbFIfTHtT
	 pSUNh7nTKvcH1NOG+g3PLCIity7YGLBWBCBFTtgcJnI1IuzQhBgXJDb15asK3WVUk0
	 1V7SD7+x1PpW81ivY7gZ1GtAZyBmwX+17Az8TIpkobSpqC9GqXjHnqVtv1HPfgvcaA
	 SfyzX3v1fThUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90794C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064639358.26356.9227197992454370784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db56a7a6cd2d947f19f426352b5111dcf938deb4dbc60f83400828831fbb7514
Date: Mon, 23 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750646393
