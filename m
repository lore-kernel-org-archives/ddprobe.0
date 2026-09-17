Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414784FDA45
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789666234; cv=none; b=S79gHrvAmIRWyyar5W7bMsgjuANduWnJhLSAgryna4dX8A1VZTY0eUybQXeYIOMOlJMKP6mo9Ld5AhXZDJizPXuyVnuRgr8ed+4/baGn3UPoGAJ6wctVduyiTYpWvI9QGFcfGc/DQvJ13VWsEB3QK7UFiwQC+hhYkPrWjW7phPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789666234; c=relaxed/simple;
	bh=R+15W4otVQ7DUTgQDWBNCK4SMbJqlmycgCQgjojchEo=;
	h=To:Subject:From:Message-Id:Date; b=kkS+yWaLR1gCLfX02V6TJ/rXqTIIQZqidyYHGkCTky9MXlLPYtvHxsjXZuZIKzkQVqsJF72hP31iLmHkekbbxAOSQW/KujFHDKTpoQNqXG83rLn7kJYJhBPV6ZB9Fu0mdtdYSAzsTOx+DWxCU6rSBdrUG7zBxU5QfsR90IK9HOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNqXuf6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNqXuf6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789666233;
	bh=R+15W4otVQ7DUTgQDWBNCK4SMbJqlmycgCQgjojchEo=;
	h=To:Subject:From:Date:From;
	b=pNqXuf6/tKpOO/lpVJZTkpLZJ2yoMLnSobtlIJuJWU5AeHz156OffdMALN+m7HVvk
	 W9cT20EKYbIOf03/7AZjArila2xrYn/HH5bw5BR1f+QxXPwrcvedbbM6zwAJmDaP2T
	 nLbAuMN/u/knaO4Yf9MLp+jVGkbMlSUj2NUAxR3t/l9EIP3Zfl4Qw9Gi2L35ixtAUy
	 QVQyXI8PiVbYE/Cjbcxh1psUl/BkYk6chuZrrDG6+fZ8C9U3OS+0PIs+dhKAWuPBdD
	 bODcKm0C2xRyZ3maZ++zNPBnDVzIHmub5AHsx9ag8dvJWH2q3LiUrTJA4h0kQD712F
	 sD5S/pE/L8FMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE967C982D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966623370.30936.12598771391769233469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89e0ffe71fb527c224d21d4cb607f6d0009815f13c9ed502dc647603e79de4d
Date: Thu, 17 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789666233
