Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8269B2557A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717858043; cv=none; b=Mk3bO0DH55lxku1bHP6nFQQQbShKhq4dBDenx+DHFsG2hZHuaiI6odP0W/yH+AGBbk6ks0Mjxbzln3yYlomAHUlvDdLxsMIA86Bqwqg0r8f/F23plZuwuUpLyUsga1OI5hE1rJ2bbxjDIwgmisqoszfrMm4+E9qIlwXnMSDUJDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717858043; c=relaxed/simple;
	bh=1nPokO5OzNkgOTi2mFi262vTlFh6vDdF+RROBX2dT+8=;
	h=To:Subject:From:Message-Id:Date; b=QcBVgOdfDhT4H/R6+YHBa7D7ObywHW42JtseP3y/LGFDxlMOeb2fBtxrf95/aLdTK7b6Z65iLeAGy6yMhUKrp2MCqCDRQF8R+nTbRW5mkOmJaGhpGumcVQz6Op5FlDP2OZ9nQtE5uoUzKFEbhv02o7Crh9yJQ/ZpIsaJSQ1OQ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsubVXfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsubVXfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0135DC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717858043;
	bh=1nPokO5OzNkgOTi2mFi262vTlFh6vDdF+RROBX2dT+8=;
	h=To:Subject:From:Date:From;
	b=IsubVXfcwSgwve0sFHufC6axKeeShnDDl4j+Cnnojc4Z/yKKGsS3dgznIR7TCZAVA
	 3Pge0RNE0wVTbmx1v/S04hhLdWGqsh8rI9uriLckYvx44tkDt6x1wZcR0fWZmXOgw5
	 xa3CMm/SpuzNDGNejU0izNgbuWg84ESLLFoH11Wun2iUfjzp6yY82n+Sr0fax/3Ehq
	 Jq9R+1NtXuGkGn+FvAS4i5hpSMJTfq/8mk2g8DXQ/HyAUyOAgRR3M2CL22Kaxq7sz5
	 3eRM6rwu6hjI7L6Qe2QpA2CdwXtHe+5gVZfOeZPTeUIvUc25FEzZQe/niJJYbJBX5M
	 23emxmHsRoAtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD566C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785804286.9088.11024619963364903684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a013f0f3da7e6af0664c23c0d350f4eef11e99bfb0e0e17460e07498aca4de68
Date: Sat, 08 Jun 2024 14:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717858042
