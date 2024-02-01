Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D001586FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706775497; cv=none; b=C7Zr4dm/gTNuLwz85otGEX9DiPJCrBymA/flMpjoMeGOrK50Y33JJRA/yF9UITFPLE/rmSovcGAS52yu7/BRWIji3Jx5vdXw7B3lLAW7Y7VbbIg0G550FyylzX/Ttsdbpc9aquGzBExDuE8HcOPuwPvC6EzttjMOGQ5vqdjBniI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706775497; c=relaxed/simple;
	bh=5+5IA7OCPNN5Py9DB5zOo1hIuTENotA5TdLKIBvpETo=;
	h=To:Subject:From:Message-Id:Date; b=ZJBZ+lWIiIxL+B6C2NxPxYbgfa5Pa6elijv4lZd+TMO8RXZG2Oefte0P80wKHgTi+Q0sr8iu2yAVI02Lz4KjWfzRRsn+B4uWRJVtjYcFE2jV/LGmhracqzIa+d06/McQlu7UR4Ct3+uFh4/0EG9pLeSLlSvGYAq87i4wEQzDBsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAgb6U8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAgb6U8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D86EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706775496;
	bh=5+5IA7OCPNN5Py9DB5zOo1hIuTENotA5TdLKIBvpETo=;
	h=To:Subject:From:Date:From;
	b=gAgb6U8qIQvhc99ZSD/BAL7JGYleo1R+T9nrgKWMiwZQXHxlEkpAM+Zi8rnXXeMRl
	 T9+0djZJ5jNxrdt4m175utP3Lg8/M8xIH4b6JPe4RioYwEs2Q9aQqxMuFznITO8BoP
	 /PGVXC7Taz0wmrNTIwhLTDOHEf7csBJctewMva1tdCkFCcWSdC0WJ525Rqg12sFg7d
	 olo+w6r11kuBFHFooMyyQJKIfE1CE4V4xnT8YzhsZJlVFQaC0KnJyjxxkxk+nvaXNX
	 mExJHB/cIO0enSg5rdEIyBM+TfxMsKjtZ7DbpzhybnFS9hDZyOi+EPsmCVWo0OQuL/
	 HzmKxEWr0fDdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61146C47DDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170677549639.15417.4511712564566781102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39e98fd2260b52ab3b778998b47d833cd9996e7ff45e77dbf9b93fc359aff13
Date: Thu, 01 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706775496
