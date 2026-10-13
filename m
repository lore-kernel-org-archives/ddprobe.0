Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3AF49C4B3
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791871834; cv=none; b=Zy9ATPJljl2OaiUR59RJt2z9X/xi81yJS+qp6bVlwVQSdz6g4Z9EqlAMsJmXXEUY71Iazi9yEwnrmJlOxHdKxlk95bgeLK5+DbmZkxPDVorHN5fUFrtT4lzKJ6RA7LsHsj6ccDydRQ7Qz+dnYhPbvrfpB9tgjZiZu8RKquU37dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791871834; c=relaxed/simple;
	bh=SLvGe5EC6edg0KixNhMtyrgGv/BDlzxPelV4URAKneY=;
	h=To:Subject:From:Message-Id:Date; b=kZWNHCUHWlQC3N/qnZOWdKlSgtUA3/N3CXshz13BYksvPueSegUkNFOHBVCd5T/doTQ/+G4qT3vqtOGuTw/5mzqTaLogvA2XzGW8Kg+eD+MQHGah08YvruHgnyNSjiIKVFgH9/MLp0n6XdsYNk0nM2ftnEAKRyplrnjvIYLmhLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxOhsMyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxOhsMyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E118EC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791871833;
	bh=SLvGe5EC6edg0KixNhMtyrgGv/BDlzxPelV4URAKneY=;
	h=To:Subject:From:Date:From;
	b=uxOhsMyAfztlQa8Kb5nIZxUCUNPbF92F/vjRR7tPy/p3dEZpXXu4cr3LFBytppMA3
	 Q7S+PNyt/XCthTbcmEbBY8Rc9EbR6lklHd2Pzah7hGYaXqekSDRreYLAXBpqt08x9m
	 Cjle3bn3kPlEGdBGsQhmI0YnbjyjmBITgY8VCaMoa0tYo/Cm+9Lcx6pEeoHD06kokl
	 7OeNWdqKYffZi/J9NhJ9HQhBhJIyAzjSRwnDJlarUcObxiS9/EilJEpfK+spdgOefP
	 QREBk+X8wymetIWmi4mHP0bioBZ+a9wh8teBk0FZ3c02UN42KLKDg0BUuBSozvp+ct
	 +GsIxi9JATP2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ACFCC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187183372.21052.8388358849071082484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1eba5809e337af3e47ec8bdfb4c5ea8b5b21d8563008f44623aba740c57e5cd
Date: Tue, 13 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791871833
