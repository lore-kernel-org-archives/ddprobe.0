Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2075D328DB
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724871354; cv=none; b=KhzLd/9rTQ8Wp/vyqs6FEZ8azDvBIVtw2IxCj6nSO1iQ7GHr/prRJVeTnpAK2+uuZfUbzo7+daQCFAmCNvvZ3Lui3K2ELuFT2yCzhPkbLX6uleGweIAYBIVVnqJHg2jiR8YEVk1+SuYzDxV+GHY9DHqZCdsFna7FlxMQego8TBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724871354; c=relaxed/simple;
	bh=YwNtXdWj6iuHBOrkhrZWcbqq5KNyFj3bBgOsYhZhgKY=;
	h=To:Subject:From:Message-Id:Date; b=b/o0i1Xg3HmoaciFmtMHYqF+Ivo414fYXJs7lmJ9mDfv08T2JfjhyJYB7Mu9+T5R577KW2X+/mO4aCNfmoajzkaMreqGieFwC3tIWY77ZZ4vm8L/oLkEkXZYxge+T2w2Y9IjIqqDW8er4kQCT1/vZJQR5Y/LvuF/Z1WKdmvM4v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc+Jb8DS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc+Jb8DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F4C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724871353;
	bh=YwNtXdWj6iuHBOrkhrZWcbqq5KNyFj3bBgOsYhZhgKY=;
	h=To:Subject:From:Date:From;
	b=rc+Jb8DSqf+e98XzCPJh47kMKDO/itUA2q+PsgNz+tao92bfIYTKXyDj6DwL2B8fx
	 hWq1hloKE86i8LB8FAlgyQAy+muMq5b+zfA7nH4yfOhzN6SeXHzht4dntvMzqY9KC1
	 wvELxvVot+ypqhDNXG33Knzy+8urhdyhwws6eHVwz0gacN5617yv0ra0dNUf/5JFVd
	 pIjMUZn7IE0YICASP1ro2/X3LvczMxPr6pgcIEneVjcQ5BTDgI5eap3DH24AbVnvCJ
	 7xafpC78ejTPj/hE5oXkWV7zNwE0Ntb36R1CIu9KLwhmdJbaxuLP7saqjbmXcrvUQ2
	 Izi+GhJ5WVJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CAC636F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487135362.2205.9121066200194450589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96a6484a798cebcf2d7286b2eb0dcb123967682ccaa6e11c10cc5949583e503
Date: Wed, 28 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724871353
