Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B1F2C187
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770444234; cv=none; b=ZYdkpqNabVPM1brR83s3D/0aht/QbKo9eTniqeYTwDqHIBKpP7nXmGatDLX+fOH7rjVm6pmiChlTCF7PcZ4E3LH5ENDoAjqiktMXp8GrEOM92n23nB+yFgVS3c5oG9qIDsvBQIWLuMc4m+EKES1ec2/FUwlXirYjex2iiCmBRJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770444234; c=relaxed/simple;
	bh=wY0CEr0AOUoTmvOfpDr3XYxeihjw9BPLqVl3bF+oln4=;
	h=To:Subject:From:Message-Id:Date; b=PayGA27KGjwOoL475hBWknzhZxPhJw8HRFIX/fSJ8EUrbsDMaPLHG990/6Hz8ofpqAvU4R8Nc+EPpE1imwVbGO2LnEZCikyIGl8YZrv6nlu0Ry4hFZ/xk8ZxQQ9keFgKmCMKn4hZ0qep/d/mCGW5XVk1438JedeT+e+HJfif/lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjimL8tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjimL8tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B76C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770444233;
	bh=wY0CEr0AOUoTmvOfpDr3XYxeihjw9BPLqVl3bF+oln4=;
	h=To:Subject:From:Date:From;
	b=OjimL8tjyQ6q5H9j4oybhk35SJnlIz3au5w/h6DXjY5mqOQ+Qr5hTPgBnMJpZDMzq
	 nk7QgL0Fr6/DJi1Wzts3piHg/1E+kfcgKxOQpKYh/qElevXwCtI7kjwcXyG8898kxF
	 HD9ApJWovHZnBLDQfeeGHqyqrEq48+C+GvgDhinyIdi7zh8+37tSa71Nk3yo9mNAYY
	 5rJOuhVcyb/EhubLGaecLlaurSvyfml3ixgR1L2Ryu8epQtA2ydzMjm+O8ojN7jsrq
	 SISfpteNEwYKxRQcBWrWt0mGnjsbO4G7lj7auZQUJWE0o8MYpoBlg4trTMR4f5C8ZL
	 d26/FisEusi4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4801EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044423363.30330.13309649637835265061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f2b716f8b79f60e60042c7c4656d859d2afd814cbd8ef4aae8e3c9508f10ff
Date: Sat, 07 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770444233
