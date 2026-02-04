Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0A257824
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770174834; cv=none; b=YT5lLeXlxb/OX6Rfs57E8fDSg3ZjmWsjCFKrwY6seGQzRZ/peYTZ8EDyQzqhxBrFc1o8+Z1onNurnQf/5BgogrzV1YOuP1iW0uUdQjw0TaxIrQ7eS3sn0aNOOH5o8uR3WfJrPg8TpYqVUY46tvqcemqozz9UM9dMXE0IcOSd48k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770174834; c=relaxed/simple;
	bh=Jpva5i1ZiL/Wq7ycWVrRAHZnC57qjY8uptrAnaz6Y/U=;
	h=To:Subject:From:Message-Id:Date; b=HEZmDPUhLfYWjDrMDOdFq/kmIAymO8wAR5gFVYxbCy3Xwvu007YvLG5L4gLHasZeaXFuxL+3665vlzvcUtWxYZy+HiQWU/NAOsPydhtgZSJanvh8EeutljlN6TGsDC4i2DReAS+0O6A7FI3jO5Eg6iswCQsBOX02jt+4bUShIPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkKbjqDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkKbjqDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6DBC116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770174833;
	bh=Jpva5i1ZiL/Wq7ycWVrRAHZnC57qjY8uptrAnaz6Y/U=;
	h=To:Subject:From:Date:From;
	b=JkKbjqDAo8r1VJaaGscmaMe6JsGLbLZuFPmb5y94wSqyMZA3qrlFx+HOp6nDZY1jO
	 S+8jA8uoVf2rgNTi0J/MbqomyeUq3zbKa+eoglbNFIcNHFtNTStXJ3ElSgBWtzLR8t
	 cTLJtjyinGOEsOPG2oTPitQVYrJ7wPSSwn3iP82uE1Yfi5Osj2bOHD0kFCSEtpoaCt
	 jQE0wy5t+5IR73RiPjbrI6HDnHJuAjfyRV7/ag1izQ14NfWPj7VZAHZ28Owixq+DGc
	 TM+3X6USXP06nrLV4zr1gNViCbe1YzKAeqnFMDhzr+NzRE2CLndbKoGxYRiQ5N0jax
	 YMUAP7p6gwqlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFBE8B396
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017483361.13163.8748556662455986798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea55373c902470fc508491a94beaa87526acf956eb7de1071a1f42942e0d153
Date: Wed, 04 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770174833
