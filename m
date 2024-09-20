Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A1A6FB6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726832754; cv=none; b=gleTj9BVRCsIJqTeQQVlajIbpN9akSC/kCGy9BhVcyxo6IKgbGIJ3ga0MsldZu7VF1+fMoHFpoJLh6oY+dyTpu+5ft8mO3KSJnDaFtko7qffbWUSd2/oYJGFY9fGHoOkz5lONC5FulwadV0URlLI3XwfxdvYuIa1llBQwxyUNG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726832754; c=relaxed/simple;
	bh=AMnaLyjA9aYQTtkZMLWoF00C26vQlJ55VSf6ZTZ/RcM=;
	h=To:Subject:From:Message-Id:Date; b=RZjBGH0pFUHAlbiYp5HQ/Lc0tbrv3yODnS1qRF9qpYhVGBS2r5UpUq78bRhpp2oMthcgmaMIpDEtty1Qlk7Gk/hkK1vRFMLYiguzhlgimK80MfAqFRneOrrDEAtcFOb0U/gbL0YzlLMnXnUt703jUqiLTBE16nGKnaon1lxuaNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2diGiMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2diGiMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726832753;
	bh=AMnaLyjA9aYQTtkZMLWoF00C26vQlJ55VSf6ZTZ/RcM=;
	h=To:Subject:From:Date:From;
	b=C2diGiMprVeLruyx5sE5OuJ5c8ImHSiJMUAQMhSiWynurh9EitM1golQ6uOJMlOlB
	 00dwVj7Tih33tt/rTX75CEotNERnzJ8pEOrVypHtg2Mz6iBZZbJidFsQTarjfjBuRs
	 ATNYbQ5SDbyIdrx3aKLYi5tCjmW3GDTkPD9rIAxVz1eSK/k3d1tzfABAs+y0Cfd9oh
	 WyKQTt6PxdEpjUDckqrlmyptX+NEXVs3TJXO6JvgI6u06oTie5eb2ZiZ7e82YJG/3a
	 TEBRSORQiXWpCc73geVIfrvzJf3Es9dAPFZGfT9pFst2XOsV2kRRhjDLGVZqRLlXIO
	 TQ7tHOod50J5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122EC78829
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683275358.27950.9767323350163456992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e0fe20338a13d1ceb63d90e555d27bf2c495e213df2459cf5dbcb0023ab4a7
Date: Fri, 20 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726832753
