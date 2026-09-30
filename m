Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566C744F553
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790803234; cv=none; b=leHAjuEjZSnksuxbN1jYANsxYIJmLRHhfEpy0Gl/2g2LUDX1gCkBUiCuLy7I2kx8bufnxsXDk2n8TFo1rU4gmLsfp6WmTtTXfVVWFCUDpcXhBuJbh8q0gvsWAmXID/a1GfHYIKF62g2YTb8b55+UESZbNhj2arwSeXJ1iA/sNXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790803234; c=relaxed/simple;
	bh=s+pOOkqZjsz1HmgYYsiveV3OH4a1QI7mEp6cLERy8u8=;
	h=To:Subject:From:Message-Id:Date; b=BHoMehpceKJbHmBSSxowuBzJCXsZc2wKGtXpZf91gr9CuwPVA+uVlbN2GkOrk8hm6OFlNZH9eacvd+OUTXYeyrlMCkLbk4FysJpJFgZzxd9e7wVP0drzhfMe+oyA8urrvC5v/vq34EqyLKSSyWMuP5WY2NBeV9naaTX8SxIK07k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acZTapBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acZTapBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D575CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790803233;
	bh=s+pOOkqZjsz1HmgYYsiveV3OH4a1QI7mEp6cLERy8u8=;
	h=To:Subject:From:Date:From;
	b=acZTapBaUqtcSBueucntem063T4riL+4IvItkryOV+F/w9Z5QIJ6MqTz3C66MHgJA
	 JvpzlDgxlSZnTaobL+1+RbYj5qtEb8iQzcUF1l+sxjh2+xnWV+OhVrSYxb+fRGOt/K
	 6Z0XqRR3EtfcJ3WsQbD93O0BmjuznlQHCDdFmRKpIM/Mv7l5vhw2YJaUHa2w4ym1pH
	 qfu8w+Yv4iLV0sVt0cGIp9cBOgS+yV6UtNP3RM07XFbJNpJmTmSauxZgueaOBPApyY
	 ko67BIDABJmS6Vf+p5/P4pK45+Uxd7Gnz2fICrDH569H6/ODSfS+y+YakCXmVm4U6f
	 8RhMxSkPBze3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDECCA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080323369.10466.13449749190957203002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2ce4bb0401c72be271dfad3fb19c210663e4ba3006c22f4f717a38f76ef515
Date: Wed, 30 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790803233
