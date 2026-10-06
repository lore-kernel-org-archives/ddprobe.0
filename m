Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F75A3DAAAA
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791281434; cv=none; b=Pf6j2yHSUIA5HZCa9gohDprGKz3qgGTo12bpSR8hy1Tl9HiXxO0p/W1TUCptDY0i2LXJeBdbDJ7KOEk0IWCa5FLqeNlvl2X4TbBbZVeUNfvEq7IQbjI/OrSqGIPLTRsIbiw2p8vFzl8zGUHi4uPSogbL5wwn61f98NfAt9fj6jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791281434; c=relaxed/simple;
	bh=vvdbiX3ZwHS0CEkrf3scqwTvNxi+g8MO2vKtDVtaVPw=;
	h=To:Subject:From:Message-Id:Date; b=L8e33v9xzT3i0A1ufj/1ChXocRyVCU+tgqZiCfY4V5aHrHr/FR6lkC9QfZsarYlTAcxa+4TsbdNdh0e5rAOZd8DdkUrWp32zfyxp6/zC5q//G9j1d5QsQRBXKjpvE12jDErQIpCq0v5YeRyhnZhkbKWWQljFZfsFnL6PfvsTlLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwU8D29E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwU8D29E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9961C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791281433;
	bh=vvdbiX3ZwHS0CEkrf3scqwTvNxi+g8MO2vKtDVtaVPw=;
	h=To:Subject:From:Date:From;
	b=OwU8D29EJsEFO/+3Kfy8WWTIXwxY3TX7qdXS1m2yyzSfk4cN6Lu7yoOiauOvWGdBY
	 nL5Red66qKtjQWMIdT7tl9LeCJvvFhON5fJ0kY3cYNpfNCvAUDJPXn7SsIAU3tMjaR
	 lOcSs0SDV55JUpxIaq9jwY/bHsDbcee9361kmECHnYuVYLCUmgNmG3E7PqkFENrC0E
	 gBuF16yzgoz38Uv2IgpMZ3W2DPsTv1RUJOMambjU6PBrxu6urTKrGvU4xBr6hQp33Y
	 oLmNgFktHNoroJynLmwOu54KcU/tOzFhdy/vSbasoe4f2drL4TmJAQ5fHgbFge6S8S
	 xQFRs7r5s0s0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15A3CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128143371.6083.17478148630060064835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6255cd15e1dcc18ff1153b61543aeb20b67d0d42643f46c3219dced9701c68e5
Date: Tue, 06 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791281433
