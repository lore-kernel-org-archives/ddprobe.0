Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC38C2FB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756542594; cv=none; b=NS4kSqMdmDbeQqAYjgPWcJJhL6hvlB1bc3lRuQycsSAyY6LsbV2urHS41Kf4N2E4yfOcXKce3KwP5ZgG9cpw1hTci/Dtt8p18oCvldmI7s7r3HuacgsKgd68/M9oiCbEWpV/VYSuieZEQ71xml+e4ghJOjw3bu3LH4/9movv6ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756542594; c=relaxed/simple;
	bh=A2e/8t+vMzv70xCe4NAaibdA+8dILV8akUlAujW4Yy8=;
	h=To:Subject:From:Message-Id:Date; b=mptwocjWH0oZJ7PEJLd0X3omAvF5k3cYwrhZj8MwDjOhOPudfwTLP4+6IgjOpUH+ceV3fXljiuHW5WFgzBPl07KDyCAQu0LOjcBt8SLQOzF9B0yRBYtjf00lyhXNPA29ziK5uthvE7Y2zM70lQQGGUdNfIcZ+79PLj33m8E4nc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS9jpj+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS9jpj+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0925C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756542593;
	bh=A2e/8t+vMzv70xCe4NAaibdA+8dILV8akUlAujW4Yy8=;
	h=To:Subject:From:Date:From;
	b=GS9jpj+bGTbYy/0bwWYda/CvFLwfoc3SPVyUk2bWdSvtqAR7xUVMIjNobKuNae2KW
	 AXi6NTCxlex7f0fJTT40VnwrGkp7fVUYk7sB8MUG2k5YojX7FrA7FnnXlbFYENDMQU
	 s4ywfufUStKiwaa8Eal3s+GjKjUwiI3/YfI4oAaZKGG56N4GlTNJsuX3C9GzTcMjwT
	 BRqJ1mes3/L+bULz2iyyAehcG7drZeydnBizR+szbJaO1ZK5n/pm94kJHtgFU8dkLq
	 dyjW5KY7dvbEbGNSv07Dqqvp8ORSPUrUDvzrKEfEZOgxedRO6IvRZypOAfRXTZ3Jo9
	 TxaDAz+Uhw0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D9CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654259357.20819.8671693277085082444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0490b4cc8c2fbc17958f868781dfb0f53267d27dada87974e39a7a9b8252ff97
Date: Sat, 30 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756542593
