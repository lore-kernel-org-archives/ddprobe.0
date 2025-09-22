Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA8F3064BC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758544794; cv=none; b=sIvwgMhoKvRuIGlocz601qxyIYBAJGsiC89FRJUfkwbhYTCY84MyHb42/pBBkHWo5qrwCFCkynPgqlCzxNQf868nAXdblGYeu2SEscpk3IJzr6KNPjON2LHPPlSCc80J5sX4PwG1Dqktjtjq/dDAI64A2LIgphDXJSRqVl4iM2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758544794; c=relaxed/simple;
	bh=2Kn87OvyO+z1FNm4LUipifj2f7jussyl76brcbRDN2o=;
	h=To:Subject:From:Message-Id:Date; b=gOJwJ/XI5K6AajpywH+Ia6DQMXp69RMV7jgLspggh6eJfarGyVrRvweink20PCtxrrTJxIATYaEhujaP4FS7ecACrU7PJOFJN4EMAg8+gkPmywGCXYfFhA8VReq6V2zy6Ugc43cWw3r4pAJXpn4FVYbUBGy1+crHeitFJz+qOq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYE2naIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYE2naIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758544793;
	bh=2Kn87OvyO+z1FNm4LUipifj2f7jussyl76brcbRDN2o=;
	h=To:Subject:From:Date:From;
	b=PYE2naISo1GBU+hDHt+okcJYwZPx9FjAolJH8bdZHaaM6WuakTjnaYYd8ALIdblEU
	 Bly4nHwV5kJvbMdhdFij8iKIO8pME3qEYnavZDE7+9APlGjRr8YZjUG0zqNa/ulgcW
	 Rvcrn+XN5yx0zUHTH3Jf2kOPOFvbhhuPccFUMseLBySicsSmubWB/dyni2HH97fz8L
	 fhHOWOz+qMnDmxg7v7tKh2HYEXvCeVQf15gum6kyLR8rXsP8AIb2xNr1DxqlQ+3Oc3
	 z19mCpEv19R9WcAW3JEz7klAPlOSPPEJFDx+NXycpTqqxxQ1AbRUTtdN3z3+MAth6A
	 nlc+P3+zq/CNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE4CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854479359.23891.3281780477466313348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6efcba4e410a9ec63041391a0619205b4fc18ccd728ad7ce9c9eedb5e04b4a6
Date: Mon, 22 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758544793
