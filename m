Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE318E056
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733351754; cv=none; b=R91NDf5RoZ34V41hkHc5qF3FE5n06EU2rI44Exrs0vB+oKbREajUeeWZlrK3G5BBeI/dGO33eYveaJl6rFNANnPE7m5JVCL79iZBzgDhlcknlfb6ArDnmWHZ0g7goLSgrbXzFriiIf8ogF1fe68hzkMIsiXfjF5mA4ac/lEO0uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733351754; c=relaxed/simple;
	bh=IA/3QzTfzR1bAZRrvne+UPcJtUbaPlMsMVUQAHuS0aw=;
	h=To:Subject:From:Message-Id:Date; b=OyITYMsbcRysAd6D+vCHXj2UPPqVgKeL5KursgGOtPyaWj+fH5ua1hRMrWpDVWShLa5j+lbk0Hn2DDEsx47y+i9c91Qyd4dKxn9P4aYtF3tUJ1HU2ffhDWQVXP4nnkY6vqW3fx9ZJDOflwB/F7/656IrHQtkRs5i6qlRQSIiRVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDyUXFBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDyUXFBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF4DC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733351753;
	bh=IA/3QzTfzR1bAZRrvne+UPcJtUbaPlMsMVUQAHuS0aw=;
	h=To:Subject:From:Date:From;
	b=XDyUXFBjpbDhZXeMryD3k6WllfEGc5oz8fBVCPu8XXI71RbeoU2NVXvQ320WxYvPd
	 ps6r8kqIEBvMTJAbeGig9xXwbHa2wyjeTxCllGYsYkgdwpE8ZK1i2QzarcIlnqxSUt
	 3g6zEyfjzaM83p23Q1kpNxtMIds1rsA55h3IeCmEazh661Hprs3dvKJDQMw5EDZlNg
	 qEBrWfSbgdWMP0W8bZID4iU4FHXOAHalZEcBL3aX0gT6oy94ztU5pah9psu0xqqK2s
	 F+fHQg1yTnQDshlNr781oMw9dwFY1heW8UX8IlgLQDa53anGVQTotrRnb7FLiiM7+T
	 HyNnypKGg5a5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CDCE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335175360.27241.6477091249415432189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff26d16916f85ef2cd7e3989931c513d951d2232056ded6be3b89e4e83714d9
Date: Wed, 04 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733351753
