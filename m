Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B4222A4F1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750716593; cv=none; b=N8I/CDqxT/HuU80tGLpHxiysLimtjSu+7ZkMUp1Pv/dd5IazbHcpCTL1NpkPJeHKM3fLPrPal7KMwo8QX4vknQYSgfYz5dFABqQyQaUKGyFVQBdO/bk/IIWXOg9fj8ACg+W32foXtSWifzX5T4e33TX7a8RV4GSBxKMHoFkKGy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750716593; c=relaxed/simple;
	bh=BrSc5Ulo/oo351+pIYD0pdXRWjc9qMBO7CXVsv7YqD4=;
	h=To:Subject:From:Message-Id:Date; b=TAC+NHORKvVQG69h0L2HHXptYaODP9wdhKDQ5V4RLnOzDTRGPTxs6PcGGEudEHD2Gef1wS3msmqaIcK1nuuZEY5lOtQQ2bF+SJl5Xq8C3LWXB6eFIY0ptbdgm6hUFC75LLNaoypb3dCbvVBVobP5md4AlE0C5C8wXor0ZFR0BNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jgu2YkEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jgu2YkEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61AEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750716593;
	bh=BrSc5Ulo/oo351+pIYD0pdXRWjc9qMBO7CXVsv7YqD4=;
	h=To:Subject:From:Date:From;
	b=Jgu2YkEWas0qWorQszPdrCB7Gi8svOmVucwKSlrlHEe5lt1a4db8lqCRgsw+6dcx5
	 oBg83wnfihP8Ep73pCLFX39h9E9bARGT699ptehSXSBfyfWAWviuI9DtDNeAJXFYfd
	 nF7j7Ji8C2DGPfFi1mZAdjQaOotHC4pu9eOGuhbolHOY0qXx61XQnuiPmwe70FjSAg
	 rdWJU+OHOe97JTFJ/t/9OK/VPVvY7MwuU3Dcmi2sT48JhUOfca1oOCknZ71Osfr6xH
	 BsB8Qj2LZkHpofVR0kWWHViGaD7/pUIroCHTLhgwBFCPgpD7uck01WstZnWV31UJXL
	 9jiNJb3MGcbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9631CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071659358.6444.17158759619341492696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e5433f0d1f971c741013c28960f5e8b71ddaed5ec1fe078d0b2a15c0fa36cf
Date: Mon, 23 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750716593
