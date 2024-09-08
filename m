Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321DD175D4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725827754; cv=none; b=NybL214IGzRVyOBWnhm9Rwvg6cQlLp1eVXh9ILV4GtLXw8V6Pp6fGThjtO3fOoAy7tufDEXr7q//gtl0kC73I7rO7A9+j05F5qcF6V3Nt0aMv8AWnM3e8X3UC0oTg6A6QfC+zZtwhvUuvFUlorQL5cvQ7hCPhuSna3/gR0GBJ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725827754; c=relaxed/simple;
	bh=7z0sRkXoYovN+hoIJuFZIP0L6CMsJgunJafaozSxMvI=;
	h=To:Subject:From:Message-Id:Date; b=Ye9tr/oUZs+s4kuVno5VSy+uIpQLKWDupYZyh4MwuT89owO8fZ9ew3ocI8uKN/dKlDd/7/t+l+SGdW4F9cBkn8qFTt35Nm77vtf7R7O/frP8VyX/q+dS3x6sGcTjwileRBhAz8u1Hwxm5DT+rw4xpyqlFRz7+Ufzd73VZk2y8+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr8e/6t8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr8e/6t8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB42BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725827753;
	bh=7z0sRkXoYovN+hoIJuFZIP0L6CMsJgunJafaozSxMvI=;
	h=To:Subject:From:Date:From;
	b=Cr8e/6t8763LV1Lj1WgblQnZkcU6cf8si4//e6sHcZVgvAlZDCSJSEuqnpG5obkgo
	 7RAFYD9h/M0cxWKBwwKrXaZ4T6xMjfLCv/IHCR8aS83mOPUOaxegTSlekl8G8Oyxb+
	 0ChWuJtdN6Rh0fitrKFzBBecBNBtFclY9swgp0Un6EJULlBpyKBIuf6Koo03ZpGkxa
	 hMpCMpZZustypeieRud2gxmRJEF4k2ZlIWuJ7IMKFvjlGj5h239Bc0zzdU25EeYxaR
	 rr2sf6FBXiFRLgY/dVO7pPc1FieH3eSXtrrlv4P0Tv9I+/CK+WF6SKPFB8l0bqJm7w
	 96niu26dhqjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A06E6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172582775359.10372.13816402569072749872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74047b37c9dcf9d7f33eb02706381943ae2b80a36ecdd0f257b2e60a347b1ccf
Date: Sun, 08 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725827753
