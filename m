Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462A143AA8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748896194; cv=none; b=I0vz5kbJAdRXQ61fFRInrg8OvWLSEKrXlVF2+neIn5o7dgEGH61BDr4MDB6+WDjInpaORgFUcLhkgziFWMPf5KLoAb9sz8ODOCiZ2sIe+q/8bVfZrKMoPhxVB2UC7Nz0WLuv3yZpnQ3V7MoYbFRsJmNWEa9JVDtvNIJIRYLcw7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748896194; c=relaxed/simple;
	bh=jpfyJMAz2y39ej1WXcVW0Op9vtrw2TtVST+pbpc61t4=;
	h=To:Subject:From:Message-Id:Date; b=ZAjwpwca5/JpmuqnJR/IaJpMBq981FEakY+vGqzWWNlkgSV5c8QQ1fGkr5Et2Bx1JH7DHeIgB2vWuHNM5s80+Qmt+dTKfXmdFqH1mikpadycSYFs8n/8t+Y5MiJ7WHH0NKRq0DEnhUeSb36un0tZ9235JFgiorh4V+8WUA9ZBsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSnu+yqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSnu+yqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748896193;
	bh=jpfyJMAz2y39ej1WXcVW0Op9vtrw2TtVST+pbpc61t4=;
	h=To:Subject:From:Date:From;
	b=ZSnu+yqwsA8FukwI0fte510GK8slFjJTC/UaSWruJ7ijO2RSXR5KMXLDEVTxDH3sy
	 5xbaSqOWo73bXRBEuF0YUzwpZy3fGtg4xsUm4iAFqvAlxJnnkzb5vvBPZdyOBntoFE
	 Ws/LersoR7tGPoJjS/WN0HZc95hlU6/9YVxWBNi/4Y/uwZK4VP7r941btuqcaNcnUO
	 E4+60JruygkVe755LUcokPR6MTXOO5bCDr7bnPWUNA0J8jMY8UDf2gycMINn+5EtxU
	 XfGMmmIyT7YGSRiSggyOYs1ORCLyxBomuStOGyXfZAF19to0B534Ok64SRJVlVihkD
	 njz+kktz/thiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983DFC5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889619361.18313.17880397585044993886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8de99cf0206da8edc49bffa503b37dbb7645fc3799eebcf619cc9b247a1948
Date: Mon, 02 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748896193
