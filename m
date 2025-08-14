Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B53631985A
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755196194; cv=none; b=YWrVpuRDKLdysPhytv7Tf9zqe3LW2Qk8qUhGmXG/fJrtH5MVvF0wMyBApoee656F/kQL0hXkrFyCd57Icg72flOauaoYW0acCTSthWqhWNFYror9T5FxOXb4VNZ70pcFbuto+JxZMA73KRWxgQEf5HXOxUPt3kTjjDxlHq0JPZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755196194; c=relaxed/simple;
	bh=1FVv3rdEuHbpu8QAObiPMWApmYjh6QeHqcFWW29EVKI=;
	h=To:Subject:From:Message-Id:Date; b=fgJUvl05F1qZ+bL5oIXIi+22u3BDxs6ZxvynVgLIjbAlE/iZ9SDocKyQln/IPIta43lM7trpuRIrISAo6+z6rpvysELwjMe3EBPRPMIyE45cGQLh0FrPrFPKd78eeeowYs4B6Y5Y3Fr9ezdj4HTZfGaa3+e1qR7G60FsvYmHAtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jox6bVFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jox6bVFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A56C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755196193;
	bh=1FVv3rdEuHbpu8QAObiPMWApmYjh6QeHqcFWW29EVKI=;
	h=To:Subject:From:Date:From;
	b=jox6bVFccHr5weLmIShTxMvrcCrCn24YpuIv7U7N4kOcHIu5p/cVqHT8em3n3XwRu
	 vdZItSrs6RUtSlhrk0HzwbEpCpttOBLV1Er7R93Tt5VC+L+z589oxHNtJ+BWIjTMG4
	 8nZIhOGyCFAEQdRq07Rf0Tzc1Panpt68opPWpgec6Mpkw5vBj93vqdmsusQopqxqVs
	 +hP/Ook8brVljv0REbSoUkiG9LHKK0qT+Fs2zaiooC0gd1xdOPi+8MCfLLhnfzoVhh
	 JorGmfxwbgcRdEY0RMsBX8U94bPJSMZo9ZXSn52uJkedT5avpKy/H8TM2cHRn23ejA
	 73LL6kRaeHj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8CCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519619357.11097.1629345456486192125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2189a2790529c5a34111cb307a21a4a222abcd08c5e5d155b12cf3e0339fd88e
Date: Thu, 14 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755196193
