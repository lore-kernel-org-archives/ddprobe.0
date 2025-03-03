Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE1F1EDA04
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740997135; cv=none; b=H6HTxkWzY7ri4u1AuBqjzyCMCfXnSa5z8x94hUHlyBSHHT9OjDClDdFqi6IEQRp7khjomaEUdn8f1kSmBdzJGM/YNghEFVPOcu4mLFjvRjt6iZLUEgUlCFootYNrJ/kCDTuhpZSbaF5N0Qi4Y1HNsFtgdh7QCqcXXVvlwpk8+sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740997135; c=relaxed/simple;
	bh=Rm+qN2FZqD3CdFmcTo3jhVD26f8M5Oe9S06aEdHOC/4=;
	h=To:Subject:From:Message-Id:Date; b=mNtRsnqPitp/b+VgGf4+QHFcjPjskoSP9sfwmYU96Ya0YbaWC17ZPTwI5ZlabctBLA7D8ohpI/DEV60/3qtKyURhSCgW1v0EFmYZUn9gxnbaWEJd+4sGvvbnTgtOSC5qlRne93B1vpat5LW7T6bd+ZdkX9zrn7ZFJcKI5xBwAk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F209+SVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F209+SVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D38C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740997133;
	bh=Rm+qN2FZqD3CdFmcTo3jhVD26f8M5Oe9S06aEdHOC/4=;
	h=To:Subject:From:Date:From;
	b=F209+SVUCGUBifPGt9+TsmtKE7W8JYYqksk9tbsiTuH4ru9a4rSdglu3zdNzFG1VC
	 +Cg4StHQ50M35Is16gRUy062wKTGBrCph4rNIPA4eazmG/iP/Qj1WsZt3aL7357j9A
	 O/sC+GTG1PVkGH5BwmY45/cK92V+ktkNcIZES/kBYin9HxwECJG8eKR9Zc6Uu7Guue
	 3UK8PpY+76kiGyexW160QqQ9N8QpMSeDXTHWRkZShFaeKlZWRC1qkwEGUDT/Lc9GA2
	 pRbVt53US49JT6YCm65YBlhu6pbaPd2u9vKq10NXqU6E4UTwGVV18KBbkvVgiG3pCa
	 kW1pD1CZ0rnIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D56FC282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099713363.9062.8882080778496476466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c193cf1a3e9bfe2ddd4865c22e6bf0811e63328d7bba69a6a168865ea50b35c
Date: Mon, 03 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740997133
