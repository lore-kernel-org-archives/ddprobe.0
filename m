Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B2D20330
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743881994; cv=none; b=tgNp7uVFh7lb6FxUpKC+txN8a8BVzMwP3c0AjANFOAIaa7oOX9LpDdrUh1K9dHvWBqrJv2uSiqprCiDCtApHLYaH4LFkDrKzyzjsRDP6Z0h6RMp4Z6ezxrOLg8RTrZ0zOh1LflUkQ7OwvihZttwGZkrrSgI1FsZIy5TfDirJ3gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743881994; c=relaxed/simple;
	bh=S5i6VPAi7deJh7LVeNJ5HctwKfSENSAyIEyhNJT+4n0=;
	h=To:Subject:From:Message-Id:Date; b=nDZgV1VaA/In60eHz0aQngC2gU8O1dwwxUwHD7rO+Vc9rSSKrPOPmF8Fqqy2nocO/Wk/Zr0WRb4HTqMK6eqMAPK+D0xiBtPHDw48gmS+A85ShA46j3pyfLPMy7D8KfyT6F7QlVAT2dOwX5JBiSeXxB75PaTPmfmD/SsASlLvnb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK7p1NpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK7p1NpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4785C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743881993;
	bh=S5i6VPAi7deJh7LVeNJ5HctwKfSENSAyIEyhNJT+4n0=;
	h=To:Subject:From:Date:From;
	b=GK7p1NpGVMkOIDvo9d+R8qx8QuAEQxDQSu9mUkX4ym1v3GJ6NKqG/XI0/Ze1kG44O
	 Zgbfxp7mChDgjPuxiqJJl+SI4se9lU8HZmn1YvSoAZzz84PeL+OUF3kVxjZq5rot9+
	 0187RBZh6BFPLHg1mCQc8IYgkltePTp40ru8qE0pc7pMOrh3KgHggEXKuLLA1C3JCH
	 31mho8bvVlagPxBKY6BMzCYiLY162MCFA7aETQgzbyJBO9JLMOZP8MKkmZ3/pDKLUF
	 ArCknZAevvpf1f4tv9IvqgTMjsxxGNiUcFfmJFZdel/VOTxEhfU9pZPGLnmUYH8bW6
	 8pfKdkb2rICTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1123C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388199360.1511.11204824645733512907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7876cdb14c5365203ee01b34d1bb9f2c4d33f992e7bddc18c8a6d15f510b357
Date: Sat, 05 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743881993
