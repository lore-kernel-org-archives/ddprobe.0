Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320CE188713
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785063634; cv=none; b=q94YP/WJMGVG7YiXSjWH5I/y8gzV+RmBsOvDPPsR6a5VYpdFYEGtgrO4nd/7z72ZjlGKoXet3RwWXdkxuS9CbnE+c6727b6pSZtt8YZk6XlkuSZo/OWsefqptoUSKWRoH2I6lsK2BEu+Dnr/gxVZhIa+gxQPk+jUzQHgMTchuow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785063634; c=relaxed/simple;
	bh=p7+e1FraD2BKA4ZTwDiJrWKnNg0PPAgImQPmeEMLsqU=;
	h=To:Subject:From:Message-Id:Date; b=FbKx3yQyOd/GQ1zdYulTfm7e1ioCNRnA09tMvG4/And3ZRUB8qUJbyZy2+0KPBEtMUmuu6Sru3/2SLrgvXKHJf6XNAJY7rDd4l4JqAHANrEUgspsckbekPo2i14W3bMpGGfFM7eO60hp2amGh0fgMGss3tgEzx/D/1agXxy0P6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sl8eqzcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sl8eqzcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF3CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785063633;
	bh=p7+e1FraD2BKA4ZTwDiJrWKnNg0PPAgImQPmeEMLsqU=;
	h=To:Subject:From:Date:From;
	b=sl8eqzcl2j5vALPEsje9pRti6lz6v8I3zb9SRZ2lQjghANngfnm1qYbW7Vti0cvg1
	 OVvnxlQh/gCksePRXMMMX1W3XaHaeyh9jVYoFGRQ7RAd6dj19RoDhKTCiZBeVMtNQ0
	 Woicxkz7UTg7VdrnKpnw1Uur2NCXPnnQTlwbjIqLDupG10t8cEvWWgef7KHa3kGfU+
	 UgKVOlbYoByFF1EedinsAUwtiVNKTTA07xACCH3Ph0R6AyULeQmcWu6tJrgsQSijZH
	 ilCthNt4N3SmiN8WQSpOItlM3nevz7iV1bVpOR582HxU87OYa9FGu4RCxNv3tbWVpT
	 sp9Ue7ceL8uEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E6C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506363368.527.6763849107498246475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13e3f11bb9c6fd3c8fb4ed7709882d39c211060ddb6aa49644ae98d9a7bda78
Date: Sun, 26 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785063633
