Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4869219D06E
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738327554; cv=none; b=sYZ7Ws2eV584Y1s8CyzBN9P5cfZ9V4A0XlMK0ehrjjgDk2d6+fdugWcRxV31YXf4E09/MZ6LS3G43W7WDKJdAZp7m/LU0jWXkiWCnFQj1Ukt3nUw3+rQKf23453TZvkucyCzDL5S56MVb28u/UvAdVLssOB7KLpnaQwPPaOFxXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738327554; c=relaxed/simple;
	bh=yZce/WzqRzqtEAYPyGou2cYoVHcxfW1+0ydD82QS3P0=;
	h=To:Subject:From:Message-Id:Date; b=ndVW0wlQR9UroQ6TYcV9fNwouq+MaEarZiCLUrkFC36ZpzuFTnm7T+lJqxoCj86xYpGwnizAl5/Mfn4U5LgHQm3NmCUTRUieTm2PgxQfPUAEMriKUxsK9qzih9VU/mhjd8F3vlBn7WgvSpMDbTSBG7pblgtOnfjEMD06eg0jZfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldIWzvUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldIWzvUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC91C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738327553;
	bh=yZce/WzqRzqtEAYPyGou2cYoVHcxfW1+0ydD82QS3P0=;
	h=To:Subject:From:Date:From;
	b=ldIWzvUy4YAO6m6V2W6jOPgvhgUoJXCzBWQtE+z2X0DqjjhYOVmIvGzkddY6wXyxT
	 8J+JKHmSQIRzXqa3gXgqpg8afmG/PAS6/JhdOOKqj29ghJijLr3O82CpJ7rzlsViu9
	 Hew8e81nxb8KIuZjt5qEgtTcJshd7ruZANhzNIdObWYLLijrwEfwUKIdNgA2f2QJ9h
	 vQTWey1u/AUKkFh2XZT+pv50rfctkVyGuRLjZJJMfd1DKhLc/gV0XYSSOTIw8TJlH3
	 cFt7ZysuTdaiTWCdNg+rS0Nqg9dTZ4gGZ9+zV7QuZr9yuWl7p6He00lPvTh/CHEYIM
	 CNk5JNO/SaifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997AAC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832755361.6474.12639561466946020381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6a6c7f610df1687ff8fbd144fb41570eb0fb4f464b14915e8db8bda97fce2c
Date: Fri, 31 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738327553
