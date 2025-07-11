Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76DC239E8A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752221993; cv=none; b=dC7U6htYMMYfsZN0loQdrVjvPbf8X8L4+ga3E6Sgh6w2P41EQ28Tyj/FDeLRZoQBXFkMN/1r/Ct/SF/Qh/aZDdMAfkPOoo5ngQpoTqT7L1gL48piCXgFBzx6gbAthMO/ML843vb8dSs379qNbn2qPa4jqz70snnP5Fbxly3zLQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752221993; c=relaxed/simple;
	bh=vwEG3FH0AUW6Et87TM5kRbFZUNXvShGCx5RTal/A29c=;
	h=To:Subject:From:Message-Id:Date; b=B3k5wDwTa+WVJiqinglQ/25CeddaHyWivE5MY19JDe9TJD3nJiTk6eOrd/JLhGENWqMxcjQ/zIju3LMnTKJ0PBbSHScBS4yR0S5z5BIYZBqnR4PFumH7fLWNMuT5/hRIHHhg9lv/quWVn14YuaDu+45iT3rUtvVpILUi0eiUaIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftR1k7T7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftR1k7T7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8AAC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752221993;
	bh=vwEG3FH0AUW6Et87TM5kRbFZUNXvShGCx5RTal/A29c=;
	h=To:Subject:From:Date:From;
	b=ftR1k7T7s+Yo0T8bkzFDiKKth76pLqHqYRypc03+Nfd+xqnUjFgBnRJcuELXeEN0j
	 iMxkOPVgM9/w3dkGWZkvmifqHPYSdA4Lz+AVGcLwDILdANbzBLkkCP1rcQErKJ3zrX
	 sqWNR7JNKqP1ogGMM7VC+HI4LDXoXbSxeLwE1oWFsqVQlJ8d+yZrNfn6VQ3fv8HV3w
	 4A5SyM8HUWw9J3ggzJDV9Tl0fkEsOGG6+FruxIC7H2XpXw88fFo9hLxUo37aGeBz4d
	 tasjGJR6OFnn7Tlk22uckzr3NH6p/sPin0srxmRSD8ARV4EJsW+WusNWEqgy5+24Rh
	 tMHk9vlkcTpyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDBC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222199357.3112.10078138894100178216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30c83b9cb2ea2a503fcd3c89884bcb51002066323274780a0d852c2cd1eed81
Date: Fri, 11 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752221993
