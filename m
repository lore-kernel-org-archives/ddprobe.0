Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D940288C2D
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772907294; cv=none; b=LAH+UQ+eVUfR5areKaGmZKZvh0SYGGcx8ExN1gJi2LqwAbAUARv39oZFKSxkSb3cFzsH3/rk9gVg/JFcsnOqFMp2rBR63f6nbEAUmzsHfgkTCXMUtuqUJIFrgmbbciODaC8Jqj66sWDAy1marFsPBivwthW2MMbY9UHU7NPf45w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772907294; c=relaxed/simple;
	bh=LFOmruaWjcObkZY1IaBkmM+i4qpX0V7NSksdyOSX1MU=;
	h=To:Subject:From:Message-Id:Date; b=inEXjGIrfMsWZcii6ogB8ws9WmWDN+TkmZC8xXb5FBTa8bo3FHMSB34IId3Q6s8iKrxxMd6zQCpO7qVf57qgvkSWBWm0MBRNufWl005dWLP86fEDRXNP5SytHN5NZvuzE8LO2DWnhngAOM858FbXJNWfA+AvkrhaG3ddSsEdMJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l77dlVtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l77dlVtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8243C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772907293;
	bh=LFOmruaWjcObkZY1IaBkmM+i4qpX0V7NSksdyOSX1MU=;
	h=To:Subject:From:Date:From;
	b=l77dlVtITxCjP2UjYv5J8/7J0kZ/gIRXP3p7xrO31wuDmah7r49t5MA0pySg+F29u
	 85w4Zk/i4J7+PA8p2kYkHjCai1VFnf+YzUdtsIRUsMFRFWG/sfC/JpV+izY6AscDew
	 Xknuia3eqq1t95IhtDUmvjbfwgO8vecouWGx+cteCb0OnP9q36WrJFOVObWGgrhzPt
	 APCNZ68Lftr4tRnPfEyQQLnoDtDsQnKooK8ZhZT8cXRt61UzSoJOsJZJ/m5EVpppQG
	 zldyb5hCKutq6UZWtB94784XVZ1/1sZVxW9qOIotIlZoeXmpKagynHNQRWoltvSmMp
	 c/IGKxO5eTOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFEF55103
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290729357.19994.1126309950826614840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0c1ec6062f6fd6c021147259192baa22d30fe9122fcc6385ad617f59c2eb7e
Date: Sat, 07 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772907293
