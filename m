Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A792E9729
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780954474; cv=none; b=gsa0/gN5YXXtTB1Cn76bgnb3EIfOCxedc6QSbBJj3Jt3t0vgGcy8RmpgEuiApS/ZtmJzvJ8nw45i9EuZo4rjIEZ7HeFzZCwt20NGi+zAW/QD8/3ImhtrvLhvmZuOEQ6MwH14TbAC+gOFGS7t6WB4Q10fv0KRdJrRFUb6im0UDe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780954474; c=relaxed/simple;
	bh=zUad5zpI1EGC8FhH/HYcVDhMuTmKXjfh7b6P3/EaHQo=;
	h=To:Subject:From:Message-Id:Date; b=YOEZ/vx17tbr8VF1gOT29WBzUImZRYEE0lpNlWKTlwYjyQvKxMVfzhYhT8HPXUXmK8A2kTFXhNnGlMkQROcB0A2lxW1EoS1uMS3+WCw0V67mrRTDZmzMfOKZNl5gVesqwUI1NXnyIn6UVRK9hy/td/rUWs11i7aWlS3n3evRKJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyB6k1iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyB6k1iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFC3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780954473;
	bh=zUad5zpI1EGC8FhH/HYcVDhMuTmKXjfh7b6P3/EaHQo=;
	h=To:Subject:From:Date:From;
	b=fyB6k1iu0K6beynKukjbzS/9JTeEr69quhb2Tt1MUxnQuMjIslhOBOhubYEF7LO5l
	 b3hTkNWPN5bHCfqafVQ46boSDSpgX4RgkQ5o0NrlONxkikUxn7KCnVhfVpGSGnOYRW
	 QB6fCmQdjJ85AH2HWr7qStqtz6Z3au3EpWrrn8Xlfz8Mvmp9uo2CWrAUH75msUlK6+
	 28sG0QB6lrcBuBTc8RI+tP5tz6TJifQln62+nxq3L3KiqCbKujxmtPTGx25fZwy2Sn
	 veGsBw80OQ9p5G4vIc4H9zpqX5eplQ1pp7h3F0+3KzC7YTTL1v++JSoYbuuBL4Gv1b
	 iNbBWZDXu3o+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF9BCD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095447370.5096.15119558021094873801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd16100e42d5b661ed493ec65f99cde9ce10154bdf0a9c0120cf44d0c492c59b
Date: Mon, 08 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780954473
