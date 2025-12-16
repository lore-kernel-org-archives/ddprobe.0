Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6802E413
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765875834; cv=none; b=ehDVopLWIoyda+QJ3h7YNyoKr/lxnrFur8A39YVl+WPzZfnHP3+JWpKoRmApVK+XElyMiZoSxUIhBSqHOttoA1MT3wY++Iki8eegg3iU4GQtGOBBO+19tnbZGZL3YZJ3QkIXHF5jpJGHBsVqbrawSVpI9Wp4yOckXZUduD5i/Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765875834; c=relaxed/simple;
	bh=6fnUPHKgPUSod7BWDpx5qzWM+dBXm/SzCBK4qW7yK3Q=;
	h=To:Subject:From:Message-Id:Date; b=JFYctQfBTsCXvsKiB7UsI5WmVAU3Wnk70kz+bJM6s9ITRxA8mOKXHitUfAgDrBXfqG/QiRYd57sxB1XQp3LoGc1hXN6DyCdOSuHtrFyxahbrjura8XHNNbCrMjA70RGiY3lR/GoClLBQdZXJtFYOCys3c/1ZIbNZNl97pG96FrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOHjsvLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOHjsvLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A391EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765875833;
	bh=6fnUPHKgPUSod7BWDpx5qzWM+dBXm/SzCBK4qW7yK3Q=;
	h=To:Subject:From:Date:From;
	b=lOHjsvLyL5Rn7c+7YLyLkNt3ZRc6/fJfZVigk0FoatqRYZjgIoeN7NTy7iznjbo6O
	 S7Q/8Sm8v7lt/ICf6U7UFEjbS6PuHS6vMAVN+IC5nQivVnU+d7DBK3JdqBL3SbF3kY
	 bQydVaUQjSSYEe/h5P/6Fcj7hylPWhpFRP4aeIYdMgQR4uULN4tLVvwMafVLfmMzrT
	 8NIlkXXZKjDoRXpFG4vS4EIpkEX2bIxi9e3VdDE1GVrgdC9GlTo5cOtSDAtsfWZwZi
	 8aMdVRz8CzjTUT8Jf3UmclFFmcghAnAmOvkV8Zbb2oyIEAeHKB/RmiIyFNrfMh6CN/
	 qyV6pQbPheZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918AFD5C0F4
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587583358.15543.8448084519946814962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a69b7dcb62bf799a7bbe46b23b2b88d496ca0b9330bd6c2b235c28dc10cc807
Date: Tue, 16 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765875833
