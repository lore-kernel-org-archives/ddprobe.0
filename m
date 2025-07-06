Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EF62E3717
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751773194; cv=none; b=o4buawY/XJRBlk5zBrwvQ7xbFSQ/Dov3itRr0VgnTJ1sahiT7nciMg7W9+U+CliffL4dvIVQneqG1OGtiODWNOpGxAqoTwuVWPFCNXon98qmNiMZn1iSah30LYoLvb5/6ngaIUl2bIhcxenPnp7Gz7CyPoaZmWzCWiW1ghCksks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751773194; c=relaxed/simple;
	bh=bJ+SKycgyNzxsRpMS9reZtoAbBLstxkWxrmUVUQROOM=;
	h=To:Subject:From:Message-Id:Date; b=A31bNpkhaB1jboC4t4SS9MvfIZGYpo8Dm61p//luvGLvIdmMDKBpDwFinUli2wFfYpFIxGg172jcBPnhrNV1iOKyH64OVo3p3+QswzdPE4qEfpfGcv4H4hpCsjXaIRNbEhVcn0EC9XVCEsU1ybNiqipuZ6WR/OYOTRe374StJmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGhjhrF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGhjhrF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC6C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751773193;
	bh=bJ+SKycgyNzxsRpMS9reZtoAbBLstxkWxrmUVUQROOM=;
	h=To:Subject:From:Date:From;
	b=HGhjhrF0wWzX6JqkKrQ3LWMSCGohZHUHc57rzZj8PI1Nl1jjxnLTzq0keWpEDJDlW
	 kIq0cWIQzEHs+u7KYssdA/26I8IYv9fbNhN48WphZ4RYGAvAR73J9SNzSd/p/y1XEp
	 MF6dqwGjbvDuv9U+iJHxf/+TZFyhz+kTe/++3V8wAvkIzQ/OXx2suPy2ekh3xvHZLq
	 SHd3yPXLTD0bUKsTeQJ5bB4e6OFqtnNoBFLkI+QdzmoBOGy2y+Rm6fN4kOJBttRQtQ
	 fAupKav0NI9sQ0JoedkNAqzKVjRupUdSFQdDCF02qPnVoJ78xFX0lV+AkT/hs2lOjp
	 TbyR/hfwkU8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91251C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177319357.31055.16085805740945037825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08011858739e2f957c95f18408b45e21f194b8f1a3ea6889506ece6690dbb715
Date: Sun, 06 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751773193
