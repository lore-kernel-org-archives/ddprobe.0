Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BB9216602
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421954; cv=none; b=otiNSHmBWWB9mT+sftyMdoUK1KxeLwd4FbwhNZgWn0t27xxNGbfl1pRp4TjK380qiBFKvnFyU4anyN5zY+I3yCfgDS23JsWzMOnuRsRb3IlApoY2HtVpzzJVjO8nu4aYmepUKymn8IEbDiPwJNe9PxU8ySZWarkUQm/YhkpMiFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421954; c=relaxed/simple;
	bh=Ars8Pahocna3wYvhW95BDsnj0aENLX0rHFov9eC+fko=;
	h=To:Subject:From:Message-Id:Date; b=V524jCIb9RjtTcUKcWlD9F89YVe70ThAL4mGFWCdLOYUnSMZD3qzCa3P1auSetU4I7Tc75wjcNgM1w9dsnojKnCNnQg+HHMNf33lHxdg55QuYu2yDPHPRrPzWp0andDFd5n4w5qEIB1k5mmBRMPvDMippjDNaULu6kailpCTgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMElcuZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMElcuZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB3DC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736421953;
	bh=Ars8Pahocna3wYvhW95BDsnj0aENLX0rHFov9eC+fko=;
	h=To:Subject:From:Date:From;
	b=ZMElcuZqYMa930G05Q3EH/rGOftpWsqY+GUBmZjmuJbks0r6ymhjHkr7X/yMQC99J
	 Bi5YWo7/SB6KTfYC3EHoSQ4MNowe86Y5uiaJBYZ7HYiSsuJ+lYJ7+x2H/9ziYpYNkV
	 cuONsmVRyI/WKHqL2fec7CIyfjrVff1jscCQsIr2KhP5ppLLyhp5ica56Q/T3xM1P5
	 pxaLGWCaWBtDJALQlOeUeHHJOknwFnFLwsQ797kKdainc4XSgxnhSFueWYy/oJVlkr
	 zWAqOWrz26/9I1VeyoxVvP31sOPBvAkhAPM7wCPVkd680qCkmS/5AgTzxj5UIHcFjM
	 ifIsGJyyul+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D2FE77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642195360.21450.17674372555589271628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5526539bb641d88b8333f60a160a038d316592df4c96170b96145c5d8f245d
Date: Thu, 09 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736421953
