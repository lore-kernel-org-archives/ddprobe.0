Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9A013793F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717482924; cv=none; b=hNCAKW9ZRcbEOfh1XL/Ycwm3fmAwQYtl2aDabZejSUsLk8fuMQMziIvzXZS6mxjExtBNBJOgkII8zYlG7Gvq3oljYhmhtn7lLn2wz6LFVOati9sIdxFWH5QFri33LHxcRcQzwA4QjylLF7uqL6sqfcTSk+t9ju/xO6Jqo9aXozM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717482924; c=relaxed/simple;
	bh=t/vk8d6GnhKl9POZen15B6Ngl5f2nwIsg+Hl2UZ2E4U=;
	h=To:Subject:From:Message-Id:Date; b=UHxXzLkOAdeJwP4JnJKsw8qsRPJ9gJ/7csG9MaB0NRE9tTeeJsoPylBjTRP1l2xiRSALVKOdPkElWQ1yBcmtBesckKReok0vxnJhR5eNMLIYRwz7RosyhyciKMkxNJI14DEx23EjKDFkiejMIryaQjkZAkqFbqPlyLMamnakRYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb1tDC3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb1tDC3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3557C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717482923;
	bh=t/vk8d6GnhKl9POZen15B6Ngl5f2nwIsg+Hl2UZ2E4U=;
	h=To:Subject:From:Date:From;
	b=Qb1tDC3sTdhh1nCF3BJznFEQ5+lCp0AdToU7BCOlHBJkvEGR6BLCeCdU8cvH3my9y
	 7pl0MGh7G4W1MVealmL6hNzyZth9f1ojjunoGJvAf6gwU9IBr1KpENaPBWzLsYwZEe
	 isUKVZt4BxRbAesRCygvcvH3SeACN4YdWmtOk1K5aYskEIOUuzHiOMf/5KgModhemB
	 bo9u3/i+Nj+5/3US+DB0yeUT2oiLDGmwEIqeKag9KQqNrIyszyorlJi1PY4LFhJmw3
	 mM+ikh8+IK0azJgi+UB29p0Bi86InggWfbBpIXDJAPMpIdYRWy7TrzHfyGFIkQnz7g
	 ZxrMBhVPfsMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF32C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748292277.31100.7042183000414484706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c99f20f708674395bb68e731013277bd244556d640b87df43a9a5e47f69dc9
Date: Tue, 04 Jun 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717482922
