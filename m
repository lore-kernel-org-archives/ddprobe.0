Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBE512B93
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755963594; cv=none; b=fJPbbOOoyOHpkcRHZH1j9QDsVLA78uUX1I6NqN3ase/mjMfO3RgqgjJmf1ETu8TcSgODbbCIyyDt+EfNuXSkjKXk9UmAOL1dyNsibMZaDZ4aMhImw9+rfEBW7kkdigJ94muqzounY9AVC+oz5O8Z+VyHVJXbZ5/TcGuha+oVCg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755963594; c=relaxed/simple;
	bh=ZvfWWB9iTQuKLlSwgjDyBfa0+402Yh3mD6n0Zvgvwv4=;
	h=To:Subject:From:Message-Id:Date; b=GqWNJpsRG28A78HPbFyhZ2cR7yKPJViH0IvKz0hirHfue0Ul4LJAxV7tnfv9qZZhBUDodZcpemAr42pzAgpbUkAfCRiO5rJyb8fPXtVmhSTfjLvMTek24T6FxicDvzvzbuV1tQHwF5AwwnVwABeIs6eItAMzjhXNQr7BXDJ4xn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So1JNpw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So1JNpw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4060C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755963593;
	bh=ZvfWWB9iTQuKLlSwgjDyBfa0+402Yh3mD6n0Zvgvwv4=;
	h=To:Subject:From:Date:From;
	b=So1JNpw9OnDU3VBAuEtH7Umgie2p1Mp6/FLNvD7XMkviUKb6yTgJ5wB2fwCeNHdgi
	 4CYvfUfUhnXVSutlV1wuibTz0SVjrPolz8IHeoDtVF8TyZ4EoG+mVS47565xXB6xdJ
	 YgYNut09hmq6YAQF9cDLU0gnaChzk1HnKjchSR3XOu63O93pbzDFXbjz2jlWyMBRkE
	 NGXR+p7MYXrEVfA50SkNCEkxrQwgwhtbH1OkcHe18iThHyl/mlZonMSGQ2NlcRAIMM
	 rI4r4+hoW9sXrBySClfx6EFOCqHeToWa/ypt0YxdlDZVGmoGfswqJk0yJjFj1ErdaV
	 981yDIk+hyDEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B9CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596359359.22141.82872719796388550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38065d303650f243c67a4cac9461c6fcb8fba4811de544b37fe0f2513096b09
Date: Sat, 23 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755963593
