Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F2522156A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757620793; cv=none; b=ARmhloo/5TsQrMzNKp9EjmV8hCvx1iHRqkGUuIWiNfBPsrZQzKZVJUo6xdQ4bLOKS+xizGShfsU3i7wF8evQaTuf9PGkXjyVSFYGym1GRJliFQIG7COZ/73FJo3N4ItGaOexClXmO3CxGyREPmUytkCudTVbkfzTWDsOLdigTDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757620793; c=relaxed/simple;
	bh=fhHZLzuvHb8GBnfmzXU/ar1NqeVa/LclY/Vj2pGs6HA=;
	h=To:Subject:From:Message-Id:Date; b=ZadNsREvAXfpac0FlYF6tvyju/nrIXYV9SjcZsf44Z4MUMK0H9nSMoG/Iy4uilezQKOd/JT03QVLYH+arI+Le3EIlZ9Mo+LglTu9Dn1IR1WJdPpks0jJ2IiHu8Vhep6sJgfo5Ri7m8cBQnPKk2uSFmaDqmPTVOL9/WDIzzpvnu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEpiKJN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEpiKJN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F9C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757620793;
	bh=fhHZLzuvHb8GBnfmzXU/ar1NqeVa/LclY/Vj2pGs6HA=;
	h=To:Subject:From:Date:From;
	b=UEpiKJN14U5i1YPue1t/v3BZFbEAxlqMoqQSBojG4J9Dog7g+MevikFgdvJ/Pc0rc
	 M3HPp4cqlYuLv8katBckNDynprn/y561/P1NDMBaCHgxypgYjF9HxRkOjjlj8q4Vbh
	 6hi2leDhq4PZrP+NBykPdnP9bt16R7XT+GaWgRPXFX4W6IiniliYa6MKLwebscY/ly
	 iNvJVMpYnDjwjNWb2hiB/uS3M82sBhcKdP/kQgHg2NbE8pswHp+le+CY7OV3kf1MUl
	 94I7RLxjvR00z3OvAHKZegV89bFs9GOWZpM/07PmoakbDnAfZ4n3HFYLr3uegzbwj6
	 Vknz+Yf7hlMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7ACAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762079357.22710.5399378329599810977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bc5da6a5d6b63747d90af369483e2b856dc9526cc7d169a7f8f8a3dd94ac77
Date: Thu, 11 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757620793
