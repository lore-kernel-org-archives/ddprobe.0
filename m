Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976B38FA3
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756694994; cv=none; b=oWdskl8uZAN7p+NnHgztBdki4kuyFafxoadt/ur1VfT2go+UkZFv/1b1cSxgAoWmcMIww74TYajQazLKOBAVTq2kWBlrp1GnPRlHusMC3oUBMH6pkVNm98j1TSgsZofph+tUZ3sVBigmR3w6auoWtETxj1wCmLed+A8zBmnydrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756694994; c=relaxed/simple;
	bh=qKCvRCFNiuXoNZ9d1i6QmkW8P2sFOrk4hTIsa6sZ/b0=;
	h=To:Subject:From:Message-Id:Date; b=n8QNjK/JGGFfrvmplIhU18neo3JLqkurJaAGqRAYDAvdh9rKmBoU1e4FAQS0mo3dFsfJG4o7xaVLKYDIG9V+YN06y3wF2YKOc2o2pDWWDzY6LNDiKdC71oNugBwChC1CKNS9LpkCO8/E9DzB+Wbn/reoVvD9rKZfJ3o1lBdow/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVqg1wkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVqg1wkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2545C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756694993;
	bh=qKCvRCFNiuXoNZ9d1i6QmkW8P2sFOrk4hTIsa6sZ/b0=;
	h=To:Subject:From:Date:From;
	b=BVqg1wkwQpKuoJATpbsnXGI9HB0Mu4JD7fkYbi5IZYPcnjILuAziMDqfhTGEnNxVh
	 FVHJDzJv9uvL0AT5cwQHALvxkOc/EUlBVIkigveetex2fxgcdF+70+RPO14cm8FqVY
	 evaCCODspwuCFBO+LF8SUtF31m/sqSaq74cc6i0pjbzf8uQn0+0NztFgpwLMngqLkK
	 XsrQe6rw3klJzZPqEtcQOjgtl5KexCoZuj8y5nFLrgIV2hebPs+9cVWQIJ/0c5mIZg
	 qq1xyUTJ3hRCzuud+b714Hez7BvFseDVWvWh7XtEJhIa3T/HaOtkj9R+R2OK5i+OKH
	 xHfTjJ0WwNakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E643CA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669499357.25303.7108661519639041357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3c6d02d4152f1acf3b099388357c5ba69489e531df9309c4fe9065786f0fbc
Date: Mon, 01 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756694993
