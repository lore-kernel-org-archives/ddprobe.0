Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAB1287506
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766964834; cv=none; b=QtrHaBWrC/U3ofcekd86ZIiTZ/d8laieE5z3OGlvkyIiltH+YQIYAIDDwR36Q66Ip9Zi8brv9u3qWS3hzq6MwMzDFDw4JiF5/3j6qMFZ8p3adVk685juQt0XgEaoI5RLEXat3W5fthxrIikOT5JnpVXX3tY7L6s3Pg+ZtQ93yq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766964834; c=relaxed/simple;
	bh=3QhisrUUHqw9DNS/ij2spoKB/o2CJ0IoRi4zvMtygjI=;
	h=To:Subject:From:Message-Id:Date; b=oIqe6KXVQFYH9HA0Vg7bnDOLDTZD0EQp0KwPXvLVgC0tAQ+S4JH/L/Mdv4NxXX9Uy58aHy/8uwWSVjDD78YNhAdTMQ3qDzZPOv5FC+PxljYA2towTrkQBaQsvlggvkmXFm/C7ZExDqgklqHoF5mRZ1Kcu/PohOMCH5RhXmet1do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abaFqzP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abaFqzP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1687C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766964833;
	bh=3QhisrUUHqw9DNS/ij2spoKB/o2CJ0IoRi4zvMtygjI=;
	h=To:Subject:From:Date:From;
	b=abaFqzP4EYHtRwz50ZOmMf9GXm6Q5HiJ+9WyIVslrC2wAl9Q5NOc51s532Ymxv6GM
	 +6m+PPZ31IXythPOPc9nL65B4EY/9GJGEmfpMwtWBP+tk1IaqHq6NZXLXEAF/F+w/y
	 GdVWzj4hWU59QKJU9x9gPQjf7AQn4zD6FldXqtvkeNNjzoRBZ6CBrFLoRoI/xNU7sS
	 k8bsvKhMmImN0QNVob3nT9unPEh8UW5MkEswQTe1bgwaA58SlJ/MQtrs1xjswFA1hh
	 7AFH+9ZY+BRGneiOIFftCgbq3ePLUzd+BftK/URuEu7HT3xGfRa2HOu6oPcFkmUl7p
	 RDuDi8wI6JzYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CCBE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696483359.11000.11809298434964108342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca405e0471f9463cd44ce9e618b735274213b5a07071dffa15300f3ea431d24
Date: Sun, 28 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766964833
