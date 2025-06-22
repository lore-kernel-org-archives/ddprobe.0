Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343084A28
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750580994; cv=none; b=Qi9q7/UK6ePoEc5/BG8PttD0Qr8+bae7tsB0XAxSCIOze5OsVopSh6B4u4k3ANLyU2w302owiMUsesn3IdRDpS/Vm1MJ8lj5JET7Na0w1FW9yDJQZUIZsjVXbTJ3hFG1H3QgoZfONWt5AjbPUyROYEcUiE9RPuCoCVjY2ICNEJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750580994; c=relaxed/simple;
	bh=DPXdw7ypYPJ26VM21KagjJX6vusq87CvquOsWG/Mg3s=;
	h=To:Subject:From:Message-Id:Date; b=kafY7YnFMB1hsfFnwXCYgGJyPNa3+LzNVmpDCydoCep2Rgu053o4ubhKDpmuCxf9WRY9+ntD0UKvbIIA1HsWBdn1h7ztIRBtfqzOMeNQ7Hi6/zVK/eoaJnoDOQrxfiy40Ccm/N9Y4As73hZzSCFw9dbw/JAe/BG3fTuYVybV+WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/Eop4lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/Eop4lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA7FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750580993;
	bh=DPXdw7ypYPJ26VM21KagjJX6vusq87CvquOsWG/Mg3s=;
	h=To:Subject:From:Date:From;
	b=a/Eop4lrx0CBZrFeWvLME5N/Oottiz2/caraV4GVX7uC+yMjx1ouE22YRmob4RfjW
	 gBvlOy3MCXEChVMY9d6LnNHZ2MCBLGP7nfTyFMTSMsFrtfmPnKPk5DwzeZva59OUXb
	 0SQ+Jwz1RmoLWwVaQtCuyEDJy92Z4/OS8k0vEvbtah3eLqJWu/Vj2E9dhY4UEnHU8T
	 JYaoCtsd3VwRdByFfQGU1j8VlW7hfsQazN1x+0+VzG4Oo21iD9I5NjaU4Z0DYE1Uz+
	 WR+NrfoHNS6hTN7gKodHKEo64cfWt8cULJGI8Dh1M4U5t+Ay6q/y6IUff2irEjloAX
	 8PzGUdqSdjH3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E46C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058099357.28121.11755586605762570480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb57c85b1cc1eb3e0f8b84d5d1aa08418a52ae56c6fedecd1dceed6374c2ba2
Date: Sun, 22 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750580993
