Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A8C340A59
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779060634; cv=none; b=ZrPqQvAglT2DOdfFd2LIB3IW1R0mIDAHBQld665pm6lQiVytDgbZfxeskpYPQOh9oVDNKba8m0COI6mhGcfC61Avl5Eo+Tduul7FSlm309kPP/A5yI8aykxvumrgd///oMn0DKgUXV9hHgsZQzX+xSjAUJP3T5l8IG12JSNlMHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779060634; c=relaxed/simple;
	bh=m8/p7oIrmnTWZqAcKrWQepZm96ZpjCUZ9i3uGwh8mjE=;
	h=To:Subject:From:Message-Id:Date; b=sU9BUQklr6ReB6jOpEmgedDlthPYR/hxoW+JrvoC3PE8mAOdkE5j8IknO177BNp7U5b6/CDHjx+XYaG2xi7TgH/SLnIc6SrdEPQHBqp0Uo6nbQrOONWUYDTcuFY3vYKXSje6TaUt9rkqdYygMxrNZLf2Hh0qCivlOK5flwP2DVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYXXz37C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYXXz37C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C99C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779060633;
	bh=m8/p7oIrmnTWZqAcKrWQepZm96ZpjCUZ9i3uGwh8mjE=;
	h=To:Subject:From:Date:From;
	b=VYXXz37C/r7W17S7a1WTm9evwLhq42JnDkR80UASNFzlxgGh2RSj0BOC2Mphkd9+g
	 I916x76/Wo3ilxJQBKGFHV41oivwjpxdNkI/jlKlx15Qu+7ZILWi0ABg2u4DU3AXXQ
	 SkzWP/SP4OaEnWyWQ11mqD6bM36dvJn2AJ+EZt+n7TgQhkLem+CKmUDIBmcw1JL/aM
	 CuYd9SOA1iYurAHtexbUtmBJDVUI8J/aUceVfJOdPAcObLcuytotpDMlB8fWyvNjAN
	 mQ3Hgq4IOTBI5QQcVIOnYCNivRfh+F0EZyMZwU/VcB8l25seh55hhI9X3NOfoicOrl
	 awkAOb4dVM+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD3ECD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906063368.32679.18364702723022012841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31200b67a85d78f6168c8171c2ce4e893a2b15eb2ebcadd28b8b7ea0f7ecf2e9
Date: Sun, 17 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779060633
