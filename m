Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E671E285A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761392394; cv=none; b=dHWGv6Hw/8UAPul7eZPKqKVk5+DL8So1Hx8yrE9Wcn0h9SSYHs8jPrMEzvhGuogj6PjYGrCuZ7758fUlfcxrLII+zSlvruHiZxDnTJodMJAccPOb3wiA3H+P7ipCSCcdsN9fZiueGVEKiFVaNll+OuWvrWejDRauSDbRfWh4jp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761392394; c=relaxed/simple;
	bh=2IwLwod0nfPW4nRt2gYYw8W62X8MdeR89vd56rML/vc=;
	h=To:Subject:From:Message-Id:Date; b=nujn+CI5bEaFT6HY/vyEYdB5bo1zGkOGgzlyMF8mV6lPVonzH72iQ7DNNaZed7l270fBW759vA2OQydBACcDAxmw3Jn7flC93NHy0/F0cD56zigF8790Xz5Fhlz/HbN7BJ0ry16uR4RC8Y+Q+RIp4XjXyqGZirUagSSYPzroals=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8o/SFrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8o/SFrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6675C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761392393;
	bh=2IwLwod0nfPW4nRt2gYYw8W62X8MdeR89vd56rML/vc=;
	h=To:Subject:From:Date:From;
	b=u8o/SFrdgtRTP+9xnz4arU67odL1gV/kGsxnaXEGZRlfzLmEmnK6GokzJut7hsxRv
	 qh3A/5tM5HSmJ/WSMjpjrya9QRkKAkt/wr4JGrUmGv4uFQKgGIxHwbmMg0b7YaAQ63
	 jBkdCQgedfD4B7QI43W0x0tMitMQRVoESZL2Ye11BmFCBQv/us1Awy+c91SFBrkCae
	 NBw27xSIVz6QbaYqDFWiBaXBuSCNzZjgIdiUFRTzSfw7S8YUT1fM5T1DVqbIHWodbV
	 vFV+WAp0IqINzDAL4tstn+YW1ofmGOJMklmi8Pl0oohJ2V8K57a0Ebj5Zzn7FpO79R
	 h1TWXYXilOxLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9328BCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139239358.9252.3461406250725771965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc4665366d7b9d8382cdd4e202d06ee94220a75ec8ccd65abdc449a4fd9603c
Date: Sat, 25 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761392393
