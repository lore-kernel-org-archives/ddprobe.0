Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5577C367F4D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782849514; cv=none; b=tv2Jq9Tq78xawTtnk9cMY3zirz3MYWBEodgA4AreeypdDc7BuDmzNEj6blUbbQ/K5xwZ1n+/NnaE3iBv46j2qrXn37IXAhlMrlDxpHWnxD3w5z5MQPt3avp/wivh5i0evYRK6QPw8DtMRl2NMCkmBEKb+iHGp4ipHkGwfgo2kzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782849514; c=relaxed/simple;
	bh=c7eW4kow6UnKTHaMStJbdFIk1ZYyYXNFu1VtmKFgWcg=;
	h=To:Subject:From:Message-Id:Date; b=ZRh8rxpl4CafZ1IaVSMywFgnkgGAe3LeJAoRAXx02A5qHBR7oiQllsdmq8/gO1mU5ppC+bHpxRsp5RZ4hNbEGav2vd4qf4/2/hcwmwNkaOD2HRJo5sPotLlYwOtFiAUXh7OhR8P17+e2cTWVSxPi9/LVYrxy2+yB2Cx2tNl2J34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApVg87XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApVg87XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9242C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782849513;
	bh=c7eW4kow6UnKTHaMStJbdFIk1ZYyYXNFu1VtmKFgWcg=;
	h=To:Subject:From:Date:From;
	b=ApVg87XTIH/As3WjHY6pO/R5ltladwE6dUwWdL5MjmngcRIVhuXqUYxOuxg27858Y
	 MDTwhARy4ARcoLFT8uaW/DCSOgJgZzI3FOF6r8pFLQmUm15yWStxjjOlxf15+mVpbe
	 kAjBQ8TIAYNkREQZMhYlfbVn9v462U9P134OVpwHNSx/227An7UIBuEL79qMDTYSjm
	 SyLmhqP1rdEm3Sep03iPk0vCL4VspouCsuHNX51heTr35hiXI0VyesoF+ZIUP2IuWh
	 fmGf/TpmF/JjXX9A3tMjqocxm/XXnMARtkyaKNBfFHwOPhgrErtdm5w5DXlxF3jinM
	 Ev8FIdtZkvnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDFDC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284951368.19607.4005387805622163954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484cb521e9b1b89bf2f2117155da2eea8f05f279ae3908fc0380deeeb1e35f7f
Date: Tue, 30 Jun 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782849513
