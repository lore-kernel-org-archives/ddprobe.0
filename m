Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82479136A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721106923; cv=none; b=XkUfHSCgLpNHZiKBpPO+Lfw8EjnI+EAuzvk5reFI9SEsUWmBccSqXBMLC7jVZnT1QAWC2ndGTyJc9VoPcXLW5ZG5i5lEcZcwh51dJNMmRVuYVYxFTUhJRHvLtdZSL/puLc2bpvpi3aD7/6RwMGfF1w3bNW49mFbeHSS7+P3d5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721106923; c=relaxed/simple;
	bh=wPU8AMNcikbCI7MKtbZRKvgMnqQLdfAnMqUEtw9RNNQ=;
	h=To:Subject:From:Message-Id:Date; b=l48oQ0XqGWxQDzmgGvga7fXqTFyVgJDL9kbFKGSuHDVjcEPBU8aeBY3b8vjprDNzeom6M1G+oJHlogZzj4c57rGKP7Nn8KAdZy/loHWk0tXnUwCcUG2v3mqat0E5Uj4rQnNcGgWn5SMxFq7+tfcC/qvKLaONpMuPTaiAk/1RbS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJT4sVeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJT4sVeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09FDDC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721106923;
	bh=wPU8AMNcikbCI7MKtbZRKvgMnqQLdfAnMqUEtw9RNNQ=;
	h=To:Subject:From:Date:From;
	b=PJT4sVeNy4eA8PmnkzXQZvOKUxM7TyipsddTKvGkxUUfjz4/i6YAzEhrpj1vO46gZ
	 WVRUwlo6JOc+Br1HD2EiSdPT4ihtd/JtT0ogJVT8UMI4+w2ZPivL+o6Z8Srhr6dfUK
	 WChCqJ9vuHKZ4HD7k01woI2pIx25PcxdSH4awX8KML/YlsTXlPS2/xWCU5FVOFwdxr
	 Pb/QREIh8xfKrR3+5FDvo8fwTiE2lc3iDACbS9vhPMDMcH0pR32ZHtC6RYnw7wBmmW
	 kD7TFuBIcQBZZ2V867iiJKfQh7w9y7N5b0JdWwRgna3DQvaEQ03yu63JSTWF8RZd4o
	 mECPQBosI+uSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4A59C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110692290.4578.12837926553418462101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88e1dde69b3488a97293dd650fc6e14992c4838f9c0706f6bf2e31c36cd44d8
Date: Tue, 16 Jul 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721106922
