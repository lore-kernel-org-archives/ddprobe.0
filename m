Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410953C73C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789816834; cv=none; b=oXB+vck+dq3Jtp+1dfet25zKGX5/a1XgsmCCfVfJjA5QShw6YQqYhZG1ZCIL+ErbaiVl2Vssnmc+AXhcOEbWI4XVI2qDDQGEVC/bsVyEKffB+SgFfn1nDXhjdGnGvo9uJvflJUTMV6aKPVsmaeXp4RRgoODwj7kwjIav1Pqm/po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789816834; c=relaxed/simple;
	bh=Lt6sO5k3CyhpBmn3umHnnCTCEOi2laSH+Lgu7jNNU7k=;
	h=To:Subject:From:Message-Id:Date; b=SJFwGRUn5iwowENPIm5XCs5VyjvQyhpIAxAyn82yLGs8zy7Yfte6IhzDEVzkwz9ujMKT+0gWZgLMiAdSv3JWAFplrirRhjpOWa9O0au/xenQsOv+TiHRB2TvdsVV7YmlHDVw591tRdfjtmEV+xsEPwJlh7um6GD/Um/nincYmMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVa+c2OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVa+c2OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1157C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789816833;
	bh=Lt6sO5k3CyhpBmn3umHnnCTCEOi2laSH+Lgu7jNNU7k=;
	h=To:Subject:From:Date:From;
	b=EVa+c2OF0gE8laX7X4HgQt5du9GD6W0ssDC/XjEeluGUO8kdtpLHtoOme7K6aD/ij
	 GWMa4sxWpy+LyFd0bCnCU1yKXp0jQb8H+3ywYIEMjgsyhh5N2kV8vmQ6GCP21m/FiX
	 d4XmOd0v8JRj9Yrh2vUBF3u+S2FPmmzwOS6KmRVdI5l6vsvNbZs18kl/HyU5zdySmf
	 5kT2vKuRLlQg2OOMPbtmigHtW+EXgsWfuY2MDvZCT0Vx2MYCowvEbJlHdNjF2fLGen
	 GxRZQ+uja81wnINuLiSjJsUdWiR+paWmHuoaMKIdrbTnHBbtsLE5dq/8QJrD+zH1KT
	 RoE/h9iI00azA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9168C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981683368.10430.5213554831555326250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9661e523ee20725c712c0c222211b4d53407e39f3dcaf11fe59d436b880f419
Date: Sat, 19 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789816833
