Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34435392C32
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783775314; cv=none; b=E9TClxoYwjIJ3SWhDCjFAHUALylvX7REGqr3gVhOlEZ7rYdy/4dGGsIIpTNIkos0rI8aPrB7Kx1mJ1KZSGPzn1IOCIvIxZx6FDJkt9zHuCLJbhf/h7i8ZXOSDIaZXKT0g7cvEoSTq9M8+yEn94I8BZKCasEnHGFewsi80Uxo1MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783775314; c=relaxed/simple;
	bh=4ufQ1XhDPGBiWkkidHKfCq5jmgR9On76LxOBCurlR6M=;
	h=To:Subject:From:Message-Id:Date; b=iPUWi+RIMofYuprcPsW4+Jn/l7EAu7XJghdgKTgqw87Z3WE+RSSskpu9xcacdLiwgZKLyC19LBla8WRksoG/mljRXNAp4h44DGSVdE5VX9VYjma6fJ/6KouB8ggnAs+Uu77v8v3WLx0iyt1nS0BPzOnWqlrQbjQ+zv93ITZ6Zo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwKYpx6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwKYpx6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD85EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783775313;
	bh=4ufQ1XhDPGBiWkkidHKfCq5jmgR9On76LxOBCurlR6M=;
	h=To:Subject:From:Date:From;
	b=uwKYpx6yMSE30R6qlVCTN8iQBVCmGYzHtk4OzKgsw7Jd24TVwovchduplWSObA8iu
	 59/pG5zYAHMbxQnZdCFzVIGy260migZV8dthUEhMwWaHaCZiC2PpnafJwqI9JQ2I+J
	 JgWue+0/r5CR+Adk0WMg0yYwHZZNWkLWUTI9LhtL0ef2APkVZgZsdhBK5v4hjfbHrM
	 nx0364VdpZ1DCRnJygVRQGqJfgp3jbISZthSG7/iW74+g+7k3Q4d9P55/PPE+jzcb3
	 N1g4+Cvxa1cRI3sc27ccK+h7LpLUFnzvx6HVmfsZGYyBqlQ3w7Lic0Kvxzoxf+j4Yl
	 0h3NxrUgNTSdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB34C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377531368.6655.10680402102030907496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ec0a90b90d023d31dfd36715d04dba8f936a1466e4f88ffedc810ca40cd5d2
Date: Sat, 11 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783775313
