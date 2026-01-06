Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB9C21FF47
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767665034; cv=none; b=ZmwRjoPtTh/uohutyEtAm7B/zv3+xeZYdmQQG8Bqn1awq7zUGAQZf6ihFO6Ft5kE8l59EFeFae+cCzWUppMNpqsdatUw1K1m7VDyErgR6lancOz3X4mXWPM93aDS9pA095Fs09JI9L8UbHnJAYfKyFelU7AyZfDI5OwTBaPYVco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767665034; c=relaxed/simple;
	bh=WBrUeQ1kyFrFc8WjFj5wbnbhb9FgsCIRk1LtSVoDwPA=;
	h=To:Subject:From:Message-Id:Date; b=GRfu2/VrnPrB55debdEE0Dw0afbnePN7AADuMtrnmoVY9FvRPNB+FhO+aqKvbzjnE605OnkayvHV2sKp9cbNiuHR5Qwt2hBz4J5fSB3Ls/vQ1tQCOvToayWR+MUU6jwpmcqdNQxTI4GAnzYlbDUWK/ONbmYQIBrgTyO2lq+nIAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igHDe9La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igHDe9La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1674C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767665033;
	bh=WBrUeQ1kyFrFc8WjFj5wbnbhb9FgsCIRk1LtSVoDwPA=;
	h=To:Subject:From:Date:From;
	b=igHDe9La1ffgxhHMmEZONKJavzC8X/LymFt3O+UlRINZSH970XfmlAbFT+KtCnKom
	 bC8qmIyp+rlh4Sp+Zb3IEOShZEGHr56XU2wVlQ02ULkgxZwGdc15bDY/zn1H5hMO8P
	 mpmXMfmoKhDzSD9c76zYdvmG3uyA7UxkU89448ofCXov4Nyg6kuPVaKDsHxwL0vf/3
	 7vhWl6OeN78ZIijfc3x8Mc9RCPw+v7GkskFtQYMjWHHAcRLBd7VIqCneNY+rZcropj
	 0lOqSTqtofN0MgIcPkguEPTo32uvbj6JDghhEPBZcddr+SH/aAvF6vXA4xAJA/YLIf
	 RDMu8VZW2eBdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529ECD042A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766503357.11919.7418039749733260212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720b014dfa74455d6aa29628031ff56cd967dc5e7bebe154f7f1eaffad37b0a2
Date: Tue, 06 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767665033
