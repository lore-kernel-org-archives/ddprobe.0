Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F43D3DA7FC
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770387234; cv=none; b=cH17dgXfcJgEQPgO4g9bZtspFpy4uQb0KWtentLqTKDS0XoUyHJ22gLESxAnQdI7d/f4+s+3uhM8rTF0DYxvVZcPjP2WheAk8R/+DcpiDq546qBIcUmyfToD5iLLQOYJ1wPYgaANv0w8OaCDjBmsme6eoxrhwlcXm3PONp1yRPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770387234; c=relaxed/simple;
	bh=GGGSmQHLysKUH8/FgySXwtPcLolMM2bqigJKLbFA8d4=;
	h=To:Subject:From:Message-Id:Date; b=SpDzODl0j6CVIcEJ5OKHrFRcZf4k8c1UvWvWA/2WQr4WB+4UyQyMRF+69ISe/Ac21OeZJCbjZjSAeOYtnyeS/tgbnmRh92S2wZVRJR9mclsbeuH0jvvqQlPMDNV0arLFn8xw4OO6VdXjQTq9ieDJFMenYBvp41l9VJ7xjudp1lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCvEPjqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCvEPjqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AC4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770387233;
	bh=GGGSmQHLysKUH8/FgySXwtPcLolMM2bqigJKLbFA8d4=;
	h=To:Subject:From:Date:From;
	b=sCvEPjqhzFc+GGwdHYKaIS2Hg+ss61+jvpOiGvyYp+t3DXVrMONit2o+v25CriP0Q
	 9OlGaO13Z3zH7BRdjWWk2c9Lu8f4eRT6JFKLA9bdUWTQlGYAa0Z4sLfgoKm6lNOjtv
	 Hpxle1DAQT2EotWxKYxS0+OJ0efAf7QBGOnIabzkiV3Km1qTKMvmi3tw4V6kPsficD
	 hbOirrhV8MLhBOPYoovEDvGxVDENfxiaFkabUUy57eVCduxZ+mM+2eSHzZI3mK0Awb
	 jW0RvutQ8fR/GR9C9ecWmtQY1egAu6nLRdgGOIl3WHCsOAaWsq0iRCLibLYksnHV8R
	 vWlqOGxceg+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98679EE20A8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038723360.32542.9444320002573974213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009804a0f05e8c6bfc96fc1eeb68ede82155dfe6b8f602ca6a88e51ca36ebf9a
Date: Fri, 06 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770387233
