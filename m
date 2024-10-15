Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFC318733B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728994554; cv=none; b=Nw/J+rivatCjeHE9c+AmkHx9wbXbjPh2QnStI82ERqBYG5bQ1l2eLaSCpFmp7H50e3RBU4FwVDfQYVUIIG7IxIaO+ZuJXtcOksqQLVDW3Y2qf33scPImfZ0kCec5DUpjpAzN7Vtn9VBdPaNUz0T1AqFAOrltd65fN8T2692wMqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728994554; c=relaxed/simple;
	bh=xoHXRdbe19SLpOiUWpqqWZuIc9UIMoMT+XjO1feHTTs=;
	h=To:Subject:From:Message-Id:Date; b=KE7Frtp16bA7Oi1lTRrIaoBGL5Mnm/3XoFBVA/zpzQpKIJgIGeg5OqiopKAkg7tw3c1/fHeHLrUV4WvBJMd0XP2K6VfCe2EA9W8MI7Api6v/ru4+YO3RMrAgINEcHOnB7JCWbAbwmTj7qgwyuEZckzE6ajZxrE++Kwvoj1FG8tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKk8JfPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKk8JfPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA0C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728994553;
	bh=xoHXRdbe19SLpOiUWpqqWZuIc9UIMoMT+XjO1feHTTs=;
	h=To:Subject:From:Date:From;
	b=mKk8JfPyjedRxlLFf+8TKhunzCcMwWxn5YDzdxw/Jp9j20N5AoLhXX+Pl9zkXcRUv
	 UBMTWii+A0ZMCUojWBIeb5EmMzteBfdVH1PC7cd9E5heH6Gcrzs8mRBTVXR1NFHnov
	 tDjL7ir36e5vOkJ/xKa+FMenIILFOb65fWZSdAZljVzOLZqivv8ZZ8XAZdLrmPL3VV
	 S6NfvNE2eKatv9QoXslz6jnmbdPUqN0597qukorNTyNsO8zdwtFjTaNDM3OymOdyvy
	 YrSdwihjhS7CTkdWwwTclUUhrZ4Ohk5aYnyikLdPpPOf6lmfsuy5vZ5vDy7gfgKfvy
	 TkAUNYCd88+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B4D1D87A
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899455367.9089.15073374831610298101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738dfbf8ce3ac62fd98e7bd3ba6bf297348522e2ae2253495fa623f2b1bd26d5
Date: Tue, 15 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728994553
