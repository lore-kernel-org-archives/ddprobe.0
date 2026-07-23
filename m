Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C093451C1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784788774; cv=none; b=YrBupuMStrhOv8zvvC3S3r7Golvh6Y7EFPUmF7cz1Uj2TxLq4LKhhuUwIC82B/MNJf/sgrPy1861SDkCfT1zCNj/yi0Sxt/xdIWLGnAyW61WMzEnXNLhuQLPQoycMwayCVHmQCJhuBC2/FaJW8oENTtwnRsca+MGLOwGhfw6N1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784788774; c=relaxed/simple;
	bh=O0dVTDVuhFdg641WSu4A2QG2aVpfKc1le5n4VNvHAIU=;
	h=To:Subject:From:Message-Id:Date; b=MWNpuTSEhMOa8qRaZSz5bCgt/wnwcYk40Stbm2CNAIKvvrgne6cafudPcazlAM52lynOmBsHI3HXoXxALitJWyK1RQjRxTCug5x4POgRi9qOnVJmDpfhfA5TDBWx6DQg+zQTMJWVAeAKMHQJNJz9vY2/DpqlZGT6G7bYw7kbNUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egRXnXXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egRXnXXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD68C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784788774;
	bh=O0dVTDVuhFdg641WSu4A2QG2aVpfKc1le5n4VNvHAIU=;
	h=To:Subject:From:Date:From;
	b=egRXnXXsLRYo4FHvk2kLDAS+d5+NGARVCFou7XfD4zXp1P8Vi5ywHELruA75VrJuS
	 6B2vg+DGEhUuoEiqRYsNZVAZx044MvPFZC0b17eexG3yx6iWaIxIfSnopKeqqnL8+A
	 7rJNieNViS0XS8aj3XiLqJzTan/6ZfiKw1/HtE+sqLH3dNulfP4ulbC4a5KpdyEHLn
	 AsS+YYuryfpaOP5vT4z9huF1r88LaYJ2JT/w49U8exT9mJFoT5nUglc6+JYtc9iKRw
	 p0pxbXhUinW7dpc2iW2z1V+NEtgneLSP1ThxyPUJIM4RUi9TaY3b42ngRxW8OuKw9E
	 SJ1h7n14csdPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B737AC4453E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478877373.29518.9934923426430472927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d6f7310950f26c20b680820c026d38079e56190e6acffe916c1dbfba5d503d
Date: Thu, 23 Jul 2026 06:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784788773
