Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0362ADDD8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706426297; cv=none; b=l1Fk5OSkx/rWhKpg/QqL+S6ZfKSNu8N/fcyqWPUg4rZbLr43HR0UKTR6ZQX/ZHAxa8PhowmrHTp2Hz3RaOXLHh0meu5rdD0SrrysxBt2QAWGvbVbywOhJypNt0Qgt6GL+1SJIB9XzUbmv/EauoV9hUo0ZJF2vSyRIH42XKl+FFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706426297; c=relaxed/simple;
	bh=2BVIZ6sdI2P5nLRfpbU56Vb9KhJeqXx3Zl3CP0JIYiA=;
	h=To:Subject:From:Message-Id:Date; b=ERiBFvRvQ6pWNOSwnGnSm2zh1k10ep6i+HrDpasFhoDcXnFHeojsf2HFrh3b4B2TZ5BTSO0UwBZgtbNmGmbvTJYScDtGI/dM8jG1iIpGUOj7bIpJwvTpCgYwbB/rHP1UrVsUi+9ZD4Y2FVziRHonvAOZp5ITMsoI9z0rvMLsnIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx/QjlCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx/QjlCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A3AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706426296;
	bh=2BVIZ6sdI2P5nLRfpbU56Vb9KhJeqXx3Zl3CP0JIYiA=;
	h=To:Subject:From:Date:From;
	b=Mx/QjlCfbCyamsnYPHFXalG1G3tdFErxk4hrIRzcIzhxdgHKbEfXISEP6mXzoZHlY
	 xfq7Zkrgzm0nuygIfsDCYn9Y0yQ9HW6oRz/tuYxlh7SY6ZeN4KAsSLyCpsF/7o+RTs
	 6ETmS6dC7WRsuoYKSxxl+bTOwCz+97Tmhlj1BBD5cm6vY3+3sWTHeet6FVvyyGeVF2
	 Pf0iCGInhWh2nes5WYErOKMquj2Ywdn0t8Iu6XB3SbkG5GhjvqQhJT7/r+KEVRvt2z
	 5fM85FineTDp+6jleIYk617ZtW5EXnBzaFawN4+ceI3mrUzc6JFVm6EjMhxDn3V9U8
	 lBIDHj61rGwAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65836C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642629639.18127.16611715790380216528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ea4c65b37806308bce71d46e2ca0eb300770717c3448deae0764de4f9b3a17
Date: Sun, 28 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706426296
