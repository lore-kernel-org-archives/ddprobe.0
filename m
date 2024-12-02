Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CE12E3EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157954; cv=none; b=Nb3vmKHHsfzjTcKAXB7FBY/NrjjS/J6LzuUe5P5lSkV4S3s64zLG9QETbYN/+xe0cYUaM7LkKjSDGCa6oWVoa7qx2URVjCvUjDrCHwy6eKgdykk9EQe1RUiqAXcOVCQeNyo/PsZeZSrcdYN/17C8Abisyer1gGfa2R120xyPIQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157954; c=relaxed/simple;
	bh=oJHMnjSkKKgDxcxzE+SmKyLm0Ak9FnlxBtP76FDl0ps=;
	h=To:Subject:From:Message-Id:Date; b=ntvumEasLAyhlTh0iUp/mpRPCpdRc+LO2sBEym/yTq3Oo10Q+ixBG6MIbdlbXHaHR1fLVGumSEqNBb7GJQYRqBxaZMSsc5jsKP3VWuA56HZXItRrAM8SI08J43p/qXw08ArJDAZV+NZ9n9kXEQ52+bpJRm5kuUedydoZ3x5quA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSsfNJMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSsfNJMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B3C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733157953;
	bh=oJHMnjSkKKgDxcxzE+SmKyLm0Ak9FnlxBtP76FDl0ps=;
	h=To:Subject:From:Date:From;
	b=RSsfNJMpHBopZqBOy5zPLJEZ4WgMb5n5vL4VFflSq/FauyT1MxL2W7irVaMkOW33Y
	 9b/0hRERjszpomRYlmKjbJe9gPDa4KSqBn0A4I5h9d8/x05fN7eIw0gMPl0HUHUAR+
	 gClrbMC2Nmo8bL4JddpSlrspJ4ek25GUWMFmsEtIAhXDW6TEunOY+JoeoVN9zQB2f1
	 U6/ccdKPrHGQzdGk2JWzOXzP7SK29MGa1t3Cn58oHPDFY+Zkf/UD3Rad/KF6d9vgfI
	 G/QQXeO4OiD9+1NczYo+xHpo+LlC52wT+P0+faoaJqKtKV/B9t6Ppsz+t57ZPyA58w
	 X+O99JbHuVGeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97068D78333
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315795360.4170.3929595251593313412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1aec93fb4fccfc92858d9aeaa3c9a5f11bdb444dc89bcc7cb6ab58f921e4b27
Date: Mon, 02 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733157953
