Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B322D320D
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745932194; cv=none; b=ZBkFEFctyjVPkJ0MHs71xT8HKMgAu58OvKJMoGgAYKRUj6wTOb9vpV2RsBMKoMfx21Z8o63cUwgOsaUs3MBy48ImxWZouLh8kXqci4QroBTs46NN3rGKfGREA655V8xFtxYULo6Hm3PCZdx5YXYK0raOAChnwcx2FhgdhRLKp78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745932194; c=relaxed/simple;
	bh=rJ49CbkrL/rOdm3FVhBixWMJv8Ki/I6eaOcQAx5m1M4=;
	h=To:Subject:From:Message-Id:Date; b=QxNu5twtJS7+bMYHjlyScDJWCZFx97nDdkHj3sO7wanDCVPsKGJMbSBmuUMREqFvpFB/1uB1ZKR3czqt8M3nckv4rB6iNgZlzJCfALpLdwkTLIaVbUQWz/mRp1HnCKTixg4pEXr9UyOF9cit8lqDoLWlNZgXWT3ZxfN0LFoP9vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJUQk0Yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJUQk0Yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D85C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745932193;
	bh=rJ49CbkrL/rOdm3FVhBixWMJv8Ki/I6eaOcQAx5m1M4=;
	h=To:Subject:From:Date:From;
	b=eJUQk0Yq3l9jgosNuLdyA+9FVhp4GFHnrzQcQZZgplaIY/KVfm3XAPC1pLoze86nn
	 xEw6KEfPIJB9ccASlNfDLBrsb/hOzNNHLAPBrsuLp/2eFgRJ2hbF9clv59E+mU+ND8
	 2ms2JqBEWemU6u/670QifXZR24Szch4KY/JM/b6rqdMJFiRFSCK9u9UjH7jtd0PK4J
	 3UKjTOLmL+aacsp8c0+C8rwBJC4zPlWRFMuDxcXJW51K3EfbtuVab0bf1L/+P7bDtO
	 QQwvSHl9ouDkP5s03FzRyild6+m27m6T+PscEkH25sBpQh0vlBikPZhePAvluPe8vU
	 1pVHzOArgM7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE2C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593219357.13335.13698676258513482742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd3617c913d36802cab61502b348d3c56b4ebbeeddf065259215e69012896bb
Date: Tue, 29 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745932193
