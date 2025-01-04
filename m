Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A041D5179
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736016354; cv=none; b=KX/uc7xXAddEmN9Z1Z0PmNPKwsrDKKr2iWYB7LiRLbxdAlq01FT7o0miA0gTMB64g+K74RAys2zWcUSCFaZRpCdfoxYqU9/qSScJ8G5UlN8xKLrphIGvISW6qqrsF6YhaPc8innUcv+aQuI7xqQhY539Cq6xecGKSxHe0S0elyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736016354; c=relaxed/simple;
	bh=xvBOh59ZwFdlNO/yfk0cXRz5nB+2g5bPEWyZX4RItS0=;
	h=To:Subject:From:Message-Id:Date; b=ZawFmgOtI/46kNk9Yswv6SDJgL2PUgmJd2DubROOHniyyXXJC9pEe2VHACx2zuUffAsJ1FrioRJ0iysUESzKUyy8YQrG8Xh0JbFieFdLbuLTB1seP5y4BvL5+5jLnjgng8R+8QE/utXG3esjJH+m+8OeOfe470A+DMziZuy+YWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d21PxTNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d21PxTNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F2BC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736016353;
	bh=xvBOh59ZwFdlNO/yfk0cXRz5nB+2g5bPEWyZX4RItS0=;
	h=To:Subject:From:Date:From;
	b=d21PxTNabwHjH5Vel+3OlurzYxfz/2VVckZRHauVVpPwunUd6mpmnRhu5b4m/J7Qz
	 5vb12pVVdVINtLgJw6Xv0yMIyqLCnRHFF2zw3s92vKGtZ2ryywSHez5HI5cLepyuDl
	 RCPMCvMFzb1WaBmXQP4Txu72ovyAExTTFsStmZqMK1bHlEl/u6eJx30XMuLH/AfQ9+
	 dLP1jyjLzUtprdNzCUGiiXojDsSHYTMULjTrsMmmFbC6svId/fyLUN0rCT8NhOuWvp
	 04ZC40YVDK9H+64G8pkaWvxjlpWvz24wlRtcwXXQ+Y23SdogVzPDwuKSwT0x+HRX0O
	 vZ05SKPLCksGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A348CE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601635364.25059.5009152842873220665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41605f23d26f360b0c34a3154bab5d459021b93bd4f778503716bfb93609833
Date: Sat, 04 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736016353
