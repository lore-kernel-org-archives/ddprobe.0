Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AFD2F12D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760713794; cv=none; b=UrKWs3PWOqqySkNL1q/jmY6J8u/pfMnQaF9cjo/errAD9wq8p8dFcKUTK8f6bYR3hmE0Q7Qh+7ODcgRfCemhm6EEtPX1mwIum47xBosqWO/pmHPRYzHX4FXIzrUG9W3dBpmEFOTBViVsOo4z7fDOGfZ7svOHnIRZtFb7aVIuROg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760713794; c=relaxed/simple;
	bh=Y9wU2uSZAJTnxXAq77EtKe0IkhvF1kEdBg5R8z7O3ks=;
	h=To:Subject:From:Message-Id:Date; b=j2l4cvk2NLyyKNrhyJY4z4byDUYOtyEFEy6ItCSPAZZRoZZdGTYdmL+z9WlOcDfpmH5XAbmApSHD4yu1rCElXmRzUllZ/c1Xm5VQnaclNuhDHTY6ubqWJR2iANex60YGNoUMjQU2x1XLJUCSRRjJ/X9L+n049Pae8ifL6OU6+fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgoZ8VWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgoZ8VWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760713793;
	bh=Y9wU2uSZAJTnxXAq77EtKe0IkhvF1kEdBg5R8z7O3ks=;
	h=To:Subject:From:Date:From;
	b=JgoZ8VWMeY4m96WLXY7fo8MGBnOnUg7REXjwyqgTz7238AIUO2JyHA96Q0WVV969z
	 pPLB11PrpULgCGzjjEnJ+XdMl5HgA3hvjJXUzfiGFyw7CIDZRINEHfc28b+5OF24PS
	 17uG/LtAmKgoVRwW/TD6eh2LEOGSAzfB5ilsluhrLCxvN5uhGw2poeRV5NftF6NLaA
	 PU2YOeegkXs6TBi3VwSHeOWtfhbPp/jftkDAkM4D6UHvMsiNlprmI3axJNeMY4JZ5R
	 R9yGPdQw7+aCvreE0XaBK285qIhxDvjGOmrCw9JJ610bJxFUoyHPbxH4O8OtXpdmpO
	 UxiHcid0FqpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E72CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071379359.31414.6756984439022343691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95618001595dc973fcf9d8a00289f5e3aa0c7d7e7afaf0c29ec4e6af0532b4c4
Date: Fri, 17 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760713793
