Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AA4296BDF
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758365994; cv=none; b=ulubYCWt3Fx+wufqLmFbnZufRi9yTRtmZG6FR8gPHJY+uKgbUSuCpRYN9ZOeFKqqEGLMfeoKDukxrzBPXS4+XMVlvVMiVCYqZpw3B+/71FonKxQfV+OLTkPNXJOJlym3RkHxrTJdB8JB3wacLFy5mu5ql+jdnm0Da1qCFK2rL/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758365994; c=relaxed/simple;
	bh=WLW0R3xoX+p7RO8PlusRh29ETgsQrxJwslDMy5dv4Ys=;
	h=To:Subject:From:Message-Id:Date; b=h/oTrNcQVrtBS8YTJBJL3lSo7J4b7jzhkXbyiFsSROr15hkrdZ48TcN8pccdiKeEx7qoJU6zTePXC7lF0tNG5KijDzgkAhM1e0jTekaQSm4Lh/jfgq+ZboZKAhIpxpSzdJ7xaX1zUo0uSIUTikRPBt7BW6GzeQRmqBiL2gqdE+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9xW2kkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9xW2kkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758365993;
	bh=WLW0R3xoX+p7RO8PlusRh29ETgsQrxJwslDMy5dv4Ys=;
	h=To:Subject:From:Date:From;
	b=D9xW2kkH3fylpE/Zkj0bmvtbBexvGuDNWxWDZxA7I/JV+3AUwf1dkUnOr0djowq98
	 ElqcLU26qf4ISmDvOQAzBRR4EovSaYG9WzAGhY+ImYITWxW0VJZHYd9kwyTliTldG3
	 KCRw3CMVgUprF+imyysySLAYfiNiJd0wTSPyXWjzkxqA7TgGCRcRFjDxm1hCL34aZ2
	 sNgSMXMnXZsKyBBv2wyUJsNxqWqa5VsWo7O4CcIenrNrAJUu/PsQNskzcfvZkruSte
	 Q46Nzv65RSVs/7EZ0l2O436eb+sJPe3u+LoAsTQPk4tIxBb/u1E2JYAkeMTJeM2UV2
	 MBdyGgqy3LG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93560CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836599358.2217.9145979991823203261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f30592a97b2d4ee0a98e8e5158107b45d6a3dbe2550895153607ab405e188e
Date: Sat, 20 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758365993
