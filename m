Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3E5397E96
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785685234; cv=none; b=HSVtzEuuZqS+D8Y+bhAgsot1sjkfu/wvybw73TVsxR72bQFfQuasj6kS/aS6Xyrq+O532zuHgKf9i10IWu1xj2Ee/vlIu9NwgT/pi/3VU2XK4YUbV8kzpTxz+SR/wzUNzgoLt2pfSCM4ekAKA3nnhbYRkpDKc/oHS218c6TE72k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785685234; c=relaxed/simple;
	bh=DamEKygH6WJXJ5EwfMIbDzTYVALaOQtqfySa3LhIa/A=;
	h=To:Subject:From:Message-Id:Date; b=MaQXSesG2ME1+Fr1TuYepVs9/989Lw7COl+lCGmOO7Uk8IcqEQ3qvZHPJLAuk04T9131OX0Yp+D3+kU9xunGNApiBBSyxfx7aFubdZQnTVAlCx1mgACyhM7ZWNslARnn0UA7zWBq3s6Ap8Olpycqi+ZUcLR4OwrgZ4An/RESOGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzWLblzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzWLblzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EA7C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785685233;
	bh=DamEKygH6WJXJ5EwfMIbDzTYVALaOQtqfySa3LhIa/A=;
	h=To:Subject:From:Date:From;
	b=tzWLblzUomHdelDzTbt7FGytABD2og7+N5iZuXHzCdc/Z1rIeT5jshJG/b5EjG6VE
	 8NnXXm0CBzMednnZ5BRjagpWvArWv8G77kmynsbChUbklwmZru1Ju/IAaQc4HIAY70
	 bVAlsKOdLoeMCrMczYdPojmvQ+t6NSELxjyvDYk7Ow7TE1CKxaahVHgbKIkzW8npYW
	 UHLD/a5V4Y9yE72YGlEO7P/3Tif8ELne3czNBKZH0kqCM2lAcHjKlpkvJmAlZs5QY7
	 jP6BNXLYV8gd/6VmmeRjTH06pQZ4D+alU5f47lRYNtHACHJnHXoP9R3DqwSifWvfVq
	 FtyegxrjD0mng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7505C55175
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568523367.21581.5145420437569754125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec22668f87c627cfb85aa53d975a5edc059e2d5b23b9af868246379e38490b5
Date: Sun, 02 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785685233
