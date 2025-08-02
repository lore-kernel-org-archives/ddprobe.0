Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A73A219303
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754148594; cv=none; b=TTzMd0smBaTAutH+Zc9EM/lif206aSqraUudv+YoZvJluQHx/tzO4sdJeorb/QyTr4yAe9k+LjrlSzgw3PPxjOfQHchr0cZgvI/eDc9WCEEES4F23CHQTBiuhuC4fmRe12Vy3U7Eon8rTijUfw00VOR8wrLprXCA5Z5kQN9gkFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754148594; c=relaxed/simple;
	bh=k+OTEAOLFZYidkOjU1Xcg4QmNLKCypUtqs3o1RBzkpQ=;
	h=To:Subject:From:Message-Id:Date; b=GXt3Aok4yOoXPwERQvblnIM/NBxqZm8N/+zqFe4dbHPGbssA91BW3RT4ZEAxQFarSKWsqjNltEz+VZU8rosy0DybGrjgbjGW40nGHcLOgK/1nLSOnzs1vWLZwT/1cRIZkXLpwI6ovYTbk0veRJ1aSf+OYqvd1wwjo4GwiQAYYt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4r8uCZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4r8uCZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754148593;
	bh=k+OTEAOLFZYidkOjU1Xcg4QmNLKCypUtqs3o1RBzkpQ=;
	h=To:Subject:From:Date:From;
	b=Q4r8uCZoKRputj0uY3GcjZzoOatseXAsr2XCKooyDIPrBxHHEfAiEZwiQ7+9bfvmY
	 wdc5sG6gYw1YB51MlGY6rynD6R6XNK6kfwpsydL2gMWG3x72VA82++i9+OAGNo/jIv
	 uNfmoBc3g1QrOu9d2jjS94hRQrbG7lVY5JMGIDPhDMHjLGBx99t682i2ei4nqnpkMX
	 E8ARX27girCXQB7/mo8tC9J1xUttmazZMCJex4OTvA80+iW1mL7IDl8FqgkXysfKrx
	 IiUHpU7VhVAlydn6gwgwHSwiuW5vBMDzW7MptveuwMszNRN0MLfnr1KUg1MDJ2wA2t
	 /1DtDWcncLihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96525C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414859358.4442.3567610910162094725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a754bd1763de368f7021aca93bc0fe017f555aba0901b6a23897fa05ffbebe
Date: Sat, 02 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754148593
