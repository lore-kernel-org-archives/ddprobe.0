Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C79232395
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783780714; cv=none; b=aZvwou1mc7Pnfh9HulQipmv0YNfGg1UDpDm5ehjYA+WWXOQ7h/c04SBsbcJAJ4RWPHA9ZX+D6M/RIkveePRJVm4TIv28BATOdrLI8pUvMJDdi526BslVMDvc8BFx6yOZl4KEGC+YyqhkvGgfCFOvqDnKtZF93IS7a6XCxyvg88w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783780714; c=relaxed/simple;
	bh=eaEghDbzFF7eKjNuyvp2Pi302kF0f6Bnez3m85q39QY=;
	h=To:Subject:From:Message-Id:Date; b=eY9B3LxXTpW31Z+BB6ZsS4zxjVc0Fy3W7cKEtbqL3iuMuT6mIT/JGIQuBtlYGgFleZTY/zHBIOHox3ZfQSZm83UODyV81FkOJxry7b6bIVxBnE15PLVn5yaYYc/+j9KunMny7T1yi+hAY1jzM3isYzYYtfxLWT+vZFV840L8hA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKgQafhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKgQafhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D319EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783780713;
	bh=eaEghDbzFF7eKjNuyvp2Pi302kF0f6Bnez3m85q39QY=;
	h=To:Subject:From:Date:From;
	b=pKgQafhyVJOsuA9KD43r/Uv4UZ+HuV86F5pHCiEEYYSO43e7EDLomJp423AjBT3Zm
	 eajJfKg9E5P7wdg5DN6SP0ceTgIXkGFksnWdso534/7rdLVky3OZx5+EQGPGlcHBhX
	 KEr3e/sneDel0K3ltWsTQL0G4mlIOwS37mPi7AZl8rhxxhEV8TXW+qWe7VBRTC+rJB
	 rPV6p6ugyRFertW9XKVYzgmGcq/hbaq9kW/csRVSGr54QvH0YCAzhWEHfV/KRHpY96
	 rFtgFveBsc2GZFEEBErmyN+7NkRMUmRSId1+kZorwH6524kk8lF1kho3W7HirhHSqR
	 /gPwTtnfqnqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD71DC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378071368.8102.8718066420273901490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7d1d4a7c13d03cba4eb00ecd64d3d0b4489735ce1fbe9b9e537b0342495b7c
Date: Sat, 11 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783780713
