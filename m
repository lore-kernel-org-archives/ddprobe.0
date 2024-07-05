Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC044962D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720149923; cv=none; b=KeT/E0IfVuDb292Aub1PHj6S5mEVI8ub+hGTZfGGQuhjFVxfMJC1C75bdJFJ/OBh9n+z6S1K7ztHntmmNK8gpdTF+leklz8wwxXUeeqWwfTTFv29xQp2q6ftt8BLxyD+bob8L5wUM8sF4eko+TQpqDsUVKVHR9m4Phl5u2tmXxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720149923; c=relaxed/simple;
	bh=svOep6xzI8Rbjk3vJcNgyURV7XNSy+iGgsewOvZj3vg=;
	h=To:Subject:From:Message-Id:Date; b=raG5sLA9BpOlDFjoWv6GDHiE9vhRiOsBaAQt2rW3fA5RBecK1OLOq5yomSbtU5/6kZ4NZHNFXFkmYRVebF5rbkf8inVszELYKa8BpbpoRUg+GM4Ec+PhHuE1VGocStohifXu3phANpeY8P870qKHhZ3Vtu9vfe/mO7/DrIewbpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0aliwAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0aliwAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88F0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720149922;
	bh=svOep6xzI8Rbjk3vJcNgyURV7XNSy+iGgsewOvZj3vg=;
	h=To:Subject:From:Date:From;
	b=K0aliwAwDtps4dXePCXKVHZ5MbZW3meMOh0PGHs5VWqwR2gJCo4eIb7COVfYviHFW
	 FQKdEmfQ2z6uXI84/iuzEiCWmi+hp9WGFDGUrDn/tWMW3kKjThF8O9yTkcU8xIHRoc
	 XKuH5MOCIAH5kc/y4ZJ/OhlV3mGZ4nUsKfU1OzJZ4YGqFmNADAYmQD5yIHXft1Phq+
	 jcdcKvCspkfwN+/2y0z84BKmYtd+kzL1OMuxTs/tcBFEUyWbDXMj99nNjTOLxbxSpj
	 TQsDHYNGHG3VBAawub4mhZuXFPPAi16UhfAIbvdq7ar6ITC3U/2HmAVqjb1fEedhyl
	 45+71QWxmJZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FCAC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014992277.14582.15013726766346253770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac418b57177fcafbccbed1b4f5dc0e68a089d38ba6cf3efe61830e4b565c7ef0
Date: Fri, 05 Jul 2024 03:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720149922
