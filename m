Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5451D9A79
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742038134; cv=none; b=QEGOnTLYs7uDVgneGHdZaIQZds5m6hNs9cF5GxAKBqGvFRuyOPVLaHm77Hgz2pyiEQW4bvoOjeTQVHE9lssp3XWfTQ3zo0VFSddOWCb5W+MAQR8uJff37dwfe1NUuXA/+mBDKiP1aIxSdfQ2cglVGaIkcHH3/JkXzNymvQwk2C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742038134; c=relaxed/simple;
	bh=fbeAMwFwzrUOlR5dGPSnHSwZE2CjeiCjmXkRFqBBldE=;
	h=To:Subject:From:Message-Id:Date; b=NN0kpIJec4/tWHBdBlgv8GIPiClJ8yAUVBZrNdtzet4lB74gNYIcsMZrPDH+sUEKoRM/qgB3PjlYghMKOMjQjR15slvPZRXfzCK3e3DlMyj2yYdeK5VGGOJlQ1UVsuytlIkLiwGLQp7piyI+3w1FhAbrXSn44gPHld6xqLcrW7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpd1bssu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpd1bssu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FEEC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742038133;
	bh=fbeAMwFwzrUOlR5dGPSnHSwZE2CjeiCjmXkRFqBBldE=;
	h=To:Subject:From:Date:From;
	b=bpd1bssuUHLbVHj8HlEcYgYVcSFyRKjamsSsapnDgomi/oqxnyqS89ZDG4JsFuRkT
	 oyaDJpbjPfzII82jELI+DF1oB8CqQY3xcst6u652I8a6C96AEiJWu1K/QIPOp/7LT3
	 J1miYDQpr5PL6vmfwo2rOhiM4SjiYcHUR0RIBm8t+G2/2o6luvUy+U8xMgqbgbWOIC
	 t/ccGAGMV7cUDEL3HwCvUB7ZpbTv12NRRCzA4etpEI/G500Dc73c47FgGp92PAnVtl
	 UQEDc3GUNaKRahq/TzY3iOeopXJbplovGYi1gc58SwwwzbMG9v/v2+iveEemQN7m5i
	 4iZYqtouWEscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90956C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203813358.6720.6400755488535909402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1b1eecf4a0f72de01b152d51249bb4f9aa664f72e8b691d336e6c0e442fe8c
Date: Sat, 15 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742038133
