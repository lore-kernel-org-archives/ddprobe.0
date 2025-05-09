Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E03021D3EF
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746787795; cv=none; b=Da1NFax6fAUI5sUSTvz57bUxQQDWyjouGUpxjB7F/M2iciYSA26jyHT7XW6UkmtSu0uhJA1aa2KTPz39/DXHRuNwollI9NX6lugpVW88gQ+MizEHxT/N4ceZ9KFuahcC3bJTp0cMO3fnoNBSjq8YPvwjDdiFEXs20Xd6Feu2Lh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746787795; c=relaxed/simple;
	bh=y8997N1t9IGJ60JJ1Bzzv3K9hJQw2hMnmgk0Nye1OF8=;
	h=To:Subject:From:Message-Id:Date; b=pQ2KQiOBXMNys/9/dzWqXfGgKb2CBDRx5Rr8AmYhr+LuCESFZBsQU78qJ6uGjJpWbmjeVnNbCNMlmrfi4YF/CowDM1Jwg1e9l4FXo01eEabLamGCeUwvfO9QS81McTshfsJdH/SyUZDi2JgEqjuAENwObrks5MxeWCIvIyLa/KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKqRDe8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKqRDe8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746787793;
	bh=y8997N1t9IGJ60JJ1Bzzv3K9hJQw2hMnmgk0Nye1OF8=;
	h=To:Subject:From:Date:From;
	b=aKqRDe8nVFJUbSILhfAkRSroQmvRdackL0gSzxvo+pK8hF5gNQX3JWPISwdVGpBI6
	 2Qhknc6o4o4282xB2LnUtk2YueTX8rB9jlGVlW7lw+5eJRarBQxtINJ5g5MavsYoTx
	 6hSdqX4uiVuL3TGDImmbdl4KhLaDzb9qss87TE46YvfTWrSemWuFY5aEANddZpa8zR
	 H/y/GLtpfhjqs5V4slgRc/CXGx94Cvqgd1TKi/0Cs9YSNOjRiTDlaf4SOCkicJVbT9
	 eIJn4BpC5J2ujmhprXHWQgqahlpaiFN9r0btAZd/9Ptc1X0wS4WLKTKF2YiW8Uoyds
	 SdFSRTpBkK81Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB11C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678779357.30347.4681384708049143184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed729b35fb5678294bc81158e7cf514aa5a91f65d6b4f4cc0a0b9ff6b30cc2c
Date: Fri, 09 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746787793
