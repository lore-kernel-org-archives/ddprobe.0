Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C4D2AD16
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766858034; cv=none; b=ZEkd8HUoV1rWf44PRo9T/YJCYeP5KahK8sjDkGeTFimpwyQ4eMlsIhoLT8cA1SJCKavt1ZyERTllvMstTJJWDzd7HUEIIXHQtKauk7OJ7PBLfDTwvG/5amg07a2pShlJEvAsUBN9MVBPGTm3baMRA/HK5jMNZNTWN6OkDrSzvKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766858034; c=relaxed/simple;
	bh=uh9gAYFSyhJ2WWpTLro4kffGaUMkmP+VJvAJVP6+Tiw=;
	h=To:Subject:From:Message-Id:Date; b=QivnAVhiUWS0l9gEQJ8Tggh2nfmpg2fctERH+HS52462KW0kKiBF64zqov4aLRJAPznL3yLjlJG63ayPPIN7yV43RIJkfz9Hqg9AwNyHjUtKwk5Lcex6L5FpiIDHToFoS2CtPNtJD4clj8IviJ3+0UQoa6FIshL2Pp7SLJMqlVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf3IuHZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf3IuHZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766858033;
	bh=uh9gAYFSyhJ2WWpTLro4kffGaUMkmP+VJvAJVP6+Tiw=;
	h=To:Subject:From:Date:From;
	b=cf3IuHZoFKa7IyQ9pkySOLEt5LfHvbn91z39Nnqlef3s4abd/ARAQbrhFOE4mZqqH
	 uGnPyUj34DVNQ4vkgrGIdiKrVQ7aVTP9wx1XHbtdrY437hdmAN893AbMnCV5qmRt8r
	 E4jWDO8UYmIlsYr06EyZQYsERB21EWyTugYQvH1shWuehLcyEOuadxGrorqoZsJawz
	 O/8O4eZx3HyRCWdFTLEcyjEcFqRwoIULGNR/a9dHKp+KuBzxXhOjBN9Rb45MAkiM/Y
	 DOSlcyd6EQTINZ5D1t2YO2Fk2WJ9dnWcV7z46lkNGjVt1hJCIRC7O8z/WBPc+rHFtJ
	 f1JW3F2C9AaZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5064E92717
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685803362.18409.17625741362691522430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e985cc1f3df5b465a00b86b78b880915a9bad4cba4dc8a7eaeb08456c9f6894f
Date: Sat, 27 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766858033
