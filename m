Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1220C2D8375
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765374774; cv=none; b=Sl9SOhsq9jG2g+INz25MdV/rh8NFIc9kTLBKIsuU2r6FyxeUuUIMt+90Lvn/gxE55B0bVBCOi6K+KsFeM7TVl+/srNQstXZCXs9iYpTWXJfIDYtmR/MZO8Gk5zq5WIJdPUcMB7GMIAVKxuUF5uSYJkFfbDEGLALCl+hUmZ4oqsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765374774; c=relaxed/simple;
	bh=Ac8prW0rK35w5TFuX2CmaSpYrJDST19oG7CubaV3WWk=;
	h=To:Subject:From:Message-Id:Date; b=HOG6FQ/uszm5xHmuFXgKyt5z32Im1TVSIwOj3uM/fHUcdl8CCmIz0yNcAczNtym+XCZCoyy046EpEqX49e9E0o1+Y3aT3FAAB57ZRkx1lokTDGacrOZsMYqy6NKfeMmZNyZS9FVyauwGEoGPwCREMM1P32oLGvEAOOtIPe7YHOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF36bcDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF36bcDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A565BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765374773;
	bh=Ac8prW0rK35w5TFuX2CmaSpYrJDST19oG7CubaV3WWk=;
	h=To:Subject:From:Date:From;
	b=kF36bcDe8c77qOmmNMi8zBPeMD1rC5FcMDhGg1oBqdqKhQnAHA5mhGc8QIW2gBEAl
	 T8KIPBY/KETVx6QVqIc7CbCUwpwkKbsoGGoav0yFx4PyaOWMrzUq9//Ru5RUTYw8L7
	 Tdt/e2xN0xH6b5QqYg0Qafx9/IxgjNgAve6PiCZtm30rhbhBBLN65kYdJdEwlTrYv/
	 r9EcRHo8wu/f3cPAicVysa+bv+3LQcquF/IJpktfSSfU3cG3J+wCOkkJmgiACqOK2y
	 O80c0ztyTq3eW6csAEj1Q1XZ9iwxzQBWrYHFWJ2vppTHR6oPC5SZljl/hKW3b/qJaV
	 XaSNWRmkSzHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C2D3C54A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537477359.25521.16947255670133848531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbdf9aeb31973f67c2984c61cbb50f0250ede46f6afd2adc50041ef7eb62867
Date: Wed, 10 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765374773
