Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD2A1B07D9
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727480754; cv=none; b=pSWG4eW3Lkh4eZN5q5FOrj2/ef9Zg6ynBHuChX1NBWVslZ/1aVCK+xqjrRab49ez5I5gKdQjH0bHHM+5OcQ0dYCKd06EdqJ1+8Xhw1SN/4pTVc/5ImIUV43i+GDn/+sPYc+M+8XDRPpKkE8+QMYPWMxa4lEKAf1eCOWob51dgMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727480754; c=relaxed/simple;
	bh=Aoq6acpxPbKFiBLqq1Oo7qX41VyMomHmRYwbWB3UMSg=;
	h=To:Subject:From:Message-Id:Date; b=Bddgabt0ZmXF3Brc/6b0LQtdMlelhW4pOxMrizYxiHHLAJUuKntGhWF0OLBPxFaH1Za/q48QTcZbpGuwf9Z32v2fa4rvXenLE2b7+FgtFx+rnggg6Ogh9WAalV440zx9ETTp1bcNFOXdyazTcaLIqyvQaUo5wzj7rtz7yeW2HWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRUUgarc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRUUgarc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E9C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727480753;
	bh=Aoq6acpxPbKFiBLqq1Oo7qX41VyMomHmRYwbWB3UMSg=;
	h=To:Subject:From:Date:From;
	b=BRUUgarc+vIGJ482R7WvDOtP2DmYouWYlZykVcaziKGeB7WYVlTivF0vzqUy6Qjjz
	 JzScgpkQ80DGlcem/pm//9Tvf8mHZg9bs9deSnePT/Tw95vajezY+m/3vtfDp6x4JH
	 6BtswNg14BKZhFE8W8ayvMQt9RJcEnczRWKQHW62583RtDPjbsUrkU9DIsW6WWEDxZ
	 2wHaEEfdhYwpUfhivjUz6xOzA0yc73WQGOQEYkYmvleXuB6kEYTXkhFXl43u8gsX83
	 4hKMbRe1XvraAaCfEVewyifDzmsTA5ox6YpwqTYHPk7UbF+ABJZI99vOaCTJyTDBFk
	 TaUM4XUXZ0MFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D4CF6491
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748075360.26043.4558508392108682486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee291516c2ec7308fb237bfba29e1b473f522e50dcefc0b1c6fdc623ec774c0
Date: Fri, 27 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727480753
