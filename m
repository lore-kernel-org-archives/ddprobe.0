Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8B91D7E5C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776985654; cv=none; b=se1PVfHrpUVKrdJOH9r8W9dbJE4PqZwRMgAPQ4t63+R0c8um7yTcFFKx2Hvz7KR10PSNZhW9qZYOKf3hOhs4/9GsI5LSAcuD6bxOvTU4wrBk+2nEg3ybcV+glVzSAhrBLnN16+HmqrGb+4m1VefSDWpkCm9ppObntfJVHG0b/hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776985654; c=relaxed/simple;
	bh=Ti3yD032YosomRXlDfNb+rPd0QSC3CRybc/2Ek38jMY=;
	h=To:Subject:From:Message-Id:Date; b=NH6ebgrMXFEf3eu84uzD8PtAc7iAjqPsUN7OZs40P5H1IAzgegWn3CYn9AuIF7Tw7OTynhmx33wcIVru8bfXdkiGTc8NITyVR5AZwL6SsCBQv4J3g+3OHeuSW4i5v35ACwTrChMV1AEK2X5cnCaCe9C0FXI3BpwPVKsQ5PKx8oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cyr/mDu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cyr/mDu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3378C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776985653;
	bh=Ti3yD032YosomRXlDfNb+rPd0QSC3CRybc/2Ek38jMY=;
	h=To:Subject:From:Date:From;
	b=Cyr/mDu4MgxtNfyIvVQXXFnRepW3M/fkRotSP06vQUtwEH5ThGw6dM3ft+/TV0DLU
	 Zbqflwc1t1EfObXsEIGqRqU4+seKF8ia8P/98d+kmREExDKtzM3lMJ1S5RfYzoAaXT
	 OTris47xa18LtdkTW2ieRuVObuFELs7UVKfZPvs5S2/sJVazrOMrisK8YAuQ6WiAYh
	 cX+0jBUV5NhKIZxOLfHlD65fe9QklO2VPXMgqI0hQ6fYWyXpfqn85STYijG2rOeXF8
	 ERpQR5qtR3Jk1hmMqOLPzwI/ExlwAk+HBGx6ESeUO71s8ytMRXM/BDtvlsIYsiHzHV
	 ZLpfI5lAqoc3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD948FDEE52
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698565368.32568.2804105140823132795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393ff30d9388c781f52f2b6a00eb035c8ad0328dee9456532be0fb9cfd042806
Date: Thu, 23 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776985653
