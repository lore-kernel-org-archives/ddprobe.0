Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E9F507
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774310694; cv=none; b=OUk//B33Gp0wWofIH8jvdryKqKnj0OzVTndkqKBddIxwmVkOJ38deRrVb5f5SmWB9PTqBiEL2PjfIDNr+Sa6SE6wjc/eCZIJhik+RvEMO1NWlNxZZUJrg2mGTbAp/kt8re6h2C0H7dISjCZuTOovInZfIPILz567QZ8Mq8oBnrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774310694; c=relaxed/simple;
	bh=a3qbKH0X++rtl0JV/JTQzYFaw+yTUOwJh+rjJKEYWkQ=;
	h=To:Subject:From:Message-Id:Date; b=SD6Y0F7v4KhJAMDDeiuRbjuR63dsbLIzui6stvNzTsLuun1geUeHVPG6GGn/U/iBEudYmoOW2BwOXSapOJ7EV3O0qtC7cjmuIfbQ8o26juC0Ta961S4kFNcBXm+6BxDYxrTIINMlfaErRJlYIzBFUzvOpbvSrotlVUAx/yT9n04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCjlhAn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCjlhAn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC21FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774310693;
	bh=a3qbKH0X++rtl0JV/JTQzYFaw+yTUOwJh+rjJKEYWkQ=;
	h=To:Subject:From:Date:From;
	b=CCjlhAn/QCXIsWZ6vRPz8hsdOMN+iNWDIRvk5fxmjLLZxxnL2mk4XMQTMlH5o8uD3
	 UolMZaq12V2q1pkEmKbknoLopJdYp/LO7inzxybEtF7R/fNwJsjWmcOWegb2AOw06p
	 Ikwvax47fl5vxbNpkmX6W7+Lv/3im4EWKG/uVdwJrelboAyY8Ul0zrsADiBa4HymN8
	 6H5NtFnS/Qpq/Cs81fkkqMjTOYBhshZvA5XBunDCFCVZpl8RB0ivtlInkNJxO2QioP
	 nZ/+mmpdEyeUQs6U8/XvxQ3xzuaM0jzV849b9Bbh30pDZU7Nc97UMqREMKVXHAz88h
	 sxK1nGhlyjQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A716F532C1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431069362.29236.4101773066408483595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592dfb0273bb67ed06efc95d8f37e84f31934374c5fe352f29579e978e6c9edb
Date: Tue, 24 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774310693
