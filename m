Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0BC280335
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768224834; cv=none; b=WHtDuNwYQDqvuagfFNEWSJi3qrb4r9eftxeRiQutdMfc63oFpGbGq48z6BsUDI2H9sGEi/whDxk+5FfOpdShgV7hoPt2V/uuvQi2KiPc6wbdmXR9+C0Y3Dm6pHHFMZdyfYNLdXcPBNUqzm1QIuuLDzH/sbaSCydIJLu3vX8b9/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768224834; c=relaxed/simple;
	bh=ym12KwZB3sg3XVB1tzu6iNwZazgwTThWRn++7rsBWhg=;
	h=To:Subject:From:Message-Id:Date; b=BmO8MGrALpSLVaC0BhJdfSUfQ3ZGQNwGpE2gxcvzQnx2Vls1d04DLsAjFN9E3kBu0FNriUxetQtkBTPSit4fRNq5jR0E5YH8kBwEV5hOxz9nQerwpjLOje4UextnrkcaGP/EDU1qXTJrBSum6trpgFbfDiYORyRk875V8wAZqDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eomZ2Ql+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eomZ2Ql+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6EC19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768224833;
	bh=ym12KwZB3sg3XVB1tzu6iNwZazgwTThWRn++7rsBWhg=;
	h=To:Subject:From:Date:From;
	b=eomZ2Ql+ZokvMvblbeFvzNJo5t1p8kPGcuhoZ8qtvaqXsrtC88FXsqkwKxk+/mZe7
	 d1zsPfLgDIs2H9krrgaYnZu8vlGJ7ippnmCaDOQjf2x25d5VTCRw8obsm9DFBtFkQj
	 WD2eKuti6VxVfanLG8K1AMRrVv+TpkV6C3UP+WxHVfUa7xA/BfWgTLWkZyPPTHAlzU
	 PmI594wHaJT5pZkgffdbLBAMAfgW53LtUOFb/CwoWIGHrdbYyzCFSbieDRaMA8ot/E
	 FZ8bcMIG4d18YDyqLLxm+zl8maaCH0Vl1T3wyPONJq/sgc0Nx5BFMMobuZriCbqdtO
	 KP4jQeglHB4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92446C9EC90
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822483359.24798.7349759931087411434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1a18ccbc8764dbe2b6f1e684c8306a3e3d4ef0aae58c5116e212ccafab60a2
Date: Mon, 12 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768224833
