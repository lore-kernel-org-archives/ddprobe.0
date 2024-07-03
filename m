Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB1117BA9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720039523; cv=none; b=Kw5xC7MVtGzx5FAlNlppg8GsnIiDXHk/l479vbYE2I37Gyciou5BZkv/ruC7OSFyA3BiQjY5wryFJz4fKa1hcaGdVCajkQWBIysqRKQ01GfSymRH2hSiwhgz83ZoGkdUSwgipi+IDenVqT8Ou0vP/WNCiUG1xZsbglUI+++vLcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720039523; c=relaxed/simple;
	bh=X81mQhynAKxEmW9nIVxR5XV8O4ot5oAjqq73o/LwUew=;
	h=To:Subject:From:Message-Id:Date; b=YLUu7/FTpICOLld1Sd27IJ8FvBLc3SQcLGOoHV3RHMtKXGK40wXH/HQDRRvWJ5Qd7RHlR+lY5nfX0IT368FG+KlCcwgpmi2OV4y99CDY4xVrkgtx/tPhdW4G4Y4EW9lns8AYFT9QYET9wAYIyQY0VmnaP733uR7rEXq8RwlvZyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZAMYKYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZAMYKYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E9FC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720039522;
	bh=X81mQhynAKxEmW9nIVxR5XV8O4ot5oAjqq73o/LwUew=;
	h=To:Subject:From:Date:From;
	b=TZAMYKYfNk2oX8mhwEJCGFF2HioWGQnt73igAO+RUv0UF3HbL4koRYrgYFyxeHsvQ
	 SkCwZ6fYXt9pr7KRTqfI1VMHAO9feKgaFApe4t4e3q0UhwUmzoRoxgIXEiaSJRtI7C
	 xHQAduQ7jd1gK8voXed27yGiJxlyi0QINDA1098wIkA9D7Vd+4xRorRaXIs5LrdrIg
	 s6D8VfuxXSrpmxkU1nyQFwM6J9W+BhpCw0oTolCI7XYsjAuuyyzRAAd+4bdojZ5HAW
	 lFqppvdYP3JGECvCJVhHylOGTQnMuyTRTe3lbKaN5sAOoQNunsn51DN9CpVAvtAO7y
	 0OAScWPK3sVoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DA3C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003952279.9801.4263921276890682210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011bd61fd1b25a230f85900e912f8e50d67a6bb5553f0571c646e13ffc4720e6
Date: Wed, 03 Jul 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720039522
