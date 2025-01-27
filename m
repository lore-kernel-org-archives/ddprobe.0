Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C968158536
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737966355; cv=none; b=ZMOhBX+OlzqF5Pa2m6Z1m5wQgJgTK5985vF15RiFvdpGyqaF6ruMmW1IvTq9OW0hVC6vkU/248BA3v+n9CvFm3209YRd8Dcz+j4dORHZm6rh3R6cL2ccnAthMuhv3d84rsLk5j4CC233Kk5FOa7cK5u/8EPQEl2q0gy7r+bT5CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737966355; c=relaxed/simple;
	bh=CQLpfzmDfC6qq6yDXZWupfv8lX5VpDdPs59NPaI8hW4=;
	h=To:Subject:From:Message-Id:Date; b=qytwcEyYPuS+1aH8hjoP3KIcmvkc/9s/LR0N+os/uHL1MH0Mn9R65akSiC6hY+hi0wOQs7up+ytMSfVDLERiZasGrbGW/VNyeZ9axu1fV9DfbbR2KfshbDYbGnFK7lMFs/HzEiIZynOaxfKZgFExNdwqmEnQfJcQjx7DhB5OfIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1y04Xdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1y04Xdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7276C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737966353;
	bh=CQLpfzmDfC6qq6yDXZWupfv8lX5VpDdPs59NPaI8hW4=;
	h=To:Subject:From:Date:From;
	b=t1y04Xdc5s4RHPApR67AclWVSXAFNIgbwWy69puMSAOk77ftNUcY6AyyR3QbwUidO
	 TA81egv2q84jTGnF2hheMdoM+vo0U6RARkp3bLb/TpZ0oGUUrAbW3TtI/yMTuq3xht
	 3doF2Xn5Du/P/c2lOq+xeE37IDxnKDU0XomMHkrq7uryO5lVgjwiNAGgOFaV7PGpKo
	 r3PEARk2Chr/tJLpQMDgOg3NEpBfQhBWRMMTtzqYtfw2Vc7Zpcs2AYzKzEMSUHPrK/
	 f0izKS12vSE/oFqqESKrI961meu/BFEPcm4iPHn9H2+Wi3DzHUYX94T8PTB5YefD5k
	 GKG3AfsHKrd+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95188C0218F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796635360.22536.18091358427408025493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05da0b420e0bf4d246ff75816b55b7ec951ce6300c85db1a82d25322b414ec0
Date: Mon, 27 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737966353
