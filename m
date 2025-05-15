Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F79A21FF4A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747327194; cv=none; b=GvgT+ETEF+wUKOrzlKusIm9gOBUBfK3B9ZTz4PS5YBoUrq5z48IoSaXjyNFvTiuHB/Sp1MTqaRo3poks4ZvdFcrAFaJZfDgnvrxfOvu1MsxxxUEJRzVbumDpM6HFskN61mX8i+AzpIxwkaBM721hOnltVe2wuMWb0fEzLDPjSkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747327194; c=relaxed/simple;
	bh=ikmkMZnNJShYH/mxVLyrgJd3m78Pi/c7eBozeG9O85I=;
	h=To:Subject:From:Message-Id:Date; b=Gcoc7kGVCzDy7NM1eclIKfjUkCBfYHtGna4qFY2dgZUcjo282wlX/dbAjtr9NbxuXRl0T35vonT/1U24ELLCoy7bCQhDgcvm3ACXfh9mpTEgz2nZW9jI1YUfi63xJTR+8rh4rBkaUQGvadKppMriCkwd7KAMmvL1mcsJMoVht6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGEUGUJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGEUGUJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EF9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747327193;
	bh=ikmkMZnNJShYH/mxVLyrgJd3m78Pi/c7eBozeG9O85I=;
	h=To:Subject:From:Date:From;
	b=eGEUGUJYXeeIyZztjH9ZlD7lJNAUx0DEgiWJ4j2pHzqWW+gzvAIShIsXaqQs2tmq7
	 DCDSzm47iC9HrQ/wPZP+AISbInjGscWseM/cz53Us0iykXiaiEq09JnQ0EfyqJkybK
	 SYCPjbtEYBh5WnoPWeXvf7nqY/Yd/GZ8B6chJMrh4Q5/PmvRDY4Pc/KkaxI5gNyyXV
	 hNrGYBtPLF2yl1IAA+VVVW7hj/wNI+8XKI1wicXxSwXyX0OifMH1XqNH3+HmLoEtA1
	 s+prVSvG/2oqRQKccPPHiRNRKhcR+3r6CXwKBQbVxTTf62BZIzxyyMxiSLRgGdoJbg
	 1TJdljTisZCYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CBC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732719358.12208.5664808476358972105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0e9e9ee0310ab82c0a8ad35faf2bc98c14511989b99641971663038e679469
Date: Thu, 15 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747327193
