Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA6224AE6
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761968994; cv=none; b=DGQXONKYQb7v0IKjfexMoq+UPxqw2zjq2K+TL86t/DTy59tGSdAR5SpQ0EffngRWyPOXSPbhOkb1zrNd1EBYVDSpR5GnqLMvz6ziJIELvyMgbUGm0xNuJ2i2dkc3YIsTISVadseCsATL0iCAFTO/hBr44mZC6lZPPY00YobnIs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761968994; c=relaxed/simple;
	bh=RZMSt/2x01lhahfe+yCj+7FGCN7xLRm2qNy0S0P7rNo=;
	h=To:Subject:From:Message-Id:Date; b=YtJWIA8ijdF0b+Lk7YYiTiIT9nzFZ40/CTkbJfRUe8BrNjK8Qm05yPnTizdvssg5ApdAFpW/OHwP1FfLpO9IlMlrBk8vmtwfYTblCQ4WrcROKlu2RaWvD6RC+FnJ6DWeNxGiB5djbrO+AduxgDNNdLITjaUZ5SpOKCayMkfoGqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sn1XEoRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sn1XEoRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9174C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761968993;
	bh=RZMSt/2x01lhahfe+yCj+7FGCN7xLRm2qNy0S0P7rNo=;
	h=To:Subject:From:Date:From;
	b=Sn1XEoRxy/VaACwcE39VLSLPs5vxqcF/uMBUg8YO5R2aNoMhHam4ioAxWZpW3MFpj
	 9MvSY8KI23pkdvjA2MTRO3X43m41kHdMU6CiRCGGr4+tMUeBFf9Z3bEKgUMhqn8l49
	 rGlNdTn6oN1TEdv2dH79C2y9SmRVwgYSbkAvQHRZRRKZyxLg3x/sjTnCI6bJ3so1eZ
	 NP5YPt6D+K1r+pYu5Wg+rbNMpIn7MMD8uOOtiVqt00m7PH/Pu3TM6OxTz1ypkHMfc5
	 EAmKKKJvvEmSTx8vstkd8lTRZOHxjqn1nMQXUjLjdg+7Smvr+fW0SBQpJhM+UPpz1k
	 nTuB4ui78dE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9409ECCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196899358.19224.16892201994858224683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475b7d7a4d9ad1ec5a7fe428c6215b8ab91d06521cb5c1310c64ad10bfcc9c97
Date: Sat, 01 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761968993
