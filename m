Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEE31D6AA
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722197754; cv=none; b=UxuWw5hUdjqHha90XvpJ6WwcMba/1p46fTG7YQt0/r8Hkg4oImn2Dw6UgepddAuKqRnoDvzvzAvFE/ZfSljSBvfYilfodr+4lYXkJWlyMDL48xjxR6j6TO5bbnAuENfOt5mEHPEYZkg18Ch/CFrUEypQf0En1E7I09NJBnE+0wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722197754; c=relaxed/simple;
	bh=+90OjXVjb5UqB3gaoaMUyN4j5/JfdBgSOnbFTGQssf8=;
	h=To:Subject:From:Message-Id:Date; b=CcDGF3cE5oARvPYPRAjVXuc7iJLO4H+D4WsO+i0DeLobIGcKlUAzD9X+kV2jwME347vd4anlN/QOTkp9RogiltP9fJ5mzc0L9wVdzncweKIR1TTdm1A/YqQ7/5tWF837ZS4EC40uGH4uehf1tt79/qbqgMh3a3L2RmdKcLxEHUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P25ja14o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P25ja14o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E1CC4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722197753;
	bh=+90OjXVjb5UqB3gaoaMUyN4j5/JfdBgSOnbFTGQssf8=;
	h=To:Subject:From:Date:From;
	b=P25ja14oL9m4byP5p8dM2UTEuprIvYMs3wJFiF96D7JHqrljAgF3qfsk5qdpz801Z
	 nPj7ILg5Qc4m7nDveAxDR6Y7kCGQH3OCDE4k5XrCEVn6SZRTVZIR01em+zaj7Pj1kr
	 EVRH8TaOsYjLyZmhz3ftJ9ge4pLutrBeOWLEgg1fOMvwLCqHZq9MHd7M1VD+OyRGwJ
	 yFNQrnvC0vapLx56NyBPRSOOaNSINy0mvj5gPYox63rAhoElB1B8/FVubqOkIIRnQp
	 hE9MD8LryXsSURm5huUvhUwiBwlNhuBXrZs5GSNFbg7hEyYb7f8sLruMGnodtXSpCp
	 zSmuARHP8prrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90998C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172219775358.29870.14397385206477523690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877670cedc41e103689e7684aeb5bc35a983fd818b9d673aa65a41f2022a2682
Date: Sun, 28 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722197753
