Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C571DFF0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737515154; cv=none; b=gHPv80FPVv9PWuVwp36clBcQdTziHeB4DgDAcell1Y+9tpnifRLdNCTap6+fECp/CRSZkQTsPclbnD0pmo2bNLdsy/th9hysPd2KXyNvFruF6CdVJEORsRmDyeO56tYDhbOu25xcsIBE0RMSgkBWnfYUFTGMa91SzuM+SHWkQ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737515154; c=relaxed/simple;
	bh=Omii0ypEo3DWw7OgUSqY0pTy2R2ihYQyo7JT/VLr5NI=;
	h=To:Subject:From:Message-Id:Date; b=AylGidkpuv8MixGV7tmIxJNLHUhaA0TcSYAir3Rxk7vB6FWCJpB0GX3cD0mZsXtmIvv2Ib3II52CBs8FgqJOQI62krqlu0JLpK37xKchSoAJf+TrJ/GoqCSVOMfzwi6ZE+m6uel7l+ip7N1GClTAUalPubjopxsZsr1v46RiLj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCdO9hNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCdO9hNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3096C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737515153;
	bh=Omii0ypEo3DWw7OgUSqY0pTy2R2ihYQyo7JT/VLr5NI=;
	h=To:Subject:From:Date:From;
	b=OCdO9hNWStvQkh5aAtCyp3i1+8ict2BdrTczdgyctRi4H0Qqc2sHmVzv0/VZBGvgF
	 /g7MYzrwvS0AnmXTqjKUDqu4zcpuFPR2hHrRVSGexLJw4/M9Rq5KJabNkz8MF2u5/Q
	 mbulWqiPcG5MnB/BFktAuaP9uSiHGfGSKqvpzkVNbJOSkw2i7DBE4mnG0zYexKU8yy
	 vxlPmnjva6ozdso4LNrVaJvxUeT6r8RvS9hyVca8FCyTyG3RHztuPcAoWzQEiuNja2
	 ekUJhZmwjtxOMUdgMVRvXYEY60Lk8p6t1wqOZPmzvl5dKS/VxKqyzT7enyXPWf2eik
	 ZqpHH9te20slg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F360C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751515357.30944.11312253745859684051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb78591444e329dd5c4d9fdeb82ef4806743421e9e4515b38a17c0ab4f706e4
Date: Wed, 22 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737515153
