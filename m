Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B1D20AF8D
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740246535; cv=none; b=ObjNDAVAJG+nxw2BhQUjeld+Q2X0V06cxfKOmi53hObKSotZG51KlMCgyiV4RcRnagU3YQ0dwqLet4/TtL+w3yNW1m6a/PFpwEBdfDoSRv3/Dy0isLoOJZhtOnC1VHhcxE23/EYfaIDbvn1IaXIWHnzGpNwGMmi4KHwWUhRxFHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740246535; c=relaxed/simple;
	bh=PuuZ3GOygMS89uZTI+P7LCaUbpAGI6oMbryoLhqW5Fg=;
	h=To:Subject:From:Message-Id:Date; b=GLmDI3QQxgni+npSZPb/pB8eEI4rSt2cbJYml++PdCptJ3kFWe2lvlj3bdHGO/EE2FEiPQpuLCDQFr7MysPolDnd4GIbtcWgTpZVBTXe6qQzVkGB9oRk3nk68a6rOrnJLEobGZ4iec8zf/66x9MNWl/pnCpEmOv2apLOSTlxl10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af9bx23X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af9bx23X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740246533;
	bh=PuuZ3GOygMS89uZTI+P7LCaUbpAGI6oMbryoLhqW5Fg=;
	h=To:Subject:From:Date:From;
	b=af9bx23Xq//o6IfotK8sFGuFG1ovKKEZLbEqUj3EKEekSMPi49+Rq7lqxOLqsAGJb
	 EWi7kbUrYpMjHo9dcPuB7ro5AUMswCiQjPnvnj2J6xhsnap5lJ7RAPU8UQxtRrOfSE
	 kcvhj3l5jRmUe/wtlc1vv7Jk2kHfIm3KwcHfE/zRNrD4nZSeAMWq6ZIJ8wfnVAy/8i
	 I8xtp/eKOpQJ7sSqL8fZRwvtTH+bG1Kc83M3Dexj2WEpydG5yng5iXG+8ydczV5Bhv
	 Ymh3eyK9fFA94Q+a8feGYi2Dy4iOmuH5+EFjBd51OSA1eKogMt7o+MbBulNNQTwvgZ
	 qvqp3XE6jlqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A59C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174024653358.26238.10089709944421996914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf8a91be39d5a26e947c600df377ec1a907e695210a6b1ada3524defff3ee8c
Date: Sat, 22 Feb 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740246533
