Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E94136308A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786518634; cv=none; b=KBt0rgGdChNylT81tsRq00TCgbjW7hy8a50ULfTl6Lv2okYMgkU9i6m4yfz1F1peEGb1k+ovtFJ95s9SanevBZ6dwedtGkCYh4TaGkw8qcF6ywBLjrRjW19YunSfTJL+Ad/8Jwgl/JKOJWOQ0qD7zJRV3AioRcZgOjh0YAjAHT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786518634; c=relaxed/simple;
	bh=Q4FtQzkWiUHtuzCB/R8gBofB/WyE4q57DELwxC7/qME=;
	h=To:Subject:From:Message-Id:Date; b=c/pnjORuN8NkSRfDuU7VoXYtoeOKdoNc+snapzRWBKRdYH8pn80exg/hjrinDilOKm+FdlDAmihPD54WR1SOEZPwOvZcdkkuXj4I1i4kgtvtggElMpwFplFtR4W5uFep1G5qTsNNCgCLT8BEq4EpwKb3KvdRYnAfRpEuurYXtUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adL9RXQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adL9RXQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00CAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786518633;
	bh=Q4FtQzkWiUHtuzCB/R8gBofB/WyE4q57DELwxC7/qME=;
	h=To:Subject:From:Date:From;
	b=adL9RXQPz7fWu79P2ypsKVTffFglLzs3A4MZDzJbutigIo3m59dJ26EkqVYAAzXYe
	 AKBbFrrtMLKenQCJEtd8+CfPkSOVK71dN7PDP72+7fUky/Cg410YuL3vZQk2sKRbTd
	 R/fRKuxRmntQiEGO41giFPuH+zaD7/dcnckTGyjWV/WoLGZuzcKZ13PzP9pzW9Jv4r
	 rol3SN/+XRN8uohjLoHWs7ByctY/7gJmOZ8TppGAloHmaUt3GCmH+ltzpWdjmSqg96
	 /hnGz0QuOrJAB5AbX+NaPqorLUr5eQlrzmILoCUtxDfpcEpjrUqjVKZlkgXSwyMZjl
	 I9cv9wB6G9y3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE6C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651863368.7857.9382052835475822154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9011265dcf94a425856ef2fbe4dcf2b5370959b2ea72501cabee78cf593d0a93
Date: Wed, 12 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786518633
