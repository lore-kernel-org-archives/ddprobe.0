Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B00A13B284
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772424294; cv=none; b=HlU3fAlF8nZqYBkRIFi6VmITnF8OtQypja64SjvlRsgCZsUsM3Ihph6mlCPmUbWWha3QtK87P0SzW+VG5FYemkdF0stJAzfbx/LTj2LmUJQyNpygvCmiEi2d4NR19vAXe75fo7DLnbltNqxVAAbWIS5zeA+MuyigZBakv+11K0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772424294; c=relaxed/simple;
	bh=At2Nu8Q5yszIMAUPVPEdFX5OB+ElAiZFrvNgwA2I1w8=;
	h=To:Subject:From:Message-Id:Date; b=onttxmoBE4zEDnweY/m+1ubYxe7UyCer55kfbE3QFC6yGYZ/JG8BdcqlH+ZtIaDcWZjF1o4XxyCvciRZIf+pGp6fNdpwhYHjfzcdDOPWkKxHot/EeFsU1uB4paDKlGlpLxB2R4uhrCw/30frmSigcNWyARq9TIDOMO2C3g1fBaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkMht0dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkMht0dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6789C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772424293;
	bh=At2Nu8Q5yszIMAUPVPEdFX5OB+ElAiZFrvNgwA2I1w8=;
	h=To:Subject:From:Date:From;
	b=SkMht0dGcv4KYc6oy/5HijesSijHxDJGyy+Hzo7KbKcl1lYUAUUGuKVlQYC6FQEEf
	 YSy9y2+lDQZGtS7TQ2B3yeBa1Vv21VzK4ntoeI5cU/o/Cp82fRkeUb7Xjce/vOYxI4
	 qEXjvhLz6JygpCDMo+VyqcgHunyvl4YyuJ/SEAwdR5Q9/bgCreET5sI5oVyOlXHHg2
	 EV7SiJAMDUDyk+E7zqQE47eFE0EtFjGy6XH/fy8Ic20NmVlWNGsoZzc/YnwpC8opE9
	 kfp1Jow67Otcc0xl1KE2/UP3JE1W2hGLSTRaV0Z4r8kyNmYrBuGhoxcwCGoNwpYKss
	 oKqcK3k6YaTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD6AD58E4F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242429368.4002.2265500209830143704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f25fb3dc79e39d4d6fc9ff6d48c25e888b405bb846912bab1f055a9e5dc90d4
Date: Mon, 02 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772424293
