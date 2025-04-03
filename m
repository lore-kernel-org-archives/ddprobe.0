Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8132459D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670794; cv=none; b=ifDEmoAks82jGhfhM8oQWLqc7GZK5z2Rq6xxNZTkxVm+EdJvMYUooXwf5W6j35yV0prqvvFOSqCLxUkL7c7xEKh+gufJ5DdCUGJ3HZjZIq6ci4+LzyQWssouOERZ4owtke6ieL13aFYT8NAk7Nig8+kPevjiua5GclU/S3ajrPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670794; c=relaxed/simple;
	bh=863Os+0UImf9wnMtKpGDW7U3j8/Z4cSfo8eb9s4Ic98=;
	h=To:Subject:From:Message-Id:Date; b=aH9AeGV74AdpRUEQgeW5NRngilXlAqN7q3sWteU4fkQ+iqw6QnRLhuNRdq061Nkg+ngadaXTT1G0AmFfctyaSX0El6Utv+DmNE3xF4vtE26HHz+/YWoDXddnIGcSwhpNfEZRz/X1aoxhPEPBySLDqISkbOgFBYgTFiaPSvkXQGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRz/A496; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRz/A496"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C243DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743670793;
	bh=863Os+0UImf9wnMtKpGDW7U3j8/Z4cSfo8eb9s4Ic98=;
	h=To:Subject:From:Date:From;
	b=aRz/A496Ze2GyT7x9kw110iM1E+ps66FEsfhhX5bRlsqkhA9qKvoy3IenAqJbdv5g
	 BE4udffSy+O1C7GrHRjnEZUgcBCfV2rqReGCYFSBI1EODy/ljHAVob2srO3Auf56kG
	 kOAtXn0qh5E7CfsHz9/rWBGi7fDDidgir/eE1bLiZ1SeUs4+C091H5IDHCUEOWrGO1
	 PEQcDrM3vl/2tunVrRKTBLepI2MVglNzSLqoAayBMLk67wKK895YNoRoLzoYWYI0zF
	 mXd2AQmTPsS84CnE32vpvwHfEtUw3axV0xYBtdzXlyqCrs+NrpOZEp0qNGI4vOZdkl
	 k2vLY5mgY0u2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D5C3601B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367079359.7600.11445856614692707472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06992dfbcef9d617c4161cd8edcd1b6d0813ae87367af3144fdd8e1cc19ce492
Date: Thu, 03 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743670793
