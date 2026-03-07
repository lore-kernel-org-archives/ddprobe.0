Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031E725E469
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772843694; cv=none; b=TLMKBwAjlsJIGgtf1m4sJBiL/qtQNr1MW92XW6lAimXVlbXSV/cFJGmpje3PhT/yyclas1jtSs/Rfl+Ef89spCU+/qmhxydP5vwZYtgmRpqeZ+89M6hkPeo571jQaOzOVx9RJmoVdh42E4dhsbi6JCiuYy+5iVp0MweHM2Qwmeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772843694; c=relaxed/simple;
	bh=dzDiHz+kiFNVzbMZBM30IfRCQB2mE/MQSXY/EKZeBD8=;
	h=To:Subject:From:Message-Id:Date; b=GGEDnJ3WE7Ky+turYej6hQ+DifbFUzf48xG0sRGPEXE9by9+gizlLDUUrySMQ+QL90Dx8DWjOFAG8z39Un6eCpvQ6u625RCCd1etBR7N1gc8XzN9GNKU8f1n5FGJKo5ENfH9mtpViczpWQUk3ZtmlBWjknWLYp56mWUqNN2L6b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQlEGzaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQlEGzaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A824FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772843693;
	bh=dzDiHz+kiFNVzbMZBM30IfRCQB2mE/MQSXY/EKZeBD8=;
	h=To:Subject:From:Date:From;
	b=ZQlEGzaUesZ2T37yEVjxWDz0Zc+vqMFaGc7O7dvfiX50/I4TERtKeO7B3hIxWeAaM
	 obKxELkAI4nnpJaamLl1WVGwvy/vPNIdOF2hW5q7m5wfnBsLFZNv06FEPTXF1LTDF6
	 ZzRoWfiJE7UbZYd8KqO4VRj6RwTLorF82uqt9wITTqVAe4ljirWmqbsXm0AHKI3shr
	 V8Nl68nGhvH3ibLkDn6Lz+TQQGHSl5oQc2s05fP+f9RmPfV5E/K6Mqeu0pyHFZ2Iqs
	 sNjj9iCS4ZWFVnY40/BGLlefQ21/FW+1rsMDo7g+4syyQMNHpJSMuVbiJY3HojkWsF
	 alQU82OsUsmqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95293FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284369360.23286.16752703939150779501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d239da100a28016e78e5e6ee87a506ca4a03cea83f07b190ceeb3f23364b88
Date: Sat, 07 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772843693
