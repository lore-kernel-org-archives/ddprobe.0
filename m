Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0389121D3F4
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763755914; cv=none; b=XNTQCrvITDKX4Co4wP5Cey4gzNJEhXKQZiGznHY9Gfc//+LfApDgFJU9ogPeD3pU1mfz3dErGKP+d+gtBZEB0dNt4JuOQskLssl41smAJ5wztfUBC/VQ5jYrM5HaZAFUVCS/bN1vmHFfh4njJhM4rUwTf4uK3N2Eznzf6iNlh84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763755914; c=relaxed/simple;
	bh=z96hh7+XNOjHbru7WgsuxcQ0WNmKAUQRhDDYy5sKhm8=;
	h=To:Subject:From:Message-Id:Date; b=qd9piV/+xhXWeNVtYyMHliD9sNbbbM96IJmE6pTmNz9vAaRuQVM/rKhsmUc3Swlmc492eZhdg+c1epzBUrxgjJH11YrFMLz0/bTYXK2qNmdiyRU5KeDAWyYu4ANspjJaJjMEKwl47xCS5VLzA4tR1AmEFxVUhZhoGdQ0l63rwj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnKEUTW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnKEUTW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8897C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763755913;
	bh=z96hh7+XNOjHbru7WgsuxcQ0WNmKAUQRhDDYy5sKhm8=;
	h=To:Subject:From:Date:From;
	b=RnKEUTW6HpjClynaIm1SczCDv5XpjmZbo4sztDIN+GH1O0z0Jlyu2vdKA8MxH5k08
	 9EtHyWFZDbo01RdIqoLVxVLYA/jts67dW8xZelIx7z37QJ6JPK0sBuXXQuG5dgXO2m
	 bNnOY16vrLjiIYUW5r+D+DsHJxB5hLKBRCKeruFE5fZ+tprqOvsfBojbBim8LoxYkg
	 LYMfWREbQI8IXPr170i4CaqMwOHthDyPpeZmfP9cKEp0nnR7gj9pFCcmOU2rCSeQHb
	 fONiHsCP+VwP0zltUe5azLS5WyqdEqq7Cjei3BxnFTBrysUEltGUCtJyQyl7sliJhe
	 YQdvobTdV6u/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97162CFC503
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375591358.1423.7404545033839214357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec328c3a9f07cc03ff85ebfdc8eb2841edce4bce77a99a6bf80f168f54e684b
Date: Fri, 21 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763755913
