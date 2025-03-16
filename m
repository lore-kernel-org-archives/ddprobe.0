Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D954A06
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742101194; cv=none; b=SEbV0ALnbdmo5RChLKpJedhWPpdtck9WcqsX21HGmNMWZUjIYcIb2S+4ZOTiw53KeiQUIfSIG5W3RX3V7OajvPkou+BzNzP5ZF4rZgjiCFl/wJ74Q0DanAdxH5E9fSmlqEi9nE6CobUWdtYb/fNr7zrIp1W2av+gMXjXU+FEeMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742101194; c=relaxed/simple;
	bh=P30na7+AahjePDarTS7XEkQRzRV7jHDHXXf8XUNHAA8=;
	h=To:Subject:From:Message-Id:Date; b=FtBFxqWg/s2ffViVgANTQ1PcNy5TCwyGtY3TfyD/b2TBBeMsZ3CQUGIWQd4/83XfFoMH37JEqWxVWikRc2HKH73X2NNXAvE7b9xP2VsbES8MXMRi2lDg9mSPl1X1WY2ogdl28QJGZT/dEeKUGe/V3EsJRAxzOP3TzUS/IpTqjGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQI2uPpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQI2uPpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13E2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742101193;
	bh=P30na7+AahjePDarTS7XEkQRzRV7jHDHXXf8XUNHAA8=;
	h=To:Subject:From:Date:From;
	b=oQI2uPpUFOFytCk3/Hss6XQ5b+sBymG9A2yo+wsQgN/XFlu4zGRTL+842if17IDOp
	 YRy3eKbTLzKJmtqY0Q2rd3/Tmi4hJZ5HxYlftyWWdiZXpGiYagtGap0Ybz9GwMQZu9
	 bOcanz2+Zj26Gvgvw5jb5QkaaQGHckmkugUUFkeDbn/y6oFVvy/SbXF+adHWBedOUm
	 B9An4KaNzLQK1Iggghj//hdpZh949ydP0ZHymPEProjj84pTBizCT+D2mWXLJXwh+B
	 TrgNnCp9r6eXwKp/wVizYG9UtxG4Ph4ExKgWUMsZuVWd7+5cPO0cNODGdISL02F24a
	 miJ8LIOmGrp0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9FBC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174210119359.27109.6174316142226238963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d9fba72f4f276cfaa2ff26368f23438d45a9c21b702b9796c25f89ecc8a599
Date: Sun, 16 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742101193
