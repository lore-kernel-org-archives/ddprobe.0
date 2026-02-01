Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AB71F936
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769933034; cv=none; b=km808Q0tZRCyT+Xl7+l71weFRpwSfAM0YbOBdEXdENMm/KN8B1vVNB3O+8UgcCUO4/CL81uhvCjFTbdzR3qo3Dmd1DSSMPcn/RCLotRLV7cUE32gWWs7as7qlnv4Hv4B52KSBfFfFY/G8OZHZZw8qEAF8E+494lqt+EbtBgvy9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769933034; c=relaxed/simple;
	bh=We28tCHBO/FTjVBVCq2GpHp6vkoWFVn9OhvFB1s4bfM=;
	h=To:Subject:From:Message-Id:Date; b=nXcjBtwa8kK36W+3yyzgxGQSE5dgHa+8+A/qCPBgowA8RxMqJz5UNUAmSmNmrzcmrTrYqlST5B3gyjpwXkyeJ5+d0NuXaNLOugkN8nCwqmR+ZygSayrrNrWetiEtYaDGfQ5y2bY1P8bRy6bmoiEsU2y2mzwfa/ESnjiQbGEkXUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ryf2ZHrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ryf2ZHrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5749C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769933033;
	bh=We28tCHBO/FTjVBVCq2GpHp6vkoWFVn9OhvFB1s4bfM=;
	h=To:Subject:From:Date:From;
	b=Ryf2ZHrJh76y1VQm7e3lJ0iGRfRAa+qEkDK4IsI5azpAQ/Y7ygUpRw4S3TTomMhko
	 NSucW+rzTFpSyFRc/+X9ATqNPC88TjEjVGVkSgpsb1ly1lnk1ihax6TsQZ8oDuipGH
	 oFf7N8RZ5HkvGQusDRRM4OeJ/tWxIie6UJhxkJ48pn/dV/siimWxyIeoYwSf1Havtx
	 BlKtgRaT23jWui8XhTqKIduGXvXIe0lyNuC5OQG/xdREgzm4hbdVYVXJyQ/NDXxn5C
	 Sg6tpIYwOrjILKfAPrIDWsSECWhZ1RgyDeV9NIgFLRT7l3zkqhNPqvYTycznu8zrfl
	 nUGlIj5jQ//BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF6E7C6FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993303357.31145.16668447649849015524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfebdf61a54621ed5eda11e60625565bfdd37412bbed343da0043d8b0aa41ce
Date: Sun, 01 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769933033
