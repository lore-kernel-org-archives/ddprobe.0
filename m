Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F64429A1
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748219994; cv=none; b=QZzFNsYAfPbRpHKlMzOyv1UqfekaAkFIorwXMFuR37Y13Xx/YiHGKKP/ERyw0jTwHM6FN9epnvFptqXnf5qyh8jFxkdliVUdzwMk2t/N2LNhq8qTXsrnxZziGdSaVndg0xrqtQEK1NZun32feFyU98qKMkilVEr2crJSosri6J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748219994; c=relaxed/simple;
	bh=NGhYJQPVbYsmBJ/OQWofZ/nNAJw8CySkxBg8SKrkcPM=;
	h=To:Subject:From:Message-Id:Date; b=O/P4jStzDx3pY6Isr75Wh/xD1zseSWZrk6g7P4oit6nbJrqP3rl12KgPlhKi9Uc1zhZTF2aBEjRqUrrWztO57Pa80BgPSCRawfoWVrfdnvYEiTbKlsrEQ4ZczzahdXARONtFZ3LC1ZZV/WowoEoscBKTtRaLXaVyH5FK3eWhTPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl2OMjFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl2OMjFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2771C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748219993;
	bh=NGhYJQPVbYsmBJ/OQWofZ/nNAJw8CySkxBg8SKrkcPM=;
	h=To:Subject:From:Date:From;
	b=cl2OMjFbN+zP+xFu25CgjB0iw8KC1qXlxF6rv8qmptOWb2QLe2bT7P0SH14JCqJcZ
	 MY30n17h7XBXgkBLpNomXDtscH8eHqOAq4zaSSRjbQoVDBDgwBnCKuGRVkeUw46YyE
	 W7+B669gaNLRene6Sq1TS5XyK8ZVZu9uFuinFQBJY1/bmn1ykinA4u/lA82C1D7lix
	 Qdbw2cf/bYlIbi4LN17hl6KycjsYZ7/rtT8Bu6nh1fo9gdGxciuss81HFJHcol8vgY
	 hL7N4+WIQUNKZy07EdSaN8/8y50BeNLdZRKIndVY4YJPdEHhtfkInqHTcUlrHgogaF
	 2v5eFokeEKrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90CC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821999358.23267.13600761290714043219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093af200e1094dbc1bf8b9993c28fedddfd058bbb2464c1b706203e7a0200d4e
Date: Mon, 26 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748219993
