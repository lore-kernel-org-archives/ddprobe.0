Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B763655F4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781597794; cv=none; b=V6OaGvudiolr4ie1oQIG7O7/drvxCavdVTw02T9gE6wcDsgeYlm8my/TkbFxrK2knrcil0WIVAOmWqjAK3FKc2NxVnwQu56mlT0oa9RzfWckJlqvjcxAaHB1jJNxPvVUuZk1p65RScc+AcFmgdfySD3fEW2fwrB87lXQAkvfMkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781597794; c=relaxed/simple;
	bh=rZ8xYID2mUGhJy6LrI+9ro9ROATS6VB9ElKDTGtHpjY=;
	h=To:Subject:From:Message-Id:Date; b=qIjdyLSBkwW0S8GSAsSfifHj4IEXhfnC2V3iEPMdi2kMw+klU7yiiQqB8YpRuXuP7B9TcsPlFkRCvnKYA+O7+ZYu4E0oCifGlu4Ax/Eldf/+m4H5MxMp97djJeWSpszQ/qB3IXlqwq9QIWCaWy3ZspoE3rn1maVsBoIH15tCD5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prNCfPHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prNCfPHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FE7C4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781597793;
	bh=rZ8xYID2mUGhJy6LrI+9ro9ROATS6VB9ElKDTGtHpjY=;
	h=To:Subject:From:Date:From;
	b=prNCfPHUh7mzwEm2ixJNfJ7EJal07lIe2vRLXh7kQwYUBD8lisr6+nXbNgE3Ovyod
	 gpMBHT9q3KQ/pWOA66ts4box/ilLWT0PIIQezjaHRVImHV6botslttVaoe7U2SnpAr
	 n2LWPdrMU8iDYlWTbrz/vIEk/50y40jeimmpbs2piR41HkbaK8i0X1DcvTQqULAZ59
	 ETIBBrjshLp9gOYYy1hWbb8asb8Z+yXi/p2teGRYGi0yW/mWvhJstyZ+HIdJNqe3iq
	 3vOhbyg3DB4++4WoukgYwxyAfdKbtfNwUMaBG66a/rIANgh4qCLLiBwAoyPv7lkWzs
	 /ytZWmHFDsBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E41CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159779373.22815.301684674328361855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3084b91cbae81d26c21e82d00d11a8b89e3b001ad4d4c4d75ab737cd8e45b277
Date: Tue, 16 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781597793
