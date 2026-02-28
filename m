Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C29A423A64
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772275494; cv=none; b=bSbje7KP98N38UEcpSPaD80XDvYFIxFo0afNQpsk6UKx2JCtAbQY2CVxRXh7o8Kt6TowoZdqtO9SEGRqzDIQK1iC670RDNK+ts15kCvKJsYnrB7Kxk2VjVRQw/VyjAOYI1QwXPoDCrJL1Ad3CCXhpth9pnb1ZME8WRunj1E1J/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772275494; c=relaxed/simple;
	bh=FHuu51+iMmjC/pJAQE/TWEOA/HVXjhFDo9chH5EUYv8=;
	h=To:Subject:From:Message-Id:Date; b=B8LF3h3cxqMQw3g+GOhaSuGE0oeBwIPCwURzuo4oAdzjvnS5dWwmZb6qKBI16bvuAo/IEc0sf/Pih7Gmh7BtIttvYJZt2a51gW2bPdfshgYZ9eboUUeah9PJQDDs7iWRHezquG7kQTrA2/9tOdh8GT/5RBABbokexaJD8oIqnLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsTBxJye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsTBxJye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8906C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772275493;
	bh=FHuu51+iMmjC/pJAQE/TWEOA/HVXjhFDo9chH5EUYv8=;
	h=To:Subject:From:Date:From;
	b=jsTBxJyeoj6NFN6I1oSABP775rPw9tGhbON5aEians9LfdRq2v+z0fCKAAvKTR4Nn
	 G3D7FdRyoj5iHRFxSirGD6Yt3QNrRMVnPfv21pRd38z4DIBWrzMShEfszQfumMUbR/
	 CZKJ3Ohjcl4QibiDEUDHMTpJNZAE2ZuMjVQoWQxQiIeDiRkDfGJfTnUJmeOLoZ1RNN
	 JhGWEp85CYS1XtbRT4O3WcWTm7nLtnuXs7wGJoRLJgUOU28Iq6VHEoMInJQeW2xnqY
	 Y1a8dKb4Zk1GrVS/O6+Vw8k9x/s8NWZ5q7EYeqnfHAjBCVAdXzS9/ReeI2OUVnDjE5
	 obzA/ctlL29Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975DCFEE4EB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227549358.4660.9877996199019337247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7a882f5b7b85c4496bfefc03a33f2319d8b1dc97aa3062d809b5d5918717a9
Date: Sat, 28 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772275493
