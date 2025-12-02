Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEAB1C84D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764676974; cv=none; b=QK+YTTex1Nd2Ei1j/TrMnxlxXtJOo2s0Am1nNmI9XCrareHUzVxvy/ZJlwx/wTwMpts/NG76XzIVB/8kl/qw3OuLboI9V0T60dehQ/p3A16wJh3oQCDvHupAihjy035H60ycvOeugabJyd/N7jHco13blAEIPzxn7ofYTJNYeRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764676974; c=relaxed/simple;
	bh=CDUFY3r33t3IHH/ZBDydTPS8ixuu0qrp4URg+CayusA=;
	h=To:Subject:From:Message-Id:Date; b=ZwzZ4RoLRCUiEZ6ok56eUucqRf0kk5yE3cddK/xRjeXZNSPYpUuKlhZGcGoL/Z8JyYFhJwNJePM2W3r0fSUsMlYAao+BmZ1Gokcd+XaIo6ktrI2eJJI+gAPWVRtCvCgrnSG+500ntB94CnLAkfOMsn3YTmeCtZ/ARwFukQxVU20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqW0x1T1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqW0x1T1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA0BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764676973;
	bh=CDUFY3r33t3IHH/ZBDydTPS8ixuu0qrp4URg+CayusA=;
	h=To:Subject:From:Date:From;
	b=PqW0x1T1Z5Ngd5hU9IsL+xVjdi5o/F7DW88n033nyRu5bbPT94OxUZ/ui//NWGdG0
	 sFmYRwui7n8vHi4AeJZDBpErQDivmOWMHDJeSLwQe/+3HUKsXfBChTXrt70IBPpZeT
	 3acqRYPsH9H3N1iG4SXjsk/rl6XBjhqpMhfGCZdPQevSzcqv0U77ctsCQUwq5Bn9P3
	 /SkMd+HPkaeF626zquQFQ3JlulsPq898PQEEM8go85sVp5Klx5GW/BhOyeUz3zVu5W
	 roR0zCcrcuxPwItsEizOOAjxScH0nT6icrlpkqAEap9RaW7F2H4hW1DArXVxlHlvXC
	 en32ZNjCvWISA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C7CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467697358.17284.17837301706146754198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faf51a0f049fbe39b5a41e0808157fb8d3980e8578fb2f7747f2dc669afad7a
Date: Tue, 02 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764676973
