Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7291BB6B7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724766354; cv=none; b=tfEYLDe/MPf+h5e3ruCNPslGNRtoKUW3izpjvQwGqo4CicqNFUInHc0cOokcfbCxInlsnucvFTNma5zOjoNkjxTyW+RJqM/832P0H6Y48zSxxa+NsbGrOo06iLLM0D6FaumObuuJMyWlCqxPunq78B1/8M4W8/ummKYB3cyiJtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724766354; c=relaxed/simple;
	bh=cBXhgSfP4NJKS1VFQmM/DHZPyHB81lCFovK2v6E90Os=;
	h=To:Subject:From:Message-Id:Date; b=JxyN810VgLypcY53qBRjR3dkhfcCVW65mVKDhhTSqT1/85g9aC23SKW1mlUS8rtn1+3yHCfrvOkm1STqpg7xs4M9GK59oBD1+1EB19qgju24S2No61GrRhKCZbBh6yO7lQakYJbFV/T6N8Iunm+KsrhrACeiB28oqI7MlCrqdyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auz008hO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auz008hO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2A9C61078
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724766353;
	bh=cBXhgSfP4NJKS1VFQmM/DHZPyHB81lCFovK2v6E90Os=;
	h=To:Subject:From:Date:From;
	b=auz008hOPRHo/fuVRcK8zu3kaS29pdRvj5bxmps7iyJTrgRWgsMRCsl0zmfGg8q0i
	 vAE0FzR0okxACKK5cknLUsrzfg6+FfbSKwdUctp3gnNS8TBQC5AvcS9q53wYpkjCd9
	 ZYAEaFFCXQJRb0UW/Q85qSO4gHvYDZ5b1Bj+O8Zsxvk4aG7rq8VVwLNvHXleEwn079
	 hO/LpjQ2fr54RhCl1J9+YTSBoILo4fc/ByUd1woG/tvXd2foyRNc1u11soM1/9uGGy
	 ZQs9UD0zshPJblZwuLh2syaWvLE7W6NT7Ojwu7PEet+VONCzyLwxUrONUo4IxYt7r5
	 ryERkQDVYYMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F815C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476635364.8032.16806144383221149548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb56f46dc5e8e81aef4e8593ff1923ec9004e80f4c9dab2ad1c18c2c721813e3
Date: Tue, 27 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724766353
