Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7DF2EFDBA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758182994; cv=none; b=BSukXQt4FUnWwz5vqQdIw1s+G4cEHQENd/1JeDb85kNBFjG7NJ1+20ZZ3egVfsREdN9E+yI460QLlGPPonruS1Xv2TZd6mNTIDK5z6NSRl8Ou5234KwZv9o74oxp/AD0Pqc1Kzq7Xb3KqwFBy9gZJsOmHXWKTHGHcIgpuZzwB1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758182994; c=relaxed/simple;
	bh=y3tWmWVSmK3u56n/bADZvE3gsGgFzouwAxf3Mbr014Y=;
	h=To:Subject:From:Message-Id:Date; b=P52t48dUKuMCw9tLZWrxN5M3d/v6LXfzgQmVpwgnuImOwdY2G4mykAj3POWE7WIR9FCNh2bQJF/5UAkkDb+sLRUNwwwZtejPrK8vNMrYcJXF/pd65DVYgsBFW9Lx4UuHLZNrpRM9s+5CjVJNpCPDGX81TS3WsQvektQndTsD0WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGh4VOxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGh4VOxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4663C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758182993;
	bh=y3tWmWVSmK3u56n/bADZvE3gsGgFzouwAxf3Mbr014Y=;
	h=To:Subject:From:Date:From;
	b=EGh4VOxmGvieRy9qYsEi3GShZkff6rIlBpXgYqHUI3yhFksQesKQ9qfR3Y67QzbWj
	 n98871iwSH9uwCdJGxMLSdM3unZmBDHg1pWE1hkYme2jfr5floUqRzgFXx5sz2Xfqq
	 j0tQkRKboyvYPlGI2Z/fQ8WeMfB+eCMMuMIqa5a6zLo0gOkUQaM3PEIxoIEs1dTRHQ
	 0W1CVwEtMCepDoIOZqKu+EhntLrTHD8z4IFdf5MRyMeFrk+7Ds7qu4/h2zbG1iTx1P
	 8suue71oe9tPJ7bh3WLuY2rIYxUsryYv64NmkfnNENgvN7MKofN35Noz1xvsPsoqnw
	 9jp2ODoSnaY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91327CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818299358.4980.14581127094417274227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd071b91c13c915e6656e3ff9f6caf0d208d6068622597dfaaff04096eba5e3
Date: Thu, 18 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758182993
