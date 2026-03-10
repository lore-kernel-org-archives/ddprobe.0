Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D9834EF1C
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773171894; cv=none; b=Nf2n6rLAhzxBUjbipCd4UhkAmhJOOLOmacLTfP2nghXt+eeMTIU0bGmuMBGpgu76T4kQYGi3h66sQfYeAU6qhQYMp6f1trbdTPSY12GDsNveaTGedML8D5uZK+q3yUxTGEwIpVki2krRnxFw2vRoEEhCMpOyrLQgYqSeUlbgEUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773171894; c=relaxed/simple;
	bh=hWvq6f4VlOW6oWorq/X2IXHPcSWrsn3uOVwRk64EHE4=;
	h=To:Subject:From:Message-Id:Date; b=ODsSExAnuBlcIAKFZvuvhYVjP9LkLB70FEOmXrROZ5JShzUhnWA4xAKEWvm87hEOeG+U2ZlSMIUOkG837OGTWA4bQrYShh1FoAzta/pR/aWK/t91q/IuS+/j1xzh34psgIKBGLC3GMY/M0gto50CFz/bJP987QhQ6cMONAw7alc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFMfSB1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFMfSB1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF60C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773171893;
	bh=hWvq6f4VlOW6oWorq/X2IXHPcSWrsn3uOVwRk64EHE4=;
	h=To:Subject:From:Date:From;
	b=YFMfSB1wwOg9vG0yN0oKYZRuD+cNdxupz2aQ6/njdm3rdm5lO09nhiW/PNMsx4VIN
	 MJ927TIhJMUmNKCi2h2ZHo3TYezAw0RPa5yZD3nlnnKF4b6tEWykETTq1uCufGtOck
	 57UVnusXG5n4VWhmxIa2xaxr7T+gw4fBju0TNaLvujhdAJtRezw9Mg38zC8db2pLTb
	 nfQcldzbykCoedxJTCpGu9swvwudM/t+ZDjMkMeWoUXuLL9W7Tj91+1aZmtNvP2Lid
	 LlD395vqsWSo5UEjyfQNqAVlox3klTOA3xGos4MPAKwrWbZB1EQ/DphFFhLqU86YEt
	 xKDJFPXoleilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009BFD4F31
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317189358.7227.4725599267727174961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27777dad5cd9ff6ab170437244dc7e006fa1b6a47c7020dda60e1432fbdca69
Date: Tue, 10 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773171893
