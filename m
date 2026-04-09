Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F1B22F77B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775750253; cv=none; b=pFgYPHyJdoIZSwd/Ogo4CxMeNlbHWyUh8RvMU39WhXfMewpoTMZTxtu7fk5xbP/icQlRcEojmmX/642OxgYx4cq9NwHCFKHqfRsFjdn3D8M/0qcz/cLYICVUCM+5qjHV+b0EubVhP2oIUw+DewiQ4ZLK7/vcF+bFvPFU6IQb3g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775750253; c=relaxed/simple;
	bh=gNzrxZoCSeaP27d3WzGVOgt57qF3GKYwq028dMD4m3k=;
	h=To:Subject:From:Message-Id:Date; b=Yf8YrqeZZSVzRL23iXxVGJTM/ssH+mEZgp5LcgVYYc5DFH8oSl2PyXpUG/EG0agCSToRBkHa5/spDT38vA4Xi6cYd5L8ZuP7IE1ZwgWoGjMHUlfg456nXGva0eXS9JIEQgsD9EgJ+9A+Qa3AVVx7Ym/hFG04G9lJ5QYeTFtztbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB3hkmOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB3hkmOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA25AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775750253;
	bh=gNzrxZoCSeaP27d3WzGVOgt57qF3GKYwq028dMD4m3k=;
	h=To:Subject:From:Date:From;
	b=uB3hkmOQ6gW92dcJGTFqkROUKiAduP3Xi0LH8Tf8kXRNcmyPApY4LIbAuCylpq/4v
	 TpHul2k6Yc4oomReRqKbo3mWf1o4xH1rhrvwU62AV01qGmn3t+ZKMePPNHXVvcB/Z0
	 pB/qvQlM6Zca+Psk/jwVB1pxkqkLK8h//veruSzaRwOGnECKU0o/GzW8m4Ncxc9wbX
	 cNKusjVpv7NOPkmtxMmGIHNB2BDKF1RFVbw8r2DEtSGzWYtzdudgYmsluoH0UuAg13
	 XCZ23nJrRufmcMPSzeVPgxmqhQL4aWZyApCkcz65XV7vbr+NTP88WfkOj69FsqCe34
	 K0aZ2+zLFTECg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F9F31E53
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575025368.32143.3467997236322629917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539b74b5156d7af3ff17918aa4f4c6ca2efc70f11c0559d98a02247c4f1bd194
Date: Thu, 09 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775750253
