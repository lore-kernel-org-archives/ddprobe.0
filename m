Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA0A16E89C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720721243; cv=none; b=bBOubxia1adCyNQ5apZIuAcbyFgtQHZtjcoaws3gWdP7Z98zruYtgX91lNWYpzgLX46nfmAl9ElL2wFQxGJF8O3H04GEadx2IhcMIgGYOj+FH4pedOGGmTKiufRSFyap2wkx9vcNGVyX0ADkDI0d1gZ/HWbrkU+DgXMWdFwIso8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720721243; c=relaxed/simple;
	bh=vcft+V8xAHhqGQF7/p72N+bKjLwcaZoQxfUI6LsVrVA=;
	h=To:Subject:From:Message-Id:Date; b=QSHhdlSYvawfFh8gG4utlGQJ0qsWg2pfWSUpR+IOrPciBN1QUuo29W2tIm7HSkPFmjjlZJNp0EpbThd0hvngzCA1qdHxJGeD6iRyLAnkuhTNrgaavxwyAZnRq+2RdcWRmZqShkrsIz3fo3lnY1AydIDdToVJF7dTCXr5sKoYMsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zpt6fXR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zpt6fXR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA180C32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720721242;
	bh=vcft+V8xAHhqGQF7/p72N+bKjLwcaZoQxfUI6LsVrVA=;
	h=To:Subject:From:Date:From;
	b=Zpt6fXR/k6DpO3JLdLCYGImFoWOsF59bqeroO86y1bCye240baSfmSjsROQxlh1Oa
	 wZYn4mZ/Yd8aEkjKhyETs54P1+LWyfTWMJDPJXzLCh4OnsIPR/b624FgrEeZIThsZa
	 1wMR6vzhfZ4akcqe2hFMNPHrFX7KetW8cEraVqtAR4rr8s7/xeMJy/sjUbGQj887xi
	 Bqlz5OBVU5CsMIa05WRx6xN6sS3xNJGCQDwTKd2J772hGwbF+BELkjSu9FCbqeTi1n
	 qLRoOsrco5ld/Q3UOqzqGmA1BFSbA8Jb1GnBkyD+b4Swqq/WRS5zpoSbFgnuAbv343
	 toebqicAphgHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EC9C3DA4B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072124280.29258.4645530485350495116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d428b27b09c4bf677ac0c6d5b28f8e09e02cee5a24d37a5a25c0aaf4ff58e47
Date: Thu, 11 Jul 2024 18:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720721242
