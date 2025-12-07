Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5005A2D8792
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765120374; cv=none; b=ixlJ10bxDXOJAGtqBPlLbKAXPenZbGVcqZedGoLSRNEb3JnM0zOsljIFg+6Hrvxt01UTcyVB2AIm42Cq9MS91gMAiGwYpa+m/atH9m2FhxaX44UI+X2cAEueamk7908iTEe2s6s5CTAT7l7gK6h2/9+LFXow+hfzaciScaL3URk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765120374; c=relaxed/simple;
	bh=muhvNrM+E4Rl63/g1QNLWuHs9BXProSDO74E5raI4b0=;
	h=To:Subject:From:Message-Id:Date; b=D5vB4qzGNgCPvkb5SF8WULO9LSjJL7TUc56MY7LDOcnlV+XTNR7N8lXTWx3zKyR/JtEEwnYVglpKrIKh3j/cSgxtbmNHHSLoKMwXTEp/2fzefBrZNlvOgY8uvCR5ctgjEaQRzGWtkBipUTcZCnbDBbXMduKGyZuL5miTwu5LTog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeH/EG/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeH/EG/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9889C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765120373;
	bh=muhvNrM+E4Rl63/g1QNLWuHs9BXProSDO74E5raI4b0=;
	h=To:Subject:From:Date:From;
	b=OeH/EG/gyPcdrpiz5ElqBFqLgiKwru1rOMybVkTqKjsynB5kmV16QpUZ2S04kovEO
	 +Uq+xEATzps2pMbrd8/wHLyeCrnOXDxUrKRnqKZgJQ8KedC9xv00vGRoUPnpVAS1bs
	 7qUxNqiciyfbnh++eLZv9zKDviCaiiv+TQKmxXPfEHLWXyu9bxUFGUm19shAziHHsR
	 1VNvMnh24sj4JmI6JcisnFX11IigwSIiYFNGjtonVrltAIqpP/vSZ+EUpv9fblO25L
	 d0i6mTCRYGLB3/IBP++1miRhKkWDfwV3TABKa2Nhc03vqYHJgnn0qu7TO4f2uzWxR+
	 6SmKhqxOOqmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98806D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512037358.18041.15529170925381208001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3361bfc34b04334d57332034442bae7190eade0e3a3829076d5b6836205c8cb8
Date: Sun, 07 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765120373
