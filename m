Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4387018A6D4
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724142954; cv=none; b=rwOLSRErDsCI57qJGoKhZjpcMlwWewQTZj97ZqXuVdCyJ3AGOuLx/HV+btqvTHbdaQiooagGoIJLm304GHSdRsdF1rUtJynyMqQRmrVdRT5Rt8eooRErzWi88OB2UROb9XoujviOD76TKpjstKWcsvLVBviHK3wwliLvnHdN6Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724142954; c=relaxed/simple;
	bh=Y0/ktUPsCINyxvX4dpLvVtOdXeCLlUPDkek5Zq2BoVA=;
	h=To:Subject:From:Message-Id:Date; b=eb7nwim45sTvtkUIFpFcMGFv57CKSNGdyybyOqTrqOilhC0ysgR2Ovzbp/eso6TGCuRu1QjaP8TAKSlUfRUm4gUkObZJAuum/u9oxXI7SbCHePZXogRNwHdFd+PJUxO34GpmtSvPJrPHHo9a3TcChtwXu/i9ZqMW3NvuOL2VAGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXLBMaX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXLBMaX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65FDC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724142953;
	bh=Y0/ktUPsCINyxvX4dpLvVtOdXeCLlUPDkek5Zq2BoVA=;
	h=To:Subject:From:Date:From;
	b=sXLBMaX9jTtZmI+4t7IGbbhQVOY6qA2ufGDIYFAQ65bgpKpm6SwEQ1nbVKRmZV+oO
	 EILpaLj8Oe9a/C0JBVdshGGWG6hRkD+wP9rSJEBfutF9vFcEL4gMIJ4GCQ55blTelr
	 xxutVL+qYip+fbqva9GAYqzKwPWTUxvVxLaD0bqg7TPhtlFRwiyTgDGbB/3d3FcGup
	 Y4nKm8/IZR+Rp4XOCiU9sLkQ14otGgB8HhwztEyfaXToZoIWYAYVmDDsfaeBa2xOna
	 7hrum3Y1TXOpjwj4ViLLpp1yi/lNQREPYSCVx8Ab55mUhylnsO2ESgnBxx8U7M8+BS
	 SUI7wlwQ9H8Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC59C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414295362.8126.10655375695407347684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decb143698ddf94e752726f20297571892c89d2576e2e8422413ad6ab113112e
Date: Tue, 20 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724142953
