Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114CB2DF149
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762690794; cv=none; b=sFNLbO938oXrtTDkVNNMCpDOVl9Wj7IvVksRkwMeP+iRlC22xuoWnmrS8dFXUFBdBsauxwE0BrTGAfviF2jc78eV39Y/u/GoZiee0sOFp0sm3DahGA4f5nuc3UQGyZAdxt0yNaghZ6dXmJrYDxvmDPt3uktKneBAWuMZ9jL9zC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762690794; c=relaxed/simple;
	bh=GrxC94uZXLTlWzt+5hF1o9bmgw2/iXTULvDevSTc1BQ=;
	h=To:Subject:From:Message-Id:Date; b=Dna4VrVs5aNJEz+tK5qAHh56wLmuTLmUOSITMTS9zuTKYYn+ZAzULi9XM1gxwcugvgMPXtFvoBLkX3uhqxWs9zUbBNJNP+B1UQYCSOWkrhhDHF/bWQVXKHw87Cjppo+6lzXKzTtneRa1mFJteUO26/ZIl0ZLylb86vQcbbzah7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQke9vkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQke9vkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE6AC19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762690793;
	bh=GrxC94uZXLTlWzt+5hF1o9bmgw2/iXTULvDevSTc1BQ=;
	h=To:Subject:From:Date:From;
	b=cQke9vkWTNC0ItO4uqdUDc0fYY9PL8RBfmqEBtsOH9PU3PEMYYlnrTI6jmx28pEiV
	 zkW8YLs34fzbPnmMvLvXCNmy/hGFWP53PfD4fU0FShfBHYnYjzNgzUO1tVuclRqJ8t
	 ljZ3mt8a1e7ak/vnGYHLa5bbvOXfVIs+8W5nhV0r0TbU38hGwppE7ZF+ci9+7ONCZe
	 JkTJAvRpuuLgxRCsUHsiOnS//j06CjStuAfEGETfCYIR/3+VykVPZWaa0kM26Ya5Zq
	 yvYJxd60UVIS2OMvEKnKz9+zJepMMGxW3/wdWCibBYFLXMCjfxyWQab8eXACuwd2jy
	 lJTSjko8+CrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416ECCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269079357.4613.12837417930039779681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c743cecf2c12c72df0e25abeca0b9f48421fe590c1592a6af907ee04ab04e1
Date: Sun, 09 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762690793
