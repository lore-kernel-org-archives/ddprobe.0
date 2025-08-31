Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECAF24468C
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756634394; cv=none; b=mMfNtsar7DQ+lnQDGe0Ka4TMIwzbjohP5/AJ0mK+eZLeQ+ZNZbW45JxsBMUXhVxv0IWTOpufZZbV9uykz0T45k5RhcE+80uN2c/W8NAh3bR31Ip8CpHdMPnNOfqdNNFzNrugLpAs2Eywas9/AnwGkrrvMAjywhlO89NnhIwEZYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756634394; c=relaxed/simple;
	bh=YYNNkOhi2uNEXrQllNwp5Avw0+QaJYY23WoS6Yhij/c=;
	h=To:Subject:From:Message-Id:Date; b=OfFSBWinDNUcmmrsAD04ngvNt7CFuUgiUyuvPtWi9yGExfW5vX9CTp0uqny6TAv0CUkLl/JgjBEjCqAnlGpKkSAWQKqWAvGTnlg7HZUdENw5eQ87FOg71A96OsS1PDzkEaVvon59Xg9w2Lcym92w6iLxhbrmfWN3esycVseJu/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOEU6eOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOEU6eOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2525C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756634393;
	bh=YYNNkOhi2uNEXrQllNwp5Avw0+QaJYY23WoS6Yhij/c=;
	h=To:Subject:From:Date:From;
	b=ZOEU6eOjAl4Yuot8WId1NGO6TNmBPk2V68RJRjaNMN4mZmEtT8BespQSRNVyvYBxg
	 dHNAB+z+gqPhYCRP5Ta4gte2p44RvbkOr6QqCBK6Ekenjlv4FT/3BvmNihIuafX8PB
	 yH/GlcO3unYxDOos/fe9VHEKVUAVEfUh2/8r8cR4T9dbeGOq0nPORfhUpVIardxMSw
	 waADH+t4PcXE1RWGFA68feEjW7aIDfbl5k5OorngaVG5CWnM768Cbn/132myKWR2u3
	 4HbXK0S2wfqPEFtlDM886NbKJUdjRN3yUBMHPWqj4rr0SBdADmQMLKhB1WXn14wROy
	 iAM7408MF3Zyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DAACA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663439357.23654.2430256981377923410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2f8daee8121a2a8430773c3f5e07d416dd72434ccdb4f4541702865bcb117a
Date: Sun, 31 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756634393
