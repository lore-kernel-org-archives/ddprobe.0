Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD96EEDE
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747606794; cv=none; b=glZv4+UlYlxkrcy++K+qi+fWdc16PCPZAPlOIcyNwrY7rtMFRKgH38wr1BAvHRj8093QtFWjjEiEHwBK8AEsynGjFPGu5F9NFo6qX/EHizgb4rgThz5XFHtBjSTxf7+V9hEZe4L5dymjlpN0br9jSd/mekJJvlN6lZjkkmBTJTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747606794; c=relaxed/simple;
	bh=YB5AVUzZjzrf7MDmdfOa/4muxTy7Bb9Qbirld5zPmng=;
	h=To:Subject:From:Message-Id:Date; b=AO1vYELlFy5v/o37Xv9xxOPiADuud0wd8HD/EEBPvbnF+y0FVrau3eydcLiT247BYwviQvDYrr20KMuaG/5PXgIWfeTA81vRv9MZV9pdw0c/QeepFsihkkme3s20/38LYcJBaenczwHCVzeiTL+kXjZ/35lhRrn7OvJSGIs9vTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYxsQ/pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYxsQ/pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C20C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747606793;
	bh=YB5AVUzZjzrf7MDmdfOa/4muxTy7Bb9Qbirld5zPmng=;
	h=To:Subject:From:Date:From;
	b=mYxsQ/pKMGNX9Vg1hZuYB2o9w45yUGSyCgkQRd/eGUmmaNAj0Udkmsu9FY6BT2TI3
	 LeGqwpsH29zuzWTbVHdx6cXKFbbiFlbT5V4Nw4q/HJ4Jkubx5ig/ZDVxHsJseEsnUV
	 FbyAywS/BORxLKtwgf5WQELAA+WEWPSuoySOWYb8urhnuD/39EHAANHvCmc0Y6+LpF
	 8/EEX+H+8mak4RhNQ9h0Hb7A8QDEbVgX5WqmFiyBhKS/QSEKhdBKcW/DnBdOkosX0A
	 nShem66DLIIaG6G9n1JkzvdwkW5MxX1bleBdQwRk5wzgMunk3OCz/qbKN5AfWPsOyE
	 xhoKdQf9HL0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F193C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760679357.28680.15156343428796988904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2c1df2266b104a8b11a318ad835610ae68ac56af4c11a7edd60a174dc6df4b
Date: Sun, 18 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747606793
