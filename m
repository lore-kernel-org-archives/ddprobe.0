Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DB0220F38
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751962794; cv=none; b=maqtWsLc50izcIS8NuA4BSiYQYX1yuVNsql5QWyEb51ngYJ40qM3GllM22n7w/ddEv4d+MyKFeRXgHbFClL7kNQ7J9qRcjDe2qmxxMJ45y8Au7aQkH2kv4Plo4DrleNWUkV3hSDjD2kafRamjZNHG6dmuOeAzhlM3eNnRpeqNS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751962794; c=relaxed/simple;
	bh=ibmqOCIb0DGI8gfuUCApFN1sSKfafENaCBm4GQZF/4s=;
	h=To:Subject:From:Message-Id:Date; b=iKTRp4QWMCTlDt/fFRDxtZjuIURwiUOpbOfMxhPqmvoRaTqCP+tO1JtNcMc+yuUXMWyZsiC56Chwehok0T7wCD7ERFdMW21CWk2hQwZ5KQGei84i0OMuZhRBFAw3BBrbuecosfmIZ5GnF2x28S7nN8pVUd70PqrJWin1VPz/ni0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMj50IZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMj50IZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751962793;
	bh=ibmqOCIb0DGI8gfuUCApFN1sSKfafENaCBm4GQZF/4s=;
	h=To:Subject:From:Date:From;
	b=gMj50IZsOigblICBJ02GFreVB9CiZtyjrwqogfgoDwsSS3tr2CS8VWap2LkgGTAPJ
	 GYi1XxDnns7lcYNSfgUCp2KWZ6AjodWo4rzQUFGUF7067UmsegNQubADh48INSFiWr
	 GyNvWCNvfFOflUTfveqqy6kX4veG/MRzEQ4S64gwF5igXmJou3VtnmHq21ai/jVm3J
	 VctycGzMV0rMCoT4Mz2xA+zX4XTgUjaKiQY+tcPP2pEZURiRj8int2h7RBoxH8ZUtB
	 b3twhp10AQa5b+qkFzNGjU8csxN2OeW9L+4FJRDnHDsugGTGUIoNSXuU3pfY7rsSka
	 n9W7QxYSf+wRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB2C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196279358.8478.5067557820155049349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01abdf25b0d679273994698aae97bfe8ad5c0237e37f7091c88d1d20f344ace5
Date: Tue, 08 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751962793
