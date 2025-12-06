Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ECF23D7C4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764996774; cv=none; b=O7BK83Ibr97M71O3p4/NsTCpDWhoWAcywwB4yDWIzSxKxcChmw6idmdhXdnesm3QN9t3bioDHyqn/mKUpcvcFqH2adlGmn4mxONa4rXeyu6Okpc5cJ5QTtuGhboRPHGDBOv1A+3V1YC7JydqrsxWaPO+ulFSyr6zpKjS5oARC8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764996774; c=relaxed/simple;
	bh=fe/ffv/INwpfs3uUZ1NHnzNeFM4gz67D0dEuDMsN/ek=;
	h=To:Subject:From:Message-Id:Date; b=VXJXqbe7w8XrXddG2llUiYe5t6CvangmKv3Eh+Rkt/3w4iIV7dD70JYfofhoN2lKsSN/lWGOFGw3OYWrV/bYbYQLSyadV9nyukNJDtJQ33OH2SK24lLipsgyGxF+4OXrurqi1rwAFe6yeIjwmsLCIzc3nLoMvAnr7pEBDZnzJOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJEenWhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJEenWhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D31C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764996773;
	bh=fe/ffv/INwpfs3uUZ1NHnzNeFM4gz67D0dEuDMsN/ek=;
	h=To:Subject:From:Date:From;
	b=dJEenWhn7cDqQrDKTdnMKQx0CVPgtEjhcWba1qmea1jW49KFiJqUO1ZuC9Ez4cnxG
	 09iQRt7fyK2e+AaynpYglW6NJ39YRbTDKXiNc6Caf7YFBObcbIfozTuGgnRN2yqm3l
	 IhVzhBcmYixLSHDIGa30pfhm5zeF8v1c200ceHn6janALyg6ySc9aTtbkz8CeZQF9Q
	 NOO1ipgBxiVwck4sdwBVmo3FPLNOC3Al5I+E3fMs1tIX213QW7zUo7OrxIq1LFh4Yv
	 LaZZ5Fsz8eDMHXC4PsKn2mfe/LqSXNyZvwngcaduRFoRaagKlRkr8UXhreCsh67hMG
	 RZtrVZ5w8T0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F5D12692
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499677358.2435.8096723591410241806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998dc358b3399f636524338acb9658d51d89eb6b7c45d1bdc7cbe6b05b6224a9
Date: Sat, 06 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764996773
