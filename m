Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5182234AB01
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782182794; cv=none; b=WndE1g8C84w2KJIUpGf9je5hlzCrZHjZSYOmA62hZBwHCLPe2o7hVTHYD4FXqRC8JB3M7jCF3+lBFU0m/S1WqI8sYPBTzgJggCUCNG7g3v2yY7F3BEvqr2TRSvz+Zyzv8vvc2osZ7ymYCrdM2VHCSJBpjx4kSI3UxSTdDeRuKaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782182794; c=relaxed/simple;
	bh=NYtRX3/Gn91mQ5G6Tm+Rvf8FuIvyL3Wmta43jfIHj1Y=;
	h=To:Subject:From:Message-Id:Date; b=cDr3MfduJsB6yRZcKPqeJUEgsfK21d1CDhQFbGNtMIw9UY2+I5b22byLfcnjZlZbpyn8HYGUEMYhX/jkRRT4raVEyn0yc+zhtbS14CI/agwbTjFkRSkh+RspXEdzwHEnPBKXRLed82KbdykbYgt4jAEreopGDLJyvbN8FRbavtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJQwHNa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJQwHNa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4157C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782182793;
	bh=NYtRX3/Gn91mQ5G6Tm+Rvf8FuIvyL3Wmta43jfIHj1Y=;
	h=To:Subject:From:Date:From;
	b=iJQwHNa4pqjrENPyzQfHKesftvvuBrcVSceVqp8JJdq5VuI5zYy/lN5UA43kY722j
	 rbOMdGyyyyqAdqV4lB1AXlOl3AGcbVTqehp841nMyZm5Vvyl2AINhOe/FDIuCpV7Jd
	 pkLdkgSneQnkzkvzuhYWEVUeSNZU/ICjqorrxdcT/c/VHWpts8VG3KtcpqH9bNsG85
	 9i2oblg0aV3BE/8Nt9VGwSnMyiziDi7z8bWxC9scs3cucwepBUts3dX+6o4hRE20zI
	 ptB+Sqh/p2gZS0KTJnl3i0coPfpBKmM7u5+nzbL9wHjO7jG6zbtBU+oBfQX0PvbcUo
	 anuh0ydnu4Yvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C89CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218279372.11745.4899261384608666061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a879f648f4296a9fad2f30ac5e89801e42ccae78d951c58afdb27377057302
Date: Tue, 23 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782182793
