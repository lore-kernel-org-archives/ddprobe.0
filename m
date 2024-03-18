Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED58F5F861
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710806297; cv=none; b=l4aR3MWKddmhxv2N6n0mlmLpWEpFly8QCpyx/Egyb0rgAVb6WJeWRUm1U29aS6yCCLYeszd+brpqTNSyRWec952LojEPdi8vimPaE4+AMinG1WYX014hgEUAF34kBr1mqDAiWrXR00Umo5R2R3Qj1LhDMshWNY3AnaSsuZm+P5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710806297; c=relaxed/simple;
	bh=hPLSDfWSTTCZ9s2N2nRf1YcoloGuViDOu3Wo4usEyy8=;
	h=To:Subject:From:Message-Id:Date; b=XtwEMBdNGTTzOletc8ZS5x9dhhMm2JYzPRR428Zoh7/r3UMnIaTISVe3nTt2LsXQwrFfHjyj5VFz35uVP1V1awodzrGz3Vaj4eQwhKnf984zBftwVE0H+/TaIJNFdfE5EsUF2Zgfl/lXSY0w7ht1ciqm6wEkrjyxUEhCzK5JFag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFx2MAo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFx2MAo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BB9C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710806296;
	bh=hPLSDfWSTTCZ9s2N2nRf1YcoloGuViDOu3Wo4usEyy8=;
	h=To:Subject:From:Date:From;
	b=DFx2MAo9CMJiHQob+JKEndIRmEuWrikO/LAUaPBSwnnnYBv0+MPAYmPeIN654/Isk
	 0Pk8rA5GHDnxnzSuwdeardBROPpw+pt6RrYLuh5CazM/FSFl7xFtL7fnYLZmgVf7TT
	 y7gaMCvuubvvV5hr1kY+T1J4gKIO02Ec4pzkN1Q/AA32C3S2sb9agxRxdMKZQaMTio
	 mlIxVMhVNlee7VuzGvwq+S+CpWg9nzKRrmL6khgA0XntBqFEJ9oGexH/2ufTq5XB/W
	 EEAA0bcDRxGlZwB556/nU/MAWiYG7epK4OChYbA78gZuJ2wPrQGyHGRbxSlJHIZAWO
	 0unrwksyTwmNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C26C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171080629639.21417.15812875210541239645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da429a12e9fd26ff81816cac1a54884e1eb6f376b72085b90053f3c40c8fa773
Date: Mon, 18 Mar 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710806296
