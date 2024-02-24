Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0240040BFE
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708795097; cv=none; b=Rgf5//m7KasQ15iynD1ftcHI4R4/RZPHxitGnpG0anUc3oHK84eI/bSNrIP7WZ1h9rKA4e5dtRNA1GuJvF1ZV0kEn6dVzEG6oIYnnLN3EcDtXpTnzWyk81VI+AmBj1lLmI2MvjeHHxvwq+Ckg0Q94s3XqTeeH8owtFl0Xq4xWB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708795097; c=relaxed/simple;
	bh=p0vXeDxK0SiFliSyL+lcVLgX5EBpS6hdFkDmV6is1o0=;
	h=To:Subject:From:Message-Id:Date; b=A5wC6YJG+ZPF2cou9/qtx0GpkRp83ysFmYY0li5XLVUHMQ/1kwg/Yh4dNPbA5LE8z7Ckg0xG8CaJCFKUQOXTMkgMELII9yts74IqMhuIbWZreR3+pLMCOoqpACs9MwGIN9XK/L8aipP3a0kI8G6VBTr3Fcs+4FSfSYggJJBHnus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahty/EpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahty/EpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FFBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708795096;
	bh=p0vXeDxK0SiFliSyL+lcVLgX5EBpS6hdFkDmV6is1o0=;
	h=To:Subject:From:Date:From;
	b=Ahty/EpAaXgpf6beusThfuc0sOiYFvIhVRgRCIcm+/28Zuh9R+A0VK6YeNtDpZlbO
	 yx8WMgc2k1nCbNkUWWJ6iiF9D//cmA5gozltSo4tuyHvVKRGe8oUhhNQb3tx/IzSZR
	 r3jZoKyNk0WBdyQnUg0zY2rmY1tw4ittBLPBsFc6rO5YNGjE8Gl4SjmLzf4QG1o6C3
	 vd2SpXKcq4dwnYo/uau3O6MhurNT+Oy+VeViJhGgjA26rkC1m4anXcmvdFwECeIWr6
	 VEsGeh+q7jATfxsJMY7ul7ZKAD2eKTJyy+fRO10KooW64+yF8MI2Giz+3lDhtimIPn
	 vq/BQUSYMHIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EBAC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170879509639.6700.4670517871278863925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a671f6bca196ea2d6dc21407efa7b56b6fc3f2082fe450f2fe0ab7066fa9ec
Date: Sat, 24 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708795096
