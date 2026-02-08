Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BAB17C211
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770532434; cv=none; b=NiwvoXk6fmOKFMEiYI2r90C2qL/gntum4NQnMxIEVMnKr34qvflteg1jRBlew0mkbBqboi4J4xbc3Qyrk+B9kNZIGHa9iVpQol+pc6QYBJ3gMDIPTsccL/CJqkA9au3nlNMcOfq0jF9+uT950eektLNAkl34p5Sm9E4LtBj29dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770532434; c=relaxed/simple;
	bh=TiRtDhhwODiO11wf4faclI5P2bElpt0w4vvDetHqqYM=;
	h=To:Subject:From:Message-Id:Date; b=aG3bBLdqY/MnHzG8aEcBvSxGGBpmi9DNyTZGuZ3yRa0TXylwFHAEr+Dif9iOojK2KEHBBsdl3v+GyNU/+/WiDBmqlQaNcpsLt0uOf2iPURe4OrcGdLsLQ908LztQBhbONnN9waijHzhNDDoFO53HlUXBJ1oQoEoX/PNFFAZWsjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIyvDB9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIyvDB9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA38FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770532433;
	bh=TiRtDhhwODiO11wf4faclI5P2bElpt0w4vvDetHqqYM=;
	h=To:Subject:From:Date:From;
	b=pIyvDB9Iz9VuM0aVu+TAf8n/Fh2w+PnN/1bC9Vhk45PdVIxEqNfv8C8d2xe5WdSyg
	 V6sw33V8YA7qhOO7jtvrKkirYoTtoUw3d94PQT6y7B6Css7C0GjyjbJGEVotpL8yAh
	 J1q1ABx5msFZiLTUUIq7QEicZg+Xxd6Nip1NvQnsrbxO+Dc6L0/EAzkErCICAfzt2x
	 AUArz4RwRDu6ZXAj0iRFTQqy2cL50tepdh1O6oW7z7k0a6wm1QdIBAvA/GfHwnnzOm
	 95bXZJHBGfDpkmtYFxf/XDK6QgdwwfKipffE8cqo+XXKcgEX1DWhGSd47znyLeW8nl
	 a1lLmO2p4KK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0E8EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053243359.15851.6695360367003359787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efe706cf70785a617986bceac3d7a0021e3a6350157bd8f1a14931389784104
Date: Sun, 08 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770532433
