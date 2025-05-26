Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD11E5B7D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748299794; cv=none; b=ShC/4fezf+BKWlmyD1GkLqEKumHFaEPqYFkryIx0gH8r/3IhDBSQhCuw0gQzgVyXQH6lVLBsYbmitNj/LeDhxih0w/QTOFY4iXuD7MyUFiwvInKyo6NqixXTBxCbgmj9nsLUh/+4qWuzKDCxpxG1+582LrrVT1HeKtLqQ0tI0Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748299794; c=relaxed/simple;
	bh=GtOWS97gqckM5BgZ1sXM+ihThuUqLJKNSkS4ahWDil8=;
	h=To:Subject:From:Message-Id:Date; b=j5xcDIjRAC+6str/8HfvbB8RF1fpK8uPEAjrydPpfFq1sccarnEpskZvjzB8RCJ4vN9oaCsTtnwnyiqKLmVNnQKFVbskzrdAy9l9zei+ouLjM5oPU0IxINh6Dqfp9wRzybasuQev68gNXAih+wFtQuJlWpP2qnsYAvfiu/s33YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH2gZNXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH2gZNXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1118C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748299793;
	bh=GtOWS97gqckM5BgZ1sXM+ihThuUqLJKNSkS4ahWDil8=;
	h=To:Subject:From:Date:From;
	b=YH2gZNXuJAm3D4MLfWF37jCxOqKiA8QjC6p6Cvf6PxyJmUkGreBD7OBruhQ73pbdx
	 1CdktcCyZFZQ4qDdGCKtDSQcFF7QAa9Qpx1aPjtkMsgsiiqeGsvh5KdnzmvIjNOWAP
	 A57UeqFe4x7+S2VCWqy7O8h2tcgR72W+/3OVI2tQg2OLK1sQP+IF6CeYiZa324nlrZ
	 7FwAK2nC8goRmcEur+abIC/EMD5oZjm/1AI2Ve0BlbgHVw3QuVArgpAMAK3iOlh9VJ
	 PJq58PaCMJ1F1tWhOgxbZjpzP/WEZ/gldYXsSt89UdvsgY3LTVomb4Z6KqhmGamyby
	 UOWzt5KhKmAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E709C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829979357.16169.14306030627149639611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5d10fb4f546f4fc92c59adf484afb27a54bbd9df25d2381f46be0ffbd5b703
Date: Mon, 26 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748299793
