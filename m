Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C05227
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748741994; cv=none; b=FsjaN2XexXetBiwU+y3FBp5GEtd+eSosDaxGIVaLvDPXCvZI0KjBn2XMdloL9dPhQ/wwN4sZxmk+VQDw3KoIGPTq8y1QZyt7JVPFAmn0DGC0xQxrl1QKzVls9ldbX1c1zpgl26eqpWHKB7Wb+I17jFo3InG6+U05+5sTSJTMn7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748741994; c=relaxed/simple;
	bh=Mg8oS3C2TUzFYiq3nqCOqJEO6iuA5MN4QlHwh8WyehQ=;
	h=To:Subject:From:Message-Id:Date; b=lxUVJ3YZOv7j6bi0nUfTi/NzgFPROcvW2U1y7sZQnihi7Wb1FIPo3tSXw3/lHlea8zOIwy4XBZxGaoK6y/HTx/pvI8q54Ytj+OCBbAdajj0S0HRSS3JRX5WIVv9PSbNOcGkwV9wSE7aDyqs9tKomJTifjSunYFuksBhAb275NNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXKZ9IXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXKZ9IXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B05C4CEEA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748741993;
	bh=Mg8oS3C2TUzFYiq3nqCOqJEO6iuA5MN4QlHwh8WyehQ=;
	h=To:Subject:From:Date:From;
	b=QXKZ9IXXrlJYqtJRxYwCXsGt/AnlE2+lD7rAxMHppotIWLU1AFYKWKqBEG6/+dD2t
	 T728iRfA78wPZbxBszDrpL81Xc/DCPgyhdAf8c9jmcNDjnwVbv56UEOEoGfRlDMWRw
	 5RJD7Yvx9KMtVmBj27AZ4rtFICzimeuuDH9M7GHpQ++nX2oTU+QvVbhWB1NWERzhUT
	 A8edDnlDmIrf0AAUI6N1tk0mPadovr+y1pGcOflFAqdsUHOsilQxspXmCnhZgtPl8N
	 Wd3vQ8tFQa2VL5KKgO0bxv5EMUJFLVeiHuTOuS4JiycuqJFWcViNs2nbuxEmvS3Dmo
	 sU65UCMOdtUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C8C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874199357.29373.8258730234334784854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ec001e0944a125345d1c046a4dc6c397b75c046d9fdd04e0649b061bb34354
Date: Sun, 01 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748741993
