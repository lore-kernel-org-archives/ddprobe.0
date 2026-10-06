Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1A62F0680
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791268234; cv=none; b=rMPAVjbhteF8F9tlPC+Hk/b3O/Wxm0oT2uTwI4lvrfduG5DR49Ete7I0WSpDnShxOHS8ps7uI7hxBi6WZe++/26plEzuY2l9glmJTPHovu8NNCmfQ1L8LFG2JZmFUzug62ghvkfY05xkwShy2Xm3x4icMdORXws9wfiw6mI1YuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791268234; c=relaxed/simple;
	bh=SVOQ/NYyITESejl4Bup7EyPJGpRBHqF7VydEZPtrQgo=;
	h=To:Subject:From:Message-Id:Date; b=sc8lq4eM5GLl8iH+H1IjQo2xtHZJKWilji761DdmUl4QpoB3+hBczGHnkHSGke53P6y8vkSPbpUH/ot3JztKcKmlPONX3qTHvgk29VL0j9nQX1jqIfbUls0PfTLJgGUfTlaBXpEOg/opwgAUl5A+2k5jg7coqoD4EFAKB1uvKa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7+IhKk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7+IhKk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC10AC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791268233;
	bh=SVOQ/NYyITESejl4Bup7EyPJGpRBHqF7VydEZPtrQgo=;
	h=To:Subject:From:Date:From;
	b=c7+IhKk+XheHlo1CIXfOSZM/xX26SPrEqPYsCzFmjoGieXmza2CLY/wusaFvxmeof
	 l6pG1DHOkqmrcaeyCFZlttioDjz8/uzIqTdMVl7A0bXZksaP51/hZDifc8greKkXiA
	 aRIuo11MpLbNCSYH7RS3AMo1Ipuk3wrgaY+iRq8UC2ye9aqyfjg9BixQCKx9Tudf+O
	 EsoBj/A15WxOZFnr7WV2gZIQgZ4h/LNFzu83G0dqJp1usU+NUisetjs4IU3inyTryx
	 ix2ZglBC/cIMGeJcvhKhvIAJ0ZOSjSLAgJgqLO/ele+S6b0w/f6AUh5LmVMBhravIX
	 nMM/FiXY2bAYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9721CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126823368.14587.7995086700438140447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091b2fa3dc99677ed266f7ecadf06726cbc2aaa8539388e4a75a414d605b5c13
Date: Tue, 06 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791268233
