Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C22131E2D
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738745754; cv=none; b=mqg1VnuNeyWuSY4Hhw7+T6gnwlO8Tfkw9lRhUWZFu9Ip38LgAshOngYJggnW+tr7fFQ9GDEUOTqsrDt4iqKTZMOVYPBqPbFohxO9MxW5jkAm0w1KVCTVuR4zsoTqnpfFNWp2e7Ig4O3o/ucsIFOZ6NeOwN0rh1LnXHPE4sKutI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738745754; c=relaxed/simple;
	bh=S2TisnYWMJ65eY0699ynKN1aY+HTMiiHL/wOOm5IEZE=;
	h=To:Subject:From:Message-Id:Date; b=la2KKmyVQHmhm7Vv/lMPxT4sQ4sfDg1bfIPBqYPAPRiQLmWrsx3np922Gt062qwcFdYcGgX9jHPS0WlfXItDk1VjKWtkxCEFmKrSGW5cYkgn0ewIRTT5MvbE6b0eEBFxxL5wv67YKCarhDXAhSDhJygmNlyPyuafZuiOtFk9f4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Basu3U0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Basu3U0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5308C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738745753;
	bh=S2TisnYWMJ65eY0699ynKN1aY+HTMiiHL/wOOm5IEZE=;
	h=To:Subject:From:Date:From;
	b=Basu3U0+8bD0hC8VZy8JvMPULXrVtegBVgVa0EJaXwBKOSVp4ePBu39i+lt7grXf0
	 uHT1IWzQvMjvAJpoLAh75mXQWFCzNlfqsu32FveBo9scHjMZ3alDKADKsorM0JAbZi
	 faecYBawIjwWNaaCPFFhfsMj24ustii5KxtShFwFnruziPZE/taQRRgU/75l6m2jlt
	 XqUg2O563JrfNbM58GQH2eGUciH6Gf31yFT9hnSTXIDCkvNQjjl65sWR6PphmX0FlG
	 25ZdXGx5o7fWYYqGoCCEkOGc6wPbMrFP+90XAYkowEKNAKzU2yUOjQBuT/II7XLrut
	 XFk8pIGVrGWKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF46BC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874575370.19764.12433773996092705393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2adcacf39e25a17c98692a27a80599e0187fa42e67d67bb8ce95dd84162df6f
Date: Wed, 05 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738745753
