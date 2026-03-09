Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D07D4502A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773016494; cv=none; b=Fv3mZfA8pvh45moSSUeeDisiJBWufavSpJKMWZrIQ753GTWzNdr/aVF+YqItCgCGeIZI6Dlcii4Ppg9UHA1uJ2+/XmBNtx1DM5zlzpAK2rPDE6+RkvIy7rNWpwFgNuDFyTy7FgkNuDXBW28nMYEruDgkfteEhEDnhh4+g2WbwaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773016494; c=relaxed/simple;
	bh=68I67lpoBeTxxFvueG+j16potIqVemK/omi2pohMTQk=;
	h=To:Subject:From:Message-Id:Date; b=Jqv5NksafdnFKfprZYpjVy1CqqSv9hlSWnRnyXbnuoxDVDdH5lKd1xjKKkRbNy5iPcM8xDZpgKufAwEiK+hbg4fnX2Hpn2hsZ8xwmuQ2sfFCc0JP8Q5eMylEAWmz7tPY3xZfsPqSfBXva1QgFnqG0d8vKNcxxhqW+L3TWavREt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFg8NmJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFg8NmJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773016493;
	bh=68I67lpoBeTxxFvueG+j16potIqVemK/omi2pohMTQk=;
	h=To:Subject:From:Date:From;
	b=mFg8NmJngWlBDBTGjhtEiv7iRcARnQyuB+Lcp4z2VxfNVcQAan1vSRPdu+/GwASI/
	 VOc9jUCKbBgUloRwP2Cr0liPsXhoWdYnIdEQUAWZYzgDh03pwV31VBlobyqq+tBCij
	 UUeDVmuaKxd7LIEflQzR1BBwgMvJVUpiyNwfx4GQ2u90/qUNVOGe/qoeXqbWKxvA4A
	 EPTeZ7T/p+JQQI8XJ5rWlA1AXfg+kIIdoQotIFfxvU6DG7PWlZe31XnHh8jxsRDww0
	 RWQ+B+Q5SSnBj0tJHE++v8DP7z5paluXUf2SLL8BxZlzxLgSYApcuhX5FnZeCOi3su
	 adEwlBcMLq4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95167EA852F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301649357.22452.6188447777225059977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ac282c2a19c21172e6da7d2e816b06a26811c29cde63694d8b7d8aa304785c
Date: Mon, 09 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773016493
