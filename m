Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B68E26FD86
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762725594; cv=none; b=YSNhTG4K/n05DVuM1J1p6++xD69YNjcNv6+fk52wMs1ClW8Ro0IyxG+h8VevmtvnG3KkKysFl2oSbpn1Vv3SxEEU2IU0KkfeFypOlOcxK0GOASO/EqOx/x1j+tAYHXin76+yhe43CAf4f2xa/dqh2SNTbKFoZzc9Nzsq2DkYY+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762725594; c=relaxed/simple;
	bh=un2bcRNZXQsEiv2wLEjNoJGma06438ZhoEzM/wr3/lk=;
	h=To:Subject:From:Message-Id:Date; b=NoLpf/K3H9uZNIouXK5io7MYKqXcLPJpUwhWmwjtmsSBGcDDncUOhPPJraU2c+FqTPotZ9M9/MogypC88LlPqkuipPV5OEGyaeVKKxYQCuj6OcUjGXaTE7Bhssgqd/0od8sn9Jrs0Qb/j4MP227GxwsvAxA2VuuNDXVu1w2bL0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA60IGy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA60IGy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE8EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762725593;
	bh=un2bcRNZXQsEiv2wLEjNoJGma06438ZhoEzM/wr3/lk=;
	h=To:Subject:From:Date:From;
	b=kA60IGy0fuvoJesMBBWSJdGXWvWZEz3W2ugnRIV3CK1olhzBDaO1LJKAGl0TlS0ny
	 PXjGT6gQD7xe4LiORRm1+/mV+WXLOym5P4m3jKx7zJnmq1IjNz9UsCGXXR42IhtHly
	 750GKnKNDBDRte7bJgXyrc10fjRLy5Fb7vkpQ/r56JDjYP6eMu5kY89Q+bHaTywg64
	 vgsVdyhmEaNMWi776J1lkufdB43gYrP8fVMkOekjLdyRIEl1Tv6iscvcLSfk4qFkhR
	 qR/BznXnmtsSC667cb0PWF4RcDJt+iFcvviPHr5+8cUAVoNFEkg2BHL02WXpPv/mTC
	 hcnhyIuoY5hCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A53CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272559357.9016.12749941668437741104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e61628957154b5760d48206f98f7c6d00e1723cb0a4858e25b5725cc9a5bb1
Date: Sun, 09 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762725593
