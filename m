Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017178475
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711829297; cv=none; b=MQw06Rsdk+pvAEKBOOJCE/ZD8vXwm3+O+9k8Vy8dhH7euYI+7aeYG7znh2hPqdtizPHobAWLTd2Jn5mrwy0ubxYPMLZi1vA3G4ALgLh9S7SYXafelBs4QNy0qkQ+tAAe2SNGFYeb+1Mnsz44NkK4qKosqbYj1XP8WOv4jeomKYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711829297; c=relaxed/simple;
	bh=NIpG0mKc6y/m4Z3t9ofjHaYPVTG8/+K8LNGcwMprZU4=;
	h=To:Subject:From:Message-Id:Date; b=KPrepn3eCk0wdheOj9eRw0YP7GzxqHgyGmPC+ZFhwqR8TmTR2TFd4OQ5E0fTEmJJxiKjobTgxCNJG3Vhiq+A6g9fc5Rk/MwRJ2VaP4e6ts86UalvpNnjWGr1TsomKHKMBi7KmUhgtzUDmhTWmryp0wCQ3r3nwsa+swHzIYC5Cmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEOzKzwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEOzKzwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7477AC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711829296;
	bh=NIpG0mKc6y/m4Z3t9ofjHaYPVTG8/+K8LNGcwMprZU4=;
	h=To:Subject:From:Date:From;
	b=fEOzKzwQQ3JoJuI7pVGkLKAKFrFDd2D+yG8Nri1dNiDgomeO3aQENFjaQ1EoK0VhZ
	 yB5jmwqnWcnD+Wap7pNE7jPIeuBI9za4bdHnky1Tt/He/Y4u8Vmijhv0iuepPMq1EE
	 btHU2zbKR6+b8NmG3i8D+qMoazI3Q/TmtTDQjcAQOtDLX3GG1mgiLyUtjZjP0jAqYI
	 8N9WeijFh7clGhDJ8fWJG8UV3B1TZvPIW/I6/32efIIkN1c4E7cICfk4qHlG4pMHG4
	 SD/5Bg1MI8qJHYM6ASD0HPPaIOUpQf+Tt8PBMeLyOe8dAkx4c73jFMpl/umRTY3Ljg
	 JRwYFOTOW5jfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61834CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182929639.25016.8610723633433587412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee4f0c726e55e5c9a4344e240f842430a07e051e3908b9e9361940435059161
Date: Sat, 30 Mar 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711829296
