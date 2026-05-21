Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112637CD33
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779357034; cv=none; b=brW/DMZksY7EJ1Rnd6MAgSo4oIbHrEtpy8IVLJ6IgdJ/hiPXA2+KtpUw7/ntCGskve17jrZHm2nUpkgdY/qGwWZo3aQWik4xMVsVp5ny2DqVFfsjop4OGpBqYigMEfArHWvkl9bS9JwfI/QFUo3UWgnZYWCtxAq+r/LCruZhan4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779357034; c=relaxed/simple;
	bh=YpNvBcov7HlB7cPgulK3SwSs+e3cjM6Ow2SUbaOCIRU=;
	h=To:Subject:From:Message-Id:Date; b=ik9oIbjgTa7jlU8IvxPy3JqSCsFM+yDT+pmHKFVUkDht7nqr2y6YAEambmJ2KmgBXkLt1gE+P5J6sKyO7AW4lBtTt8VxQJ8G2JT3GIdedPiNosplCMz+bBRgfP1XlXnj2/jA8trcrQ3B4ZaewNUMyWuKNGXowuq7JJFbfLcO6Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioC8VDv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioC8VDv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD78BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779357033;
	bh=YpNvBcov7HlB7cPgulK3SwSs+e3cjM6Ow2SUbaOCIRU=;
	h=To:Subject:From:Date:From;
	b=ioC8VDv/ydSJmkJ9QjCytxsISJJTlqLwS80jm1UcXmiQDPlo6Eys+CJckDLziH2Fu
	 k53b4CYHDSr5seuKQdC5DfxdBUXf06gx9u+kwJ1AjGQWfzg9x+jgnnkxBF6Fr9QTTf
	 aqHNC81eMpwf8Uq5C1C7zPr6UDs0wfa/++RGaVckhJuyL3kwW5udOlVa9wg7d0Bhj9
	 yIXGKFmbRGo2I5Ua6pKdYaJ77APj1aGmJUa3bAaaIT5R6oQS+RTpVrS3gSFEsIk7v3
	 vRYypMn8jRsu4TG2GBEaeoIRdG43bXB4bxnEG9+w5xGH1xor0XIpHMtvraHhP3MWOR
	 6Bz8afJuw9HmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0698CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935703371.15984.6689667233051296297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2712caf96de894d4f9badc6c2c69914d5ac6e616579a310266883f0c79e54145
Date: Thu, 21 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779357033
