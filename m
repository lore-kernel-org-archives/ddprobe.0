Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17A16F841
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738211754; cv=none; b=DPsNQX8OejdefAYXB6upjDGQNAYUtraq/hHW7cJaIaVy42vVOKBUyYQ3lThBrDOM0Awh2CrAw3VdkMc4ShAd3vteYRF/LzyOR5F8sUawlodhNmCZUvUGGXsAL2BMhPtnNDlK/BmfcttWodt7TxdDjFEe8iihL/CKyDlUHTKXxMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738211754; c=relaxed/simple;
	bh=MFDJbrDlF0KExpiCISyajeJVTuDdXQTltcfXxzO17fI=;
	h=To:Subject:From:Message-Id:Date; b=CxcU0Ku8CncUVSA+9mRSV94LVsaXTOJAASXsZA4sYQj1X3NcgS3AMbDzdc7qGKzqcB+ef26ZF3/zPNdUrruzZo4JrdsQJdzycI68a5jmq22I7NDUZnw/+wc8KBgQSKNNPxT//M+HeSaeZ4s+dLbC/vK95sczDA7QFNHvtx9jp70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfCTI/au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfCTI/au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AE9C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738211753;
	bh=MFDJbrDlF0KExpiCISyajeJVTuDdXQTltcfXxzO17fI=;
	h=To:Subject:From:Date:From;
	b=PfCTI/auKP/Uvw7fOLn3t+PCrnGXE3CPUMeUlKvg70B9kai0ovgdA6Qq6TRspDmYm
	 vLL8tgZda/JK7ZjAlPxrpOgPlO0HkIQWWHS2hBk4JLTKfl4i4q70TgqnUe7tLHJavX
	 xOWb9mag+4MupsA8ar+LckakphpH4IC99NVhwQgrgYyL0BMxmUWcfRruYe8SoccXaY
	 5jgQYwuf2BxDYFLrb55p+und1VGuPOWGNLKytTG9hyeTulLj/amy+5KefHLEonMp8f
	 nlV3ZE2nKXBAAmK8NPTxPGrDAz0JYAIfgXDKGW/aOkh1rtKDgw0Bt4FIAAYMtCyEoz
	 LjRfBBKCVaRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B3CC0218F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173821175365.1055.14430820369679495240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c01f14f65a66d46981451acc01aa7c7f30e0d86f474c3497c93d8c8d036ba1
Date: Thu, 30 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738211753
