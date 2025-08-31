Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1648D219E8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756602594; cv=none; b=oxYvB2DxN0IcLmoXTx0lM5qIClJ/y185wvJPqkXWe6OBRsqCi2n2zx2Ue5Y0EJJOyjVpfU8Qk53ukoh1sR+pIkupdf/D3tyqbYGrOAmMu/6NGUq9l+si8i3PvQiDQD3pKhWjSGngDSs+v5174sMhQCkxU8WJ0Pvggakr9qRMrk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756602594; c=relaxed/simple;
	bh=s/BBmnl7uISWdqS9t6pMIFbDuu7Ylf2qs1ofh69+vLo=;
	h=To:Subject:From:Message-Id:Date; b=Bp+Uo+9NbSeh4Z1sLsCqWuT7qPjk5ATH9V51hTvkN4KpJgvzhzAcNK4Um+D99YFE7v5LMOGWJ+W21sYfTM8613bxwHgDwP97a4ZLiJxlRyfskYrx6zXfcmg75Y7ac6q+YEKAFGOv0rqwcCTkuJzfN80KpAwJzO6h3N/PoG1Hig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueo26I5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueo26I5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3880C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756602593;
	bh=s/BBmnl7uISWdqS9t6pMIFbDuu7Ylf2qs1ofh69+vLo=;
	h=To:Subject:From:Date:From;
	b=ueo26I5Y0YvxC3uEBH6651cHx1+LUELOQ38gWDToQh5coWu9c+3l+s+Z8jhPfVItO
	 T0cIYla8XT6ilGRIxCX0owh1clIJ4mwRr3Uc6JB2kykYsYZj9hrnHXZAgFyZ+K+hl2
	 /qfwtDSCtjuxdwqBy7ZGi+sgGx1zRP+AHAFCI4w6GLUn4M5q2qkkn8h8vhuJV8wJ7/
	 m58xfwxvf05qaZjnwJPGdKm016sLWg8w3t27lRmcu7xJmN5TLbxpr5DTLmDwjhW03F
	 DZ+Bcyw79uQzoqhBDnZJH2Q64ZmFeXsrAcjBOj+1ULNrVTWYvThKo0Tva3O3gzUOpH
	 BuHIyjWqu9gHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3ECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660259357.7888.12124992449124605364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20f03c1b7aefd4e8bb4e8cbe7d722e105a07e6795bfe7337bf58cda984b4643
Date: Sun, 31 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756602593
