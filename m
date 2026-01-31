Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FA5BA34
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769902434; cv=none; b=TbSbQiuT/dXo+cEkgVD+4M1FKaxk4ZX73hwUrrL77wtlW33wUAkM+n0Fqj7ITxEwzrhZ91FxhkYCKEiMOKNEuuXCQEP1SrKWGrSocSAf7I/dcufE+KRWOVVJez88ulVclLF69NIkwbJiIgIbaSxBub/Z8CXDWsVAOQI2ea/pTu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769902434; c=relaxed/simple;
	bh=2ZZ2wdsGNa6ksFzwqocOVOJq0VxCPxY9yNKfguWAwQk=;
	h=To:Subject:From:Message-Id:Date; b=lCo9psqPcml/bwRGi77kLsVz5H/wvapRMdp07gzpIiLn4wtn0zS6OcmoUaiQnsjDR/gnQxcBMEMX/jl3J6e5589s9wuXHehDGzZzIFZzHbYNC3LJof3uYhqo3FiGTbr/PCmFCHh2uxJP/MQDBlXiBY3MjLbz/JxACFmTBHKEq/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOPNKrhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOPNKrhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769902433;
	bh=2ZZ2wdsGNa6ksFzwqocOVOJq0VxCPxY9yNKfguWAwQk=;
	h=To:Subject:From:Date:From;
	b=tOPNKrhf+6lCw7tq8jqGBT/k3QlkJe25Tpi8+Mw0AWE6zs98OUjJKsnB1kfqxrfHu
	 V0ZJ+yJNYTBgtGFzJ6VNnQMbvqrYlvKB/2NQNIgfBFIKu+lj+QnsnBM7Trg3KTq1Ht
	 6nRtvJwgaG9L16LpJPFLAfQJ2ubauLOc5zyhYti0pk8AndOktiFaBfMUY4sslQ46Sl
	 DnQzY3etzomHRefcSAveToupMnBLV+lTZ4jEPgVjbWBO7JCdPwYu96iCkvjnKtyR/3
	 NvvK0s99BgXfG0LGkFKZ83FJgpDmQHs6Om4ZfL1tBbiVS3MRimXuS7/ukdSgQDHpEP
	 qfRc/qs7MPrKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946DBE7C6FA
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990243357.10942.13569378760828007042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f84d976fca34e86e3d9bdda12a4bc5bfd3f82e25bdf240447996c3e0492ec1
Date: Sat, 31 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769902433
