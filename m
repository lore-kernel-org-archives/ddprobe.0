Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E52571C2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749475794; cv=none; b=MPWwEWSt1n6RNOtgp8T2fAKdimfc5lNDp+O4yMSiIpy9JJSH18383oasMG9Be/VX25OURltG0TpKdFOMpuTp/Acd2xGlhfIW5riaguEE4WugqR49Ya4JUqiyroVTcVZnv/r//8jOIJcc0nGXAg16cBZMtoIajFt8Is/koqfwe2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749475794; c=relaxed/simple;
	bh=Wad0NAe1791d+Z8hTxlOckp/kCx/g6mzqSKSOJNof/U=;
	h=To:Subject:From:Message-Id:Date; b=OYOWz/fJWWSia4rEZ/14pewGdkobQfkRJdPH3DJTQil4BL5C91XTgC94P00c9A+2MvRfg/+JDzViiY3tTFQPhireFVl9twoAtod7yQWfnemAfE8a+7vp6FeJRJSCWZMXGp6e0IfNzUrms4AHPdOaM71Wsw1KWqAqvGAWj3yb59s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBn2m+Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBn2m+Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749475793;
	bh=Wad0NAe1791d+Z8hTxlOckp/kCx/g6mzqSKSOJNof/U=;
	h=To:Subject:From:Date:From;
	b=GBn2m+Vm/q1MxxS7PQpsBBVAk1huvK5gPDobxcjHBnpD9W342lHnSUMh0u12nLRi5
	 TK69Uxj/cskkUxlpT3upNBfuR38huP3Oz8Qu/iW0EZb60TSRcLw9fdpcOGUr7qtoqN
	 NfnbZQv5mqXbRSmO2FHMecvsAyMB9GPm3KeYhBS5LBD9bnRT1M9u4Op3bdo6QbLEg9
	 N7idroeld9czKdHkKyxE9dIn9bBLbB726st7+YihFwsEkycSWkOLqMj4HbfUaPmnYz
	 +UWZ6e5Cu9SgGc62OfABYEI+Ffwm1qwn7EwiZ90bSq17ptXty7d4/sCyfUTFuEXxQ8
	 p2h4J82p/M/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B8C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947579357.13821.2056731958267028570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceea045435f7f555ac54d2a69a844b242750c38e50d1d1a26b1f7388ad7179ec
Date: Mon, 09 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749475793
