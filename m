Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22C63002BA
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758529793; cv=none; b=Ebkdyg2jvFVmC93EtQh1zvxb8UoOi6qlq43no0Bb1EjIeT4dJOYy2N9mxwWYzC5KsbyL+9n52iomjzuaFnaDuIAHBYWZ/L8oCvALqrRAAYO3Ukk7I3acEjIgZAkP1FyUeLTz7QsrCJiORE1yCdoeOT7d3IJEi319z/atQHTR/Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758529793; c=relaxed/simple;
	bh=MGHFTVza79sC14EC99pfZnyIUtVy7K8CEiWm4Gcozmc=;
	h=To:Subject:From:Message-Id:Date; b=nS1CJ5olrzITW8NDQr/eKmCzVtkm1sxotJjXGi1fG2K8ngqra0u5oPh07k9nMECSNfwiNfkspyG1MciBrMe9Nup2QqxIvU7hyYuxZQzFgrxjuCWCSeTID5orAs1rgYpak0VeCvU4c2EqAlT5j52+lEqN4yFrSyPIkksnwpryrmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfsmn3aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfsmn3aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A356AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758529793;
	bh=MGHFTVza79sC14EC99pfZnyIUtVy7K8CEiWm4Gcozmc=;
	h=To:Subject:From:Date:From;
	b=nfsmn3aKfNzrc5sr58wT8Jf2XgXVRA5zn2iUWFiHYwubqsCrdbeyl3LUR8zEyva+/
	 jOtaP/p2yUeDw0dOA4WC9fKY8DEpzQtKfOZcTa3ElPMQgOj6OgaqKt3TcSvcso5j6P
	 gk1n9h43I+PnIwBMpBHzkoW3N5BWRDWytLBWN+F96qZG0DNL8iplmeKUyIdUWtXENV
	 kw0c/NxeZPKzibEsYYY0iVoINj7rOY9g+vmNpPOgb/0zMlSbuWUQ1eP7WvDE/Qqhl6
	 F5v2MaIu2UDGbyYIA+CMYUl/YtLMMrVM0yxvDl5FyEdaNqtkPGJLhAFa7z1iVWVn/i
	 /R5qYBHGCdtpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275FCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852979358.25551.3528502420738244412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b277ac9835e7efb46e23dbdf529a485a92882801c51448c4a5b0bcaaa859ce
Date: Mon, 22 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758529793
