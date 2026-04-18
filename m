Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22829354AC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776517054; cv=none; b=oEQJ2d2miCnFgOLwRIR27qw8srby/zY4xf1BECDSe5pbY/1gWq2A9HPud1uRrr3WGmw/z9GXi+eVO3aECXO6q8kr1oJS0tK6VTCS2jGcYt6sBQIPu/uYjpY/iCTXmt8nyhSdd1XGXHEFjXqmG16vp9MN6eI0elW8akVO0CPwyO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776517054; c=relaxed/simple;
	bh=D7yWm8/a20TAziH1sRbxqNTwbUOXjBtIoGDpbWwibfk=;
	h=To:Subject:From:Message-Id:Date; b=qF24bCvzeNZno/ycEI8sXQr/02mQjYbmekx7S3/JDP/MP9pTklumhRhVaa25pmmaHQ6LsIqBvUlS6PZCfQF3pLmTPrlmY6eTTMB4j0OXzRom1aZot2+PU6uZny6rY6NW7ZF1YvxM4ECRGfbX8latLBr3GO35qzR49DWpPv3JPAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ8t+S73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ8t+S73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD80EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776517053;
	bh=D7yWm8/a20TAziH1sRbxqNTwbUOXjBtIoGDpbWwibfk=;
	h=To:Subject:From:Date:From;
	b=XJ8t+S73zSjcbnboBec3WS8Kq0HzTw1wRlhMzawYY7FMCQt37KzppuanLud7xg+D1
	 rtUI83Cr7Fye6DHWE8b2oGrUPTxLg8HbHDXDFL8DJWaYVj7iQrXeSGe/CsiXqoSZuV
	 hl42/81nGok33FiIlgqiY+u2x/PaSBME619ClForKgxurn3Ph+9SShzunDovke3JbS
	 Qi6WSSI6Z9vFZpJPi4gqykg8+YfBj4cgACCWRTYKC/u34UpgK+qoWFuIy/X0Y8LQhH
	 7W3YNCjaLyJ+7NpyzbhuUbTQM2NlUUSuFlznYJBikHkpqG3NtXDC+Vbd7nVeYXG3vl
	 BNjh+v3Drx5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF425F99C7F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651705368.15570.2805394717298985666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ea5ad6efd3a173b11f6bc739956fdcd0693b44a8b2109c0f250e289000e4ba
Date: Sat, 18 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776517053
