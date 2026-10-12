Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2833B4A3D3F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791828634; cv=none; b=SekXMQuJtfyvJULZ9yMXwa5a2bgWn/jTrSsa3iKmIXaESjd9JizD+3IIjmgZLF7w3+gFqxQOq9b06Gs+VbmiMhYEXiS5h5EZwJPTV388iF8IAfpuPa5j7T43sPqCDgn/zMyo9tZMBX2dRQ+gAQPhQlBZiSOO1UqjWCbk9HO1TqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791828634; c=relaxed/simple;
	bh=2gCmB87eYYqwtNV2SvpWYKhjQjqMUAVIe28o5K1m8YY=;
	h=To:Subject:From:Message-Id:Date; b=aS3YMFT6L6rWOGKbtq0AhSJp2CWu3Y5ato7MfPRkxRQnyrhufZZpWgSG+RaunohJOSAvToOK6umUA9Veklw6fQYHwaz3x0Lfr2EVBTxgrSUvuyHx8Ndrl6kGyGTlcmAt49pEXGu/70CAnC8TKNAzcgTUtzA1y8RHO4RwspCYKvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0+/TXVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0+/TXVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D756EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791828633;
	bh=2gCmB87eYYqwtNV2SvpWYKhjQjqMUAVIe28o5K1m8YY=;
	h=To:Subject:From:Date:From;
	b=u0+/TXVcrtzOWomz2vQrkioD8vPp2QrhQK5Mdfs3Cbbd/NbsUh0HIpciEAxpXYRoO
	 k42PjSnwegvVALUqIJVfIpQ2rpPmkR8y/sq7Cwi4vrYX6fh/a99I3Ge5zUTTkFMWLu
	 8qoPGZCKGf02z6/NYde9T/O9ChgKaTNPBU75VBKzi36g+/ChHIhU2yDkTyORpXxOct
	 dbKZu2a9ruTly2piFUpOZsAr0B2jzpWeIQ7vggu/62gMy8o00dmWlImTUP0tTtM6Zp
	 PUBvzqusLDolMNnHO4aUbo9wjVxzwIa0LKnheR5dBLAx6JcyzlKrzXX0zjIKGULXO2
	 LuSRRIWhlIO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE36CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182863369.6555.17429940059881048143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db3b13047c43635edecdb6ab4a9716b01fef11d2ea0111799df3bf9e1ded7b1
Date: Mon, 12 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791828633
