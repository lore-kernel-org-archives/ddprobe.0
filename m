Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0794438B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761448794; cv=none; b=ePtMJE+qohH5Jq2zQY0eeDjyTb+5NGmp5TSShvr+sL7l8uhENNgh56XN6WQaFkzltj7KdjjwCxdI8yR6nAD9Pt/nE5gIwKFlMKBaSdPtJFLPs9mj8SQ4UmjbfRCcP4WjNKHi/t51nJEz591W6Dr/ySx3LxM0QJNqDcioQadySiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761448794; c=relaxed/simple;
	bh=hpqW41oFz6BWdC9AQWinhEnjqJbpcCpulxiy5jEvihk=;
	h=To:Subject:From:Message-Id:Date; b=KQxh1uWPnm5NlPhN7SN/fHBmQGGyfTJTUS4Ek6J2yRJRhgIM4jJPAO73bK4ImJeXIWW54KA73WP4R8B+ZbMYyhZnd545rVxxFfLuVRRcQN41vlmhLkIO+RbNGX18RabRmzZaR8sgiRGVfuZ6gDYpgawu55sIGjTX7LNG7KSNfeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Raf7RK1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Raf7RK1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761448793;
	bh=hpqW41oFz6BWdC9AQWinhEnjqJbpcCpulxiy5jEvihk=;
	h=To:Subject:From:Date:From;
	b=Raf7RK1ugF+HPografkAwjayHarO7Lkbxt1kUWAdWLwccbSZGEAxwRUkVkpGBCj34
	 vgzIGDP2SDfhBSXLKkH8euN7GSZaui0yL5fp8wP+rHog/hfCxm2LP2DJu1LuowY3XM
	 M+m94d9d0om5ptlVlayGcbNCIZLjfIps5NtV/E0eT1jz84kL4nh8X1FNhJdqQNaR2i
	 sPadQzDpjI2vMlnb/JCpVqgSNTRBsrDCfnnbKjUb9vlCkN0xnemlTiDI9KRaAwKtxG
	 IPIvzNZMBCvQu8539ukrd3D72uvYAcCt1dmsIZ7/s9b+SFexjWsxhtTb5gMv1diTen
	 ZW8J28VuQw76w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92257CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144879357.11383.2783286337504258927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7063f8e73830b2a5e677e2d8d38f7433c4202c6fc51ca681c0bbdedfa026432
Date: Sun, 26 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761448793
