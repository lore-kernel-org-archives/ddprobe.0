Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215E381AE5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778520634; cv=none; b=Qyz/UrWRiTsb/QjJY1gOSnbATFDvHz4oxK+pPKq3PXijygjK21fK/9K3pxb3E7rKZQ6xnwua3Y04PlNjLj3R3eZLZK4O2c1HVREX9uZna0dzh5EkJGKawiXpZXoQYlIVJSaREdeHSXOCooGtcQDPkVC0HB6yI4U5a/MRPk4V3is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778520634; c=relaxed/simple;
	bh=uw2foGbmlobqdKIw5k9YcyNQyZ9YYn5pc5Z25YrJyzQ=;
	h=To:Subject:From:Message-Id:Date; b=BKO46yUHHu1jOhdZhX8DEQAcamNCZxkP0YmuGZ7WzpoB34JaEeuRDfzh6wK8lxGjhgYl9ZH9MHGgGHqfY3im5cHexi3jlGcCgpTq8fpj7EEejEKFYY5uyHUpvW1MWN0WRMGPZ8JTZNOB33dVpDvFhqFVDJr+INb8b9ciYt3JJ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJKGSKM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJKGSKM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82FFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778520633;
	bh=uw2foGbmlobqdKIw5k9YcyNQyZ9YYn5pc5Z25YrJyzQ=;
	h=To:Subject:From:Date:From;
	b=WJKGSKM29hwemyqE8NZ5+IWKFgNV/U3Lp/5WFtYGAB57ZsXgy7LXErCW49dPAq2qa
	 2aDhvAAjbR9c3ct2gdCXry/D480GBvsLPLKusLzDTkaKCl0lSwU7uZ+1GRHH4jHrWF
	 WQ10KMaPpujFtm9DA7MPAqG2X8dho2p5lnMfiy83/DM3sbDcvFLJx+jpMy49S3uQSC
	 Z3ubdN3gBcB67MQst+ZxclhwORaSBuTcU67ZRepQ1/fW9DOc4tuZ7OygFDV0ousgyX
	 SH74NOav2ThmDggKLhyGq7vJqyLr+tk36Zqcbtt7kmhm2HafAel2Uq3PQEcVUtM75o
	 f/Q/F9S7ybN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE80CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852063369.31079.9945436329347415673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77519342af8b5a00db77cb030111ad87f87e8a7a7ecf0737b8e97ed411abc942
Date: Mon, 11 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778520633
