Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C94A149C53
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749370794; cv=none; b=flmKTm5lDuiBaUfhnplMYT0gISIIDuVRtIA3sSGKboXzHPbohxinw6clnt9GbcXlpL7Ck2BSfz0XWEUnKX+HpKpiB1U0FmS+Jg64pOnqTazVdIsV42aCnVLOcVNU3K8zGqm/3Xi+4sOJkb7G41yTEs+3CbO5WIIzWabj+cVXXR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749370794; c=relaxed/simple;
	bh=zpZf1RGHz1eYrdSYN7xpBGIY9BwzbdQ9nbr7AwlzcTs=;
	h=To:Subject:From:Message-Id:Date; b=Rb51urp/SSTI1CVVOctRreJ7oXzOwdQm/x6Tb/kX1p//pkKcNkyvM00BoHXnEJtRsrkNf30qjNzKbVX5AcNckgLm3JuIL5MzePKOAYrgcbkdpKVtV2tWb8wdC03LwbxPg4qDhYoXsiJOTjdMPgqqSKLkgW3l+EVW9CSD76/9fsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaKES+Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaKES+Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D6C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749370793;
	bh=zpZf1RGHz1eYrdSYN7xpBGIY9BwzbdQ9nbr7AwlzcTs=;
	h=To:Subject:From:Date:From;
	b=gaKES+Orr5jGKSsEGv3ITNvhs9bC4AdzumFZxOZkKb+S8d94tOlQjtqcS9STDKTxf
	 Ux3fcWTWTgijccJtzb5zXCGFtPcGCKhS6i1NGU92kxc+TjRKnucjrcdAEKfHgV5gG2
	 ocJUHcXAmSmkWXH3kXdw2E8yO4dJiuxhFyLSFH91vOOwatJJMnpmE/EpWkMLkUrJxT
	 xZpg0gTmEtpdLs+1lUc1gUT75SnwpQIs7wDfCc8zLG8U0ICS8Bc8YWmBP7wmMEwqlY
	 5FlNUmvl1yVFJuoePPVS23OZAGvvCMz7b/jTKqvmQwBjKB9gtBCeFvUvogmdR15lX8
	 aW8+rpJmtIvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4AC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937079358.25332.5264182991656180055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c840e3829a90ea24748c601c805fc9877f460c2de3303cfb57217fb658fdab
Date: Sun, 08 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749370793
