Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292622253F0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738844754; cv=none; b=V+0wHnjYNtNiTU6hv6aCu9Lsund4ZBkZJMWjm7fq4S/fQEKF7tRLmhdvGXxQ4QB/c+ltvNHjm+0xS92gvw9BfGIALco9PGWvFjrU6Y+UxUpLwl3gScWN3tzeoda3Wyi7qJR+RCwEysJPlF2c4Ho1AzfIJ+uNY586esBBLz7WZ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738844754; c=relaxed/simple;
	bh=D0ojslcz8M/hjMpBHUzd0Zh4WtHv5InReOWzY8AHExI=;
	h=To:Subject:From:Message-Id:Date; b=Yc458nRPWGeS2rZVo0q1feRYHQHcetCWwVovsA5F3umc1J558kamkBGddpyrbiui/0EH4N6XEnBEte/p/ZgceIan4omQqbiICl3maK2gwB93NEpYvokAcE2OADSw5AByJMC6+PEs7TbivOyVioCWy7LXeyRQjN9MCHNwyixSZTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnjF/2kH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnjF/2kH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738844753;
	bh=D0ojslcz8M/hjMpBHUzd0Zh4WtHv5InReOWzY8AHExI=;
	h=To:Subject:From:Date:From;
	b=fnjF/2kH0ApVpJa4LloLXrlffKRDmyzJ30KOFFWegP4zZ/dJsdOrL8FV1zUAY1nHX
	 0FPzRBPFRE+zzdhb1+2Ip05bZOD7QVB4r0FHX60MZjPT3YEMmkjfT7MTH5j+xFiE4+
	 K1jFZAJeMI51L6z81UlgNqL1sw+C2nKkKoS5h8yokppXAtjjaCQj50xp4VpsFEV8YJ
	 ZadU4AedS8cMXuNgjsp9AG3bAvlSfp4l/gSgEiur4DT5B7kmD3H9pG/ROD/wylR7sj
	 DCixdWj/ufZ/PUjr8Q/tH8+dP6Q2xUJ+2rY6DQe6fUkLxUsarJC69wCgqTGnkAj5u+
	 4QwNcz4KzPVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94549C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884475359.31344.11702412405916029119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753da4d1eb404c739f5418c95393a337b919eaa5b68308921c1066070d1539f7
Date: Thu, 06 Feb 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738844753
