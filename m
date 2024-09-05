Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFDF1957FC
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725530154; cv=none; b=eEyyqkruZAxazZx9umV578q5JioxxSvgCwC1qHu7TKiwRjn5eFTfSUqKYB76j66TzPsZnSY0DGl/zHXZGm9Z5Q9fsluTD6ui3dpQzDZRH+6roIbgCcrTtOlfZQfMoOhtNufz/RvrtySX2zThDtFXT8ANmrZk1z0q0ibWoBIYh4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725530154; c=relaxed/simple;
	bh=8Whf1/kbcU/gPJLt891NvCt4DrTcT8KbukyGGjZ0tz8=;
	h=To:Subject:From:Message-Id:Date; b=IIPWqfxdevvnehz/bIj34FrIlULKQxmCxeR66kJSPLbQKDityt/8B7dRPgsGlD5TC52vjSUgiCKNhDevohsYrghVb1TvAG2qo+v/PZ9mxrVqO9+lCqbbjEnSRmeE1Pj6adrMkK62IkN8oVnRBfNQ73mKPZGUI+31o9jovTRhpWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DT/th8Gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DT/th8Gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776FC4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725530153;
	bh=8Whf1/kbcU/gPJLt891NvCt4DrTcT8KbukyGGjZ0tz8=;
	h=To:Subject:From:Date:From;
	b=DT/th8GnuiNstlRMjdRGXKXk+gNpNQLxBV9sydIgzh40k/QMHs0m0O9xKUN95TAel
	 +qumjnPWtuEG54Svjy8+XBTmmskvlh2ToJ2xQ5y2TR6BwEs/4f5w3qDjz3NJyUrbH+
	 OKfLbhUJUxOQC5KSTtt1G3pwB1uemBwUpNEi2abkMimEHox6LpCepn24dlKhOuYtxW
	 j3USoHpG/qOdKaTz2NpAbpXLWvxHIaQmVze4Ep53CJvtBrpvCI5pyLf+x2pscEDzz2
	 BVPJGAqNaxgsrqCCH/3339fMCXIqLJDa2WztD+eBuUJDP51q3+uZwK8cFwePusY+wV
	 kR5Ye8orE+VCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9705ACD5BA3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172553015360.2632.12455614189577651516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931090825684929484f15ac5ef166dfc9b73526d642aac6d14ac635df30f4148
Date: Thu, 05 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725530153
