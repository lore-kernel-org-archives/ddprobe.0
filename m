Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAE042A96
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788012034; cv=none; b=uMHhnKd58GqNufrLqdNjpmvLexDi39IgmNA4F0Wo4GozG1yJqI6v13SRmTBmnP3D+NFuMgS/5t/r0/zOidkWxVEdCMpl+1m//HA/Hgoh3OuZoy3u1ZxOwD0D4K3S+ClGj5KdhYe65haJh5nCrdox2jD+KbzFM4UxPxz3CO4zuuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788012034; c=relaxed/simple;
	bh=ZjPgm/7KaE3Yjz7qsGDAJzimZPCDhnv5VLZhz9zcZwQ=;
	h=To:Subject:From:Message-Id:Date; b=TTGIV/2lDgm7GLJm4vf4EP4H/ht3hPg4ZY5HeSIVkQn+o4OxLPVK78jhlEjJr6GwpA8GkEP32Om5TATSPI/3Cme8uvQuG/NjLqiRp834MqwKG3QBaBcfeGnvPG9ovKR5CtVhYA2LBqs3I+q3EHW96uUwoQck3kPvSaTGOsnHE7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUD8+KzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUD8+KzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C51C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788012033;
	bh=ZjPgm/7KaE3Yjz7qsGDAJzimZPCDhnv5VLZhz9zcZwQ=;
	h=To:Subject:From:Date:From;
	b=nUD8+KzHgiBU23GBd+be5T8/YVdbvhOZEnuCN/qXJNKB/m3fQ+KG2/Kb1ywxTaMk4
	 SIymxCFL4SkAs3TUWwZB2VTmta265dm6R4z0DutnvH/neQ4nv9bGG/CDHAkJJ/yFSB
	 0yLSEON142sk7pnds+RDU6cr0XXOtHCWi9NcZ6CoXsEPZi+UTf2JwEzw/BX9HTksD7
	 oduAWKEFrEAEpvuy7424h5WEAM2xW9BMvlbbOU8E8OM4emMU6me/bkNjSpkKYoL/v8
	 0wkGupdWaEqR219sw0TfGhmHo1zBf4tIeU4j0q1vEpkdwcQ2h02crqo33JKzD17hbx
	 VQb6UdPs7izPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA5C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801203368.27888.13208127570959137892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3945371bf5c3f38cc350a34be6a06000f3b295b9f28a1c9c40df2c5f143e4075
Date: Sat, 29 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788012033
