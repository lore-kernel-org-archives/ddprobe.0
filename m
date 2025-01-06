Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE89146D6B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736177754; cv=none; b=UFioiT/LGaAqT7vhCBKdHRo4zgrF8vyuzadAvvUlEKgGvlQR15O+mG0sWYFNAXgApoki9Em7WZGlxcFQXqiKfxDqG3Hgn82zUQaxUhcc34D6xfCwfL2zIzRJAbLXED141yUtGadh/g6ysbqCuWerkaeRSzcQml6JfMk5rqD+ICM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736177754; c=relaxed/simple;
	bh=WJ0KxZcF0ryrDzyhLcx5vzETK+mDyTV7pF2Sb0Hc3Xg=;
	h=To:Subject:From:Message-Id:Date; b=lKrRAwG4pFpN4ayrMEpXMZciWEpWHZFsxnHjHFVYFoR+IUX+Ubh4HFcJiG7zKwZX0IdBBSes8E1Ss79zokWLcHP7+DgpS38ByZDQ6HBj/wUiQ7BfUo8/3NP/1qf/Zx+Eo8mt1ebfX8sil0w7W2S6U831EVJVH4g/WrcCr8po+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXEv/ISR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXEv/ISR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A2EC4CEDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736177753;
	bh=WJ0KxZcF0ryrDzyhLcx5vzETK+mDyTV7pF2Sb0Hc3Xg=;
	h=To:Subject:From:Date:From;
	b=ZXEv/ISRatsjoIe1fHTIyir7wJg2uINFro0g6j1yQR6CYDAthHIKJE4nvLf99d0T5
	 mb7h+8RQnagzN4w3Xvo3YAawALRD7GpLn8z1wKPeAufo/RqDsFA7XVQKzxhjRD+gVH
	 yBOqi1CtlhFvbfEels+g4+T2jmoayC8+ftD3pyBpnlmeTQ/KyZR93qcEwaKhuHqsHF
	 lpF7Mw/rSFnsbRi5Rd3HwJ5v/FBMT0mDEzpPMlzzQVcJmWFkSltU//LPQrLkqD//4t
	 GvbBsi3ybKYxFqb+UyCCKADl3vXPwE5dKbxFmY6lmEj+THybwMIJ4MrJGZgjrW9az+
	 bDSZFpUfoj9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91502E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617775358.23737.3033242759589069496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f4c124b4e38aee6f79144293c9bc07551b4779962bea0c1b436b785795fea8
Date: Mon, 06 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736177753
