Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5583037107B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775128534; cv=none; b=EOsc8vXO2vdMAVzaitf8Y9kjZxwFo0gD4tVIRaoyKrwE5EqorBp66JGc3qJezw2nkqzTEq8Ovc2lsJlOPplRGBx/uxEPuT4tHoGyI2kIvFfYW1RhqEwp3RXHd/k92egdmZuBRGozGPSBQbTnOlQl4yMIjk2j64RdtxxL1Of518U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775128534; c=relaxed/simple;
	bh=H7nozu5qCeSWcHa6hq44nQ79ZMp5b/limawgQQFRyQs=;
	h=To:Subject:From:Message-Id:Date; b=GyFPFxwULc41spGOHKcT7fymC1hPCzAeOmZH+UTpM5jIalyEFuWcS22o3vAqAnlJfLXIoQl7o0q3IWa7yOHplKaLNAwa6xjeSkiraHiykS98y4zzMK5tJRxjk5wvCraAB7MaN2bb9Hb1kX8OhGmVxC7IhCw/pjbo05Cm1HwTKHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAMDxOO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAMDxOO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE15FC2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775128533;
	bh=H7nozu5qCeSWcHa6hq44nQ79ZMp5b/limawgQQFRyQs=;
	h=To:Subject:From:Date:From;
	b=XAMDxOO9DsvVR4g0JrCeiRkLliRpCEOCGAy3eJdBpblEN5d7teQtbaYaCx6jtiCf/
	 9TdKwNsZsWkf2WdMniKp6P4D31u1FlNHrSMFJKRCgtYW7/tugWZ9lcdEjr9p6L8sZo
	 M0kUecxi25Cb/n3ceGdz+9QLFcGL/xnrpZ5v8oaeZZdcn2MutsLcANfbn5vIp6icQ2
	 OCBpA2KF78NbV3PLSQYWZyYATs3utBtGgSYCWX93psHjq8LsAuihKDHZnejRXKHVIE
	 dLP6E9YrOt6o4wVKwbDniN1RNVH++bn3IbOL2dpRU58mvPRcgPL9G7gAK74BNOAA/i
	 8erohhrdoLnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC43D39410
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512853369.14940.9093596845516152993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f91029b96b57cce46dfdc45cb4c6f386d171561263fdedd23baa633761445a7
Date: Thu, 02 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775128533
