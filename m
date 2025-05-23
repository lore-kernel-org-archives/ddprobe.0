Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297A219F12D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748034594; cv=none; b=k1jr77Qst7jttLwPp3EGnEk8Hb8jPYzsagaSpuC0622Z3ZPNrraUiB74tXFxPoUhhYautwDk3HE1ViSQkYvN+TCDobqtOkFtU55ZyjPo0yKccQwt5JYQiWU9f95gWt1WzludDXoeEB4LqEHrU6bYRRkN9KSc5wg4tYMfMVXPuAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748034594; c=relaxed/simple;
	bh=Ez/5f7aWG0sjG8Ag4Q0Npkj5tne1MtfxaCQRAEMpoyM=;
	h=To:Subject:From:Message-Id:Date; b=poXr8Cv2X4abFRytPXG4SnpGyzFmfyaH7AHjxO3q5f27RF7oiHFJnJfr0lMVShfxZQICDgapyMnKXPPePUfMkzCJlmuAzVjTMO2tW8tSlzK4iKhHIxCInlExuW2L2Yj9iI2m1AIAxpqKrGsNGhCQku++eIO2mupoFKukytn7ibw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4D+dDA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4D+dDA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2697C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748034593;
	bh=Ez/5f7aWG0sjG8Ag4Q0Npkj5tne1MtfxaCQRAEMpoyM=;
	h=To:Subject:From:Date:From;
	b=K4D+dDA2xySC+diiYf5ydNM+LZhjbKDODIrLI2psiRCcU2PQcaV1scat1WPOb41bu
	 r5RqNOXxILEIm8ZY2zXR+HwP4Mcs5fuQ1foC7s/YZn7q3kag+a9U72X+hiyl3dwp7N
	 Mx6x2Z7+rRNkbZnQ4Kl3SeitTV0SFuVoBhonQ3pmI7PVUMuQ5u5zyaIusiBHbT2dFr
	 qHUF+hJWMQJmZhTk7amdqKob/V5ntwvicVVsSPDKGhZ9IJNHufJSVAXVgjNUhokSmy
	 5FFiLh84qmKoO1F513m7kp0UYQdnII4kHEwN+lRlnkNi597JXYHCFBxijocfTK38Iq
	 DisFAaYTyjf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90709C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803459358.10862.12351858414953912439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4fa7ba0a46155c19edd62f199bbae4ed5172801ed197b71f1b65b80111d978
Date: Fri, 23 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748034593
