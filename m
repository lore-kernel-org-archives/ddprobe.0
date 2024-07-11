Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C3B1C14
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720678643; cv=none; b=jWvU4mM0DSoLtOKerAhoVHLvIgvi+QTJC1iLV9zX2FHzYR08dnGb9yustiJ/u77kLdcEBXVeEoMuCm1tJdAjarWzJAN/VDuIQQAhIFoKGItjqx45GQrbQSYgGw7CwuV3ecHGlVWz+lON08S+7kY0y+C+DcE0I/sDDXt6KTiML9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720678643; c=relaxed/simple;
	bh=t8DqpzQSbJ7OLHGn6C2CjY8SfKnHZzr2dhRW0HOiioE=;
	h=To:Subject:From:Message-Id:Date; b=gNQJ6H0OKiIp3gv09hBjt1NLrWszz7FiFE2mbw8c89Kk27MnwRxI38zOTQKIA/vXatmv/ahcz/6vu2kaFSqw5wpm15S/Dz27P9pMXpNW53XHeL5KzcWgaBrh6JEWbgHft2TWeGkse4Z9+ywc9OyPilJYsqOT0/ODrZt52sSpUI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/45Hcw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/45Hcw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D11C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720678642;
	bh=t8DqpzQSbJ7OLHGn6C2CjY8SfKnHZzr2dhRW0HOiioE=;
	h=To:Subject:From:Date:From;
	b=L/45Hcw1gCipbPsEz0we8C2GkFYj1NvcGCA76vW+2h/oYnCL4ze7BrBGztaOfOdrx
	 8WAWjxvzF83A4UJ5FA6joXAhwbTrlQBy7OKhRaWyaVtgTUVswVeW07KQoak0j04s/r
	 Gv1cwbkF/wTkQsnzsFM3xKPky2ea5TJW8bIYUJsXcHZ1FVD8pYwH+o0EifSP1PLJ2R
	 B84nL3cAssHSps5kRhJ2DVLs46zZXygtDVzyV6t5w94RIaCdSJuft0dmoYwXSs0aMA
	 dMWH/1UFH4bmPSD44TRs8guNju66MjQ+07BmjCMKlqV7oquKju7kA6OC/A8oa8o37o
	 FClhm2Pe4OrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C820FC3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067864280.10833.6854639659594977565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67963f17ad99e8047acbc80493bb9f3f0ffc205ac82b2d6a1250ea1bcaeaa575
Date: Thu, 11 Jul 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720678642
