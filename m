Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA38249E8
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707068297; cv=none; b=CoetiPHhgkIs/1mI9L9Q3y4k8CA1Gd6JZPAO13Dp0l4V2Mma5cAUuu80GphCj8cBeD42JBYLJ2bv1mJ7vhg3f2UCPfcOcJxcWkp/sArCOS0tpgc1QsTjcluTzgpvA/TR4oRPHXOHDpGrE3oLPWDkdCQmuj1Rbseqp8tas96R6XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707068297; c=relaxed/simple;
	bh=SE6d4TbskzkLF7QpXL/i/LkdiBGBbkFWxMeeTcunzyA=;
	h=To:Subject:From:Message-Id:Date; b=HZP5i3jnULvQ0nqysyPJRuT5JvgK6OnBQREVNl9b4CZzBrhjjq6bKd9L/rgZ61nDugTPYm/pETPONWoWFFFvgWe6VyfpkcmtBuhc5uxwqjjv86YTusRLSAjZPb+nI6JwdADkijW3dCTrs91WvHA7K0tN5qoxX3ZY9Y6kQly6Fj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6S0zL4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6S0zL4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D56C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707068296;
	bh=SE6d4TbskzkLF7QpXL/i/LkdiBGBbkFWxMeeTcunzyA=;
	h=To:Subject:From:Date:From;
	b=C6S0zL4KZvOvDvy/UPECID3WRezfG7InSGGuzWePgjZi2PDszjv66+oe2y0Zpuhmt
	 aLeOiti9Qf3vYn7qhTt8bMGHHjDzmNGnrZ1CF7jw15zkaSHKFZQoaALnIld4tdDyEv
	 uv98fQj5xENzCkW48GTZfW/qlU6d3EQODO046mfKzJ6K5GOwC6cN8ZrRH82CkJ1yi4
	 zpCML6VwwpAqkNENhjx9VlbxrI6hSFSYrRsw9PMrVT8wUeX8MDzKjAaYVvWOMFTrkQ
	 yEIVfvfWqxNxbdNMVE+WXb0+dqGEjq7puXFt6KCIF34AJKHqP648wkO46B1xmd8cBc
	 iVbIHhzmU/cyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7A0C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170706829640.18697.15829501197443180353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0014f0036995522d93cf89691dd9a1b86e1e63e470dcc9611ac432de53dfe463
Date: Sun, 04 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707068296
