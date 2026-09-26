Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607EE3769EA
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790421634; cv=none; b=VFbsYcyTfjQ7H12t0bqXji118CyMMLIR/pyuSryfRR2DyVZ0jH5sPdoi6r77b3OfP7g1L8SAV55yEIx6ooNEiHMrjYyWlFSwkxg+s5PStzInK6op912TKqHlsHU8vxA3trI7iJdToOqB2oVw8Uo8iDFkNdPQYB0dz9bsrIX/c6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790421634; c=relaxed/simple;
	bh=MNsuzVVZJjES3DvgjVRFrEqExpxhheEPRfAYXepI0rc=;
	h=To:Subject:From:Message-Id:Date; b=po3XNWsUIZ65du3JcMTMqlFbJw3JWrwQqFY892K3QQZhQxLVpc/PV8gl6L1mrct5+Jmmvlq5AwE4+oaTPAdbx2rgzew5KoEr7j16yBhR5OWs1rSUwOilNMHiZP8qvg2tWGZhhby7/xZanZfGnFuINjztkR/wR8lDaMRumbjRG34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6dlexvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6dlexvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC192C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790421633;
	bh=MNsuzVVZJjES3DvgjVRFrEqExpxhheEPRfAYXepI0rc=;
	h=To:Subject:From:Date:From;
	b=J6dlexvEN9QV0ledJ5wPRcwJuxVSdeh6Oc92XV4Nm0D4oy9Ab6OejG68i5sOelEHg
	 4yBKaC0t7GHWuandH3RLONozrhb1yPCV9WtFOwrpq3H4lH9qeObvb+Gkm8IRIDMX7T
	 BLVsvmukHnc0YXkD0meR6TcOUEFgvw2yuNI/pkYNiMH2rm53bjHhlQslX4Bp4nBRcl
	 l1gEjqkOixJN5+35nUxH9w1gDFDP704UJEsb1CggMIJgWxLIGAmZqwKjFzTvnrvKlc
	 oF8NATjR32M1PaR+DLjuDv3ZcCd2jXxXC6s2OScl7YOoDoB9G3MxArs6OYU6qG5FYs
	 ym6TZo4tcfvsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9969C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042163368.18895.3588356870067997231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bb6ae83a255bea80e74d8de5f3f51db3b8f3fbfab21bb956c62b1c2d973963
Date: Sat, 26 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790421633
