Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A436314D13
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791762634; cv=none; b=cPdPdOcg6X4J+Rowz5TUFVKHtdWLq8UyBp95T37aENs1Antd6Lis8Cacs0eqsije0bwqbEnGEiaxk7vKKTVnU5JFHuHA7G8VsTyNdIzv+gkxmv/QwXjY0B0LoKyPzQDr30ZZWnwdoHUnLvedhsv8WRdj3fColqyHtNT3lRIHVOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791762634; c=relaxed/simple;
	bh=ngG26AA3Zjqv2IIl0uHOTt2HGYZdJBFGWXMVzSf58SE=;
	h=To:Subject:From:Message-Id:Date; b=SlF1dnDJ9mm+YHVCr2xGd0J9+fFeN1EnHoi9eKjbX4eT516Js6yyzOdyS6Dra2liwhhWXW4ihtkv+w5QOO1965y3wm6QDBm5Cn1XZWrlYqWKD3EDo1evsqLTf9738zM9p6w1k9I1sqzWEM0UyEIDLbY87aMKcyK9QUeTUjVEmd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olCAqQMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olCAqQMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6507C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791762633;
	bh=ngG26AA3Zjqv2IIl0uHOTt2HGYZdJBFGWXMVzSf58SE=;
	h=To:Subject:From:Date:From;
	b=olCAqQMrotBa8hZJErfbSY5c3f6yKxtm+43ZgffKIX0QtfkH6NpLOPoNg8D5AL3LS
	 yfLSeIeK3jvk4brGoGh8HNuM9pV1i+88hJ6wKklryTB1kmAELGyeJL2/7AfTsLlJhI
	 D+gdxU8h3Z+yXoISE74xnyjNPhVXL2RziJW6SpZEwBxcJ+ezKtHW/SBc8y8EozA8kg
	 2l1GiZsSrvrgVdpHIIx+GJWZRPNCvrlvg9ILTCTq4QmUI/ZPlrfAf7YkRsCmBV+Vam
	 dTvvEQcseKbgB2w/fBDmRGjdbVeF4BEM/3NyMdV7Id0Z84FDN53o6SpVdSPtMssevw
	 rAn2yKuXpymaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A49CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176263369.16566.4130822067220920268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b2bdd314d8fcd46b7c9f40274da51c3199166a2e9efe48ae2a1565a131e3a7
Date: Sun, 11 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791762633
