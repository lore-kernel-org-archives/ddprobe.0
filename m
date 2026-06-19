Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3668A33AD82
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781895394; cv=none; b=gTqq8CZycNIYQvFHAqGvy0NNAJOAzSllCvIPBNd0iYG1/Rg+vzMML2SrlnzZH1ePdBXFYkBCNtu7hixvRQeBB4Zc23Hf1x25Ylsv6t4crrrNsrObvCFD0apjbDuiqLE2ioyd+A9wD/O2jjy9TikFhZiS8Z31yEvzcLGtpHnfHzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781895394; c=relaxed/simple;
	bh=AvODwFXhKvm2gOj/FryvHk5YisU+u28YCegBAGny7jo=;
	h=To:Subject:From:Message-Id:Date; b=saw6qPGN726Jhl6NJuvoIGw/WEsK2RvAsTgC1xt1QPDbC9Rs044Q3znsHErymdYSYhIAgiiZ20ZSWWIMAS9SkRNMzsDNA4qdf/UQwB60nn6CSaymHM0ZBmT2eftqLRfEp9X0nRuTrMe06AA8o/SiTR2kZ5N3WuaFMudrp0GP/14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGl1eHK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGl1eHK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD641C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781895393;
	bh=AvODwFXhKvm2gOj/FryvHk5YisU+u28YCegBAGny7jo=;
	h=To:Subject:From:Date:From;
	b=iGl1eHK/0QXONXM1QRGT3lzyFzIHu9h5vVFaPIZiFlXREZNejhBGvlgcvLoAvZXdh
	 zNUYDLOsnIDrFL3uQgnchdKH+lpcBIRbBwLWWo2neEbe7qj6caawizQoEJ93xf8+2Z
	 aSsGcCtTsEYOan3EcROhC6DJVnLHg/mQhfg0a5XMOnuxKMIZIm+5DKfXV64g9RGuyn
	 lq7rJ3tpX/yGfjNF5bOPnWXCxGXNx3CYlJwaC7mEQsvZu+5innHmcAY+Pb5xrSyvqb
	 KRtc5VOhUoS1JURS6zuv93IiI3GNUZOC065sE/BMqZTO+IMRCGc2cAlC+EeztI6SEW
	 WBcgnHuWutFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA074CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189539368.14215.10295807458085346341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0338cbc2604047e79ac920f749bb1f39f840409b5b4e5d0c69e03dd235c3ccc2
Date: Fri, 19 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781895393
