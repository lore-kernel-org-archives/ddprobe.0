Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDB5322A
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 05:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740461334; cv=none; b=iKewZIXW+UaHWKR9jpUm/uvhNd2ADN8kjII975yhQ9aVw/lqc/1jsMYAP9LR5Yum47cVX8MbGk6akV/tUV2wVi7cAYUf3xHcq/GkapG7oXV9+WWrLRSL1OGTIVotIvXa7S5SpcDvfVZMwGYnzvtasWszsqrWQ4flLxOzf7/mAh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740461334; c=relaxed/simple;
	bh=kAAQWRyK1TIPGEgWaVTxPYlLs29Z4pGj09z4yzA/BrE=;
	h=To:Subject:From:Message-Id:Date; b=GQlzyMj7kYFjrmrncQpLoykYgQS3DaYc9Bn9RNQP2hN9r8ZqAeAAB/6sdVVF4Jq9BRFFf5rOuMcrcG2zoC6mg37lBfhue2JoPEN+mCtTRqG60TdD14UvTrJbNVEoRhu2u//PuxtlhSd5fSp14WEj/+9ikirT0AOL8QmhHspwyXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC2e54I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC2e54I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08621C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 05:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740461334;
	bh=kAAQWRyK1TIPGEgWaVTxPYlLs29Z4pGj09z4yzA/BrE=;
	h=To:Subject:From:Date:From;
	b=NC2e54I+gatioDbDZv/pJXkIvdQKT5gpfyUBoqyJeSoxGWB8djtVhEYvjrjtdtSbf
	 VZ7AYQUL06lGl6e/wQZU2J2cwaccrBU2fiyyUz9z7oSVnj32OnZ8xU5IkHBasu8lnC
	 jUjw3eO3sau0BH+XWFnpIE0CbyilsXPxwuQIBuvQtT00ptotMYC6hfcF5MArFUpDIk
	 OrqVWKnxARZkzIJsqy0oUXsG135MkPPw8EX/+LpxB6EG02Mn2N5nRFaKxRc2tq3ap/
	 CpcS95oZTzk2R1H4UlyfyjtY3GqLAbakLIlS1EfeJaHNpQx282egCZhokE2czCXouL
	 qNV1EsntbIr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E39A0C021B8
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174046133392.11399.15774930404640711574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41235af06402c806eee423f8804fb07593fa3724867c35e667898ccb204c5eda
Date: Tue, 25 Feb 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740461333
