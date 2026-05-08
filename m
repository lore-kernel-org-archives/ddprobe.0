Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2306C15E8B
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778206654; cv=none; b=mCHtGABv8psZLMG0XRfakHNpPI5/hAcT4KzwV5AxyLJkyYdznFG8O5j7XyOkgWtNVs3/1qzoEbXMz4XLp3tnqEq+1YKzzvJiz45AuP8nOEUVkygGjp4vj84lHInGTkn4en6AXiLAOybE46KhyQm7CQo1xRGP6XNKqw/6b31Uj50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778206654; c=relaxed/simple;
	bh=VOeIfVdEfHhulstZ1Bq3v0fUPzyuoPH/fZtFqnixoxc=;
	h=To:Subject:From:Message-Id:Date; b=kB2uzcSpPS/K+H3Wp51JOVaVyY2xQ6aRtOBDvA6KD9TPGKPHAriTOjW5q9rCp2FeRojv3sQ/Fc0uRgOsbC8bZjkB+tbJ1gx+gcnOS/nvrkenigwdrFXBCqSrTgdbuabpOaq9Jxq1VjBDxpetNBQD5anmsb7iLhiJoWmc8aWdfHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uimrzTBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uimrzTBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF55FC2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778206653;
	bh=VOeIfVdEfHhulstZ1Bq3v0fUPzyuoPH/fZtFqnixoxc=;
	h=To:Subject:From:Date:From;
	b=uimrzTBmtITJ19AlWEB0PZ2oqhJxq+iqKKqLPGNmJF9tdeEfB99xIeQ/yCCIYCG+b
	 sVqX+IN1t7lvrHh7C77j0kr2knljy6z2VQtTHzNUKXRNOtX56DR7B3r64RTuXXiOxi
	 hVjS3jYGahbNiJJi+aDUEA4KtkB9I0xhSM9TWYIWpmhN1aS83iaFoZW8LgePT7SQiB
	 5SW9GJs3EtQvCLXiPbLAeS0oKene5A3JZ9kgEtLPKDty8PKxlNQOrWus0s+E6AGDJY
	 d5h8lds8YopeW8YJbY/rdtS4jbiOGryuTQzidd0TGShEF/F2AYHAGuixmUWRMULLmz
	 a5HEkFNqh9otA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1371CD3427
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820665368.9998.6838265413469659852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766111c3cf8c35f8b3e5f576f488eb43ed484a0a7d97bd183d4505213765b11a
Date: Fri, 08 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778206653
