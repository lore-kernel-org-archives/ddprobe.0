Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06EF1FF1B5
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748329193; cv=none; b=ToszTRWyufOyE9vfuNF1OvZsuXdBaQ5bbSsgaX/G8UjKpyEsevrBwEyEFKh2bCP4bi410pgGRWwkE+NJ/DrM+gUQCCWDMunFm1FzqS10SOv9DOVyidcKXfbaa3CMc3o+6vMWZlMAl2AIKxuywS4Q5zri6/Dnu2nAjKBM2qz8lhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748329193; c=relaxed/simple;
	bh=U9m8LWfnQZmUsz5aJwyi0NljZ7Gl2gzda1M9D4Jcvbs=;
	h=To:Subject:From:Message-Id:Date; b=OD9UIE0qwhJDyfdL/7MfFcIZsV1s+pXTrfGdynDgiocv4L6m9L1JOq+SxTw3YX+S4+BBj4HRgvRn9FASMI2vFjkGbxkrDc5rzxp8eap/1PubFOx662MKaBq1fCf7KoLTLHiEGfXaSnUGBOpiSk7uQR0Jw6LlAWHktaYfROSDbjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLbQwobz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLbQwobz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F2C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748329193;
	bh=U9m8LWfnQZmUsz5aJwyi0NljZ7Gl2gzda1M9D4Jcvbs=;
	h=To:Subject:From:Date:From;
	b=rLbQwobzBR30r3wxJj5Cqx4QZ/z7i/3R90+Z2kq1trwWqhcNs1AdZGLhKv3agf/OB
	 0dP/D8hgQTJ2JLmIUh3gPKdQmJ7N7hUhvh53l/nDMpxIaT2215rKSpAH9FSc4DlR4k
	 arI+hlzVfaRaubrs/azoiMmo0xOcyzTlp9VPKMmupYMdEafBaHZYmuFWwISY+ge2ZK
	 asS3FXf60QSHypA00Iabv+tUtvWbceO/ghQpxaYeREaPesXsqPtl1eTZE830MR5NqP
	 KZAczTtqGsCi5i/O0u24fdheVp55eZKdFdztLSgEAPggacHXsACGh4Zcgoi0Qx8nVs
	 DfjsobH5XvV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA76C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832919357.1469.7072797048933744543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d76cfc341b26a28475aa68e58e8003ae3da085b4636eb28bc06af872295bc2f
Date: Tue, 27 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748329193
