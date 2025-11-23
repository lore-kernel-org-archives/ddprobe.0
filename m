Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145CD2F29
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763927514; cv=none; b=miKt9iGD5xbTLPUaTn9dSQbci93yra6I0NW85fvrgnJ7lCFczlxxB0Ahq1DUJIJN4NPsTsyv0IPrrHE8U1ZqKhZpMpgiaORMW6obrVlFajVi31ug7rX8qHZ9oXzG4ZQpob5frgXfPxOYAvZxMurkmyP5qPN0slDRw6VBR4QJZ70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763927514; c=relaxed/simple;
	bh=uL9kdI/TrTno87PRoTG+PWCU8XhXfmuf9V4magSUMq4=;
	h=To:Subject:From:Message-Id:Date; b=YW6ScwNN/5UTE79fvBDaNQF0Fhul8WeW5EOztvrB2yci4+E7eGssaheY87SF3k3bGFfEvWvdgKySfhlxKjkKL0WI4ljV/yEFDhbD8+i2qf+sxhI2GWEXPZx73QmZdNrFHB3PzJ/sKfvpG0qKVsnUi1vk0HhOD6i+qRzyr1urwus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuF6LvPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuF6LvPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFCC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763927513;
	bh=uL9kdI/TrTno87PRoTG+PWCU8XhXfmuf9V4magSUMq4=;
	h=To:Subject:From:Date:From;
	b=YuF6LvPDAxqQmpdznC5aiTgMJUkzRiq6+da9s/ftozpJrrCxh98ye3oCaPE8gy01h
	 8FRYQRjFOHIRM3FUQ8MvKGSJJTN8ln7gr26pIs9iBQkN70Zd7kG2wXFr6xKKkwEd6s
	 X1DPPMT03sk4Zj2yeVgeAIgfra/ygfkyyvvy7VfOBJIWG3BxBPV10JtXORJXS2tKVO
	 OLrvrhUyJipwKBQQwqjGVrXoXvRep7Q3gkypH5VRRUNtBzBlIDlQsYzwIFHhNV2ayo
	 y3WopzvRB+qhzwvOv/U5xZot8THA8JGzwsWiisDTZvHt07OK676M9ZTHSHiI0fRQHi
	 sOwp6AqxUGs0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF1CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392751358.1033.4634340290985464317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6898c91a0e6cbdfa8384d87754d34e55065d3d38276591be1de0cfe62cc990
Date: Sun, 23 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763927513
