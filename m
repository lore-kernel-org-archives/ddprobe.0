Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F571547F5
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746910794; cv=none; b=ngJVgVqaYCcgVMHr51qu6RAMs9E0aGTIRVt3ylfNkNN1tLcDae4RMwgLENE/dvGCwErrZxREi3Je6uQTZmSVYVO9SxstP/6avYwiFUNU/WKHDNxCYrOJrq11vh/a6cw5azFZKNhDisJgAVng6NnKkCRAh48CcFRkDF5h2Ty/6R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746910794; c=relaxed/simple;
	bh=rLueD0wtXsZRWnHbaNZZRu3vDBSMibZncyB8vqFkhXs=;
	h=To:Subject:From:Message-Id:Date; b=dL08P2ejB1I/ih592LXhgdu8bSkeeGrz1IfRe/9SsfJ8w8PUzmHWEX27R424pQt5XL74PtoCsbcp5DwOmH07YQzafmMoAJqMEyRyf3MFmd6WcZOBv5Luanlz17octUMq6fL3se+ESH2dqMBOxTZX7uh9H/S4sGb4hlyRE49pp3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt2u4TYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt2u4TYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0815C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746910793;
	bh=rLueD0wtXsZRWnHbaNZZRu3vDBSMibZncyB8vqFkhXs=;
	h=To:Subject:From:Date:From;
	b=pt2u4TYDTbGeUwqXXQrIOoniVRo1+18AYkYceOkuNnGgww3caMUbpnIRv2PvIyZpP
	 rh6ft0aFeXT2cElMOGC1eAtrUXrE1mK+Cbi4uXKyBCvvwQ+zFAYUEncjtBKJf0ovV7
	 hOTs4p9dMJTiRmYjMCoBrV46DX103HTyWpdyDdBkHEIXCfOfwRkckzGA4n1Od/8Khx
	 Ib+9Wfiq6Y/jJX0P9TfQivU45JJtkV4OwHi7tfhm7yu5k1fe8PtD9GUe/Z7K6GYv19
	 WYkvZugcTpy4AUI6PTv9CaARaMUw3zoUTgRHZOZUf7JZmrmK1L3N7/PjjLbJzzLcYO
	 8O5PhJ+c2+fwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E236C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691079357.27292.2078069795020347657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcebd3477a2875de681bdd2841575479d923df588aee32b57c7ea7b7d2fcc551
Date: Sat, 10 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746910793
