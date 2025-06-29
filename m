Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C6E8F54
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751165394; cv=none; b=IcuDmgNkfCvNlqQpWqfH6Q5vU/sKCra7OI/PZOuGF/Id5hwBaIpD8RCepAC4bav13cApPdP9Pn2OpxF5GXUhv9fy+1K5Fi/YyeuKwTTObMgcSa7w9buWebXGk+D0ZvTsxnbB4QSwVWIFA16ewrgJnrShU0GdJK4RgAMLuVXqyK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751165394; c=relaxed/simple;
	bh=t1VOcoG7KgG2vmqRlffQSvg5PNEY+dTRaB37NrMw+04=;
	h=To:Subject:From:Message-Id:Date; b=bj6gGW1XpT6VpgBo2/HGHH9U0x4XjyRPwpiZX6oliy7bH8vQmq/VuioV33RikbWzqjCwHmVtoME2O/+qZgKr/FZaNSEcLnWf7aqkNusqQE/yTVJMHbizlfPOfwIEvUQU2mciEJNtrbAs6KaqMbGcv27dR3a+Lb9GcEbg8/pVdwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DItptiB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DItptiB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6591C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751165393;
	bh=t1VOcoG7KgG2vmqRlffQSvg5PNEY+dTRaB37NrMw+04=;
	h=To:Subject:From:Date:From;
	b=DItptiB62Lct4npx54f9rfdmK1T7U7DaoY3d2Jjx1SMomrTN8AFwkuh/smH/fljPs
	 spx9NBOwhU24zzWIrp2xp2Vp7evp0LnmIgzBOJ015NO5R5H3tUBL+rlRLV45478EWG
	 ycjlv59xu3GACELzJ9MXdFU4a4EH9KVGmXrrQHvcW/4wLG/JmqngJ2Ezob9eOHEFKP
	 3hjtpxS6RP094oSHEEZPLgSSFzrt4c5GbxMF9jFFLoiOc/aengyRfx9fFq3HZ6Of8z
	 uv3ZoilXQ174wRr9NZ82s2jf0hbxQf4Br7OK5YZ2ptF3VcfTCLB9Tynzb8k79KwUl2
	 t62ZfXLiL4bzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91184C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116539357.2365.7934880181215234731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3f3ebcff0f62df21ed84d89023e6dca181848efc19969c9ab83f52572d0efe
Date: Sun, 29 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751165393
