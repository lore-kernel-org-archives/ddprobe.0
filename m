Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3322F158DD4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748105394; cv=none; b=pBt6DrDUJ9J4G/eYhd6PgmhBM8WrGbGOj3oSEdmMZI87tRoKSgQBlL+fkyZwM5K/N1217DXYNYDXF11iJ6G+iuiSAEgbXLBxWsteYfcQsE4qn/sba3UBrnr0Uk4PVaXxXhCMl1VgmLTgl3rwessNxjlAhGm4uphruGGYStMZF1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748105394; c=relaxed/simple;
	bh=Cv8H5uq27wjc4CmltheBk3STlZl9nHFRdnyr5moTygY=;
	h=To:Subject:From:Message-Id:Date; b=l75dge+I9GuErIVuJYdRSI+T2F0IIwJm6DX8qrt4LpsPPqWzKYdXkQztjlS+B18dgr5kVTQMfgKGjCQcjZjOB0PbX1Szw09ptePsGDzGaik78c/Ss041WATC4TOR5XFdoVoRYcN5CwYs9YfDyl8+af7xzNPt5VsTTlqJD4xRTTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nta/OvnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nta/OvnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1240C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748105393;
	bh=Cv8H5uq27wjc4CmltheBk3STlZl9nHFRdnyr5moTygY=;
	h=To:Subject:From:Date:From;
	b=nta/OvnHBANiSE3iZx1oz6TGfkTKcpYMM0RCVjzrU3XqN9Xn9BK7QJoF1P5vsXCPz
	 SMHCIOuFnVElL1pus+Y1Hb9MGSG2iGlhY+SKGiZ6smk8e5P8xE1itTNRLWIZM6hOSk
	 i7P4XxsgskHrz+OdOJ594CkEh1ckv4zPPUIH31zkfsW5VU9azRX6FzFB1XBvx70GcK
	 nMpwtBSMiJgGwORgY9u9ZgM82xO2npBc+y0kXJTm3hYat6VK099+0QgoSisjdMPmBI
	 TnyMY06DXK9OgsTb9c0CsP0rH3Iuy68EuLucmrFb4nWMoG3LVTAQ7n0jKIYlgBGvMT
	 JOYp4dre89MIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E534C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810539357.29701.4134904343464899471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356205a57ad5548e75a3c6f12fbde23343658640784e76b4d07c173dfdf5fa30
Date: Sat, 24 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748105393
