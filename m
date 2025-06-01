Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2713FEE
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748743194; cv=none; b=oILBpUVR11kTD5xMsnv5DKDlWu6Q0ioA9p4mi4FjmeH0qluF38FYjoDF7Cyk42OUHoDeElHD7n6iTpvtTGfPW1MndTN1K/wYpbxK9i3tbSCfWaUW4VPIFWQZAxyinuW3CsAphWY0lAQ6/M6zXw6N1l6UmNhih2VEkkVhKqwpnmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748743194; c=relaxed/simple;
	bh=kta8Tc3E9paCA6I+vhbxeDbw2eh9peW/poxt+Wi6TC8=;
	h=To:Subject:From:Message-Id:Date; b=uDPiKBW8LcihEplJGQoWtDPU0tlTCxWtIqJdhkHCY/ct+Ij5V3PVrmmV1Xke6tNnOanDc6r38DC1CQ9SWduhg/e6xla+MBM5HWCw0T3KFO0ZG5Ww6ZJkrXuvwU+g9Q1BLTDWpLNs6Wii+c6KXiJ32hlF9FpTzeK25XHlUy8UGLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4ycu8vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4ycu8vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8836C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748743193;
	bh=kta8Tc3E9paCA6I+vhbxeDbw2eh9peW/poxt+Wi6TC8=;
	h=To:Subject:From:Date:From;
	b=q4ycu8vc5KCejWjr3XfjAf9pP8Vm1Q9e4VpmynRq/XPIZuPX24XJszSxMiLB/Pz6k
	 M8VBTbOMesmRjSoMCwH0Oi1e7PYC6yw8W5+BdLZ74D7zqA+fbtDlK8w4WcJHPkG4YX
	 7SZFbqJgIOciJwz1pbJd/R6IzmnM5xhRjlqkJABEvfeRlskjhaAhGge+un6TtztL8h
	 W6wLOS7veWA5uDTLk4pP/Uu9NpAsoiaH3KyWGbKb1HB1+Sn69dMeKQhwaxT/Q6dMLN
	 wrsO1ZWWf2pgz2AB981d2D5CRFx7+pvy4jA7JMD9DWYKSFbXr8MThzr2Yv+LEuMhuR
	 TQ6NpNzVA+nMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95793C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874319358.2178.10428980084612572314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbc58de5ee47c095d017f81b691922d2720e73b14427e5da84513eb34b4ba01
Date: Sun, 01 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748743193
