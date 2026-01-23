Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871181D0DEE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769126634; cv=none; b=LK+69xG7XpazEbwpTLZ7Qex+Sje9EefVFoMauu4IvGfg0vTXIlAnxF8+qKJ8uugoNFQeaHMw/wzTH8me85KqFrezcNNQRkaVBCZ0xiJiG8WxJ/QgllyicUEJHIiz2NI9ZK8ti6dvuNzakPuybGcwQ4npRYREUKwvxlS6Xxwyuf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769126634; c=relaxed/simple;
	bh=Ef+lD3ptY6yeKqQ7YypwBn9xhg/cGRUxLL1DAjQcNkc=;
	h=To:Subject:From:Message-Id:Date; b=Ij8DcY4bLBTGrnEYJeADsU5Zby8fRhIv3eG/Qhj1mw8cWj7fm97xqNIyfSezky/0A9mFGkUbEPYDuuFwhT4bLaTFTCGHLgeunZbJXcB8t8UBeiKFpojjH56N1S/TD+X9eu1kCPooRAa5C3q6dyIeoG1cnFUf8cecQ8vQmYiNbGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGjrhW4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGjrhW4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFE3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769126633;
	bh=Ef+lD3ptY6yeKqQ7YypwBn9xhg/cGRUxLL1DAjQcNkc=;
	h=To:Subject:From:Date:From;
	b=EGjrhW4ORip67eOGg9KZVCX+2qHglI78nCTUY3gR56TGYzSA5qH0e8j8XrswuPhSi
	 JtkqGeV+2CnpPCs63BfnrnskcLwZYSUIWuwsJwkyjhOrdohS14HN2KKG18bkUOGnzm
	 d86JOAaAq0nMmkT2YoH0AUfxLIUn97HmOACps7EeuwS1lVtngIgdl8oUCEKoxPv695
	 OCnPqvLOD7g1e1k2MruJWlcgwVElU+OyTsKPD0LmzNmmOK5iLC8D7IOuzWFRUAJp1h
	 1k5F232zeh/mcg3L53jK/sGzr6e/3AA3LhWijv+k+9C0/kUWtMg+11YrLuoOAw9fwW
	 H8nGYKMKgmH5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C83ED6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912663360.8376.10974248303805931574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e14c5a3fed99b80ceab384f6d950de80acf26aa8936a21d6c0d9f66b9fad0c
Date: Fri, 23 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769126633
