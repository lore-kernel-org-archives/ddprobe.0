Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C744847B
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734317754; cv=none; b=DuHDyFztWqwYHQ5nPC7fW3WT4VIn0jxeGaPsbGiYaH2iLc57SPp0H45h9zvkODzmla3yRmfXRS84bo//ScclB17X11ObL3ERrwFtbd+/Wl2PKtkVKmNUB4XFAmQiqWkR+tW0qnGtLPZa7vT+L3NmN2xMe21HsH6h/5aJNpb1UEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734317754; c=relaxed/simple;
	bh=sPxVQI+OhiA8IkOf3IWmdMJOqrxUpEaDeGDhGHxD8TE=;
	h=To:Subject:From:Message-Id:Date; b=K1I82ByEwMIkeruAKgiyF6k2ZL4AdG9T+wxWxNmpT4KHGZ4/rNAFbGUe6oam10dfLdrgT8vNmxs6d54TbKSUno5XTLp67LVx8E3xl5hS7c3KSo7lH1jRlLcq7vkane9AM3Q5dpD6B8G2JYLou3rNwxx66TGU4roDz73OGpoLm+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nekTWQQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nekTWQQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8170C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734317753;
	bh=sPxVQI+OhiA8IkOf3IWmdMJOqrxUpEaDeGDhGHxD8TE=;
	h=To:Subject:From:Date:From;
	b=nekTWQQv+1bFNFlohzDpfFB+Y0q62bpsBXrTxmEkx7db2/7WwXYNs7T4fojg05C85
	 obrOrkueww3Xkg+izxeMOaSv5JX5TVcl2MnTwvN50UvajQEoRseCeN/eEJdoBh5NAv
	 0JqOCt74B6Slgpe19mijvSyKtHRzU90DZoVQoD8LxwRcReEBGt3P9vFbBasEJa2UAy
	 AMHoVohDlWIUSNyGO//gWmD+s5NTuxp6Vv73NfGY1qDzJH6fVDU0fF9tRm7/ka7TTQ
	 EAPHT49BbQvVE7LkF7lESXrcZrgH0NjPJIcOMp/6O8VspaYHKuyJniaWRYihfejI99
	 K3oqB/F8DouYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D5FE7716A
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173431775361.6763.5819881465056128885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a23871444df0a228513bc285b9fa6f1230d1433aa2f30fb6a18922d2b4d0d76
Date: Mon, 16 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734317753
