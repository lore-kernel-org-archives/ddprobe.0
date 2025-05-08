Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A53215F5D
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715193; cv=none; b=QbF3p+vMI1wgZy+SG+X9BfAxDD//VAs5RRn3/dYfLcByxBWslKdqprkd91Yd29dVGgWwUKb/EPcuxsop02upBY4tHQGawKD0gO2WqtfNEUV5dEwZ418mtJqQQgFeMEW1cTM08U9cPcyzwaPgVffMBa6ZpfYl7h/f5fFTV7c7Dd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715193; c=relaxed/simple;
	bh=1Utxt++zK7RwNsQXLWAJZi5QOxi3oPk7dR5fm1asU1g=;
	h=To:Subject:From:Message-Id:Date; b=W8mZgyhpOjG48X6QA2lzNpoJpC7gx/W5PR6P+9xxp2+6Me8r6Y3zVnomFQ0oHBRQ3AmMb/kbSP7/0G8lQLdhNQWxTgc4vUtoJLAFPHbRP/om8BvML89PFqIryaVskl2qqVEGr/+ZCUxbgLhb3WgCZ0wyEMmVcy7zK+1doi7ivRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbjwIJLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbjwIJLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE10C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746715193;
	bh=1Utxt++zK7RwNsQXLWAJZi5QOxi3oPk7dR5fm1asU1g=;
	h=To:Subject:From:Date:From;
	b=pbjwIJLLRAalZkZOziZx46d8zHsTVO4lgW3OuR865OAGLJ05q8ei/r0bfBdnCrcmK
	 Ug6oh6UCXn0B3ppyh57kLqfFYmEIU8SKaBWcTLDpoPeLNSaaR+f4pg1TC/LZJeXCER
	 LTSvH8SAdvDrP5YZ4Qvy5MUnFueh8fuNdMwEOectZrKVjP+fC45NeUeNWahwd3zt7O
	 Zqd9TsjlDUyl4HZLYzVYBT359uD35xdHSJBDUjTcCIJ7gwgLg1T2N5uQWV4OOrTUvO
	 63ZixOZEwVle/Y0riUsjen1284rALQIEHB4Bi4IuMpHayWTLBNPkmG8r3tWIB5u8Ra
	 +KrjXFU+TiYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBFC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671519358.7014.1055824986723308907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d7e5eaa3c43dbed12108d4825402ca0c4234c3e2cac1a4f3654c2774814531
Date: Thu, 08 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746715193
