Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5734933438F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791671434; cv=none; b=NcfH0A3bWKGnhIUHtUiCYfgzyU9T/QBB/yD+XClsavFhbVeHzq9KI7uYEqPxb8TcED39vsDtV6zO1zwZckAMqYQbkdG4PhNBNrm2qI9T9hugZ7Vk70eEvBYTrs13ducgnqb+F50aGU7JiOxCLEyb8/5fGIy6vWTKGPW5xAXydYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791671434; c=relaxed/simple;
	bh=K9rcNVxvM9/1vmqx94oJ9nyFHJaC6VMVG/ozHrnJVLA=;
	h=To:Subject:From:Message-Id:Date; b=l5NVAKZixpPMidi35cUo03pGgonIc+j6mpkUMObkO39l8veXN/5CS4Bf8TY9WyxpEPK/8sVcizKGbWg244/D7nuh3QaQzQJxKDbWjoFUvxj+hVUy6DFXJ7LncyOexe0yzk+PkXbA/YYyBk7a6kN+tcErUja2GwjDwswdxR8dEuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELTGYi2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELTGYi2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BAAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791671433;
	bh=K9rcNVxvM9/1vmqx94oJ9nyFHJaC6VMVG/ozHrnJVLA=;
	h=To:Subject:From:Date:From;
	b=ELTGYi2zmfGCxoWyZ3hxD9On1qQcOJDJ90Tdk5kjOEHc2vyxZIYI2N6pCPlRbWv09
	 LUW2HbGm1LkVjWVukFIYIL2SW2tLgc6W9t+uiZi2caClg9uuCSvIQMpRAGxEpeAhCU
	 xL9FUuoWxAzRfIq2gnONFmKr2M437EzsLSrpmsFwKI3Zfi5uw4f71NQzCOsWP/awGu
	 oF2Ge0GQRbKHpHKzhsyk46QT3r2BKGkTgGziCI3cXi+j3KFtafrGJdFM8tbM+zvN47
	 MiIj+9siKyleBFLHe6jesC9hk9aoi4lK1RJ7nW9zKcu0i1UKbHarZV6CDKnfnWynoE
	 kQ1F/wf85b7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F4CA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167143368.14986.15717198153935509610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95f0169ac927d59ec928df6524400b76c4de2ff05ec1ead780cf011cfc435d6
Date: Sat, 10 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791671433
