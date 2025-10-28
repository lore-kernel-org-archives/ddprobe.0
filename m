Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE65271454
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761684594; cv=none; b=Qfg2+rn4IgDA4IdvubSDuggxydI0fHnMJ1eDaxO4dh/kcb6h0FWb2jPrPF+GAYdFznl7FK36HF6cywShFu7NU8toX04XvSSUvnWtXANKwCwbUlKwJ9tz9r815+zlFQKUqxG+3toC2UPnjynjaZqNiG77csl0GyFakLOrreXdLjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761684594; c=relaxed/simple;
	bh=wn5Eq1B7MFUAGP1xUX+U/exzPl/ERNK+gSdualh11pQ=;
	h=To:Subject:From:Message-Id:Date; b=hepPyn8J6dpFUWDgtTwZxzrsnFC3iH0Cpn7J2Ts3qO6qbhnz9HtjVee1svh4oTtg300kU1g+N0mPvD72HjpUQC+pstE+mz9QGOqjXkU/46QfNG/1hM1Dc6mfubXkD6YIk+5VwbB6twg2A/UE2dfgfLCCjXApASE907najWw4J0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AobqZDVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AobqZDVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A960FC4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761684593;
	bh=wn5Eq1B7MFUAGP1xUX+U/exzPl/ERNK+gSdualh11pQ=;
	h=To:Subject:From:Date:From;
	b=AobqZDVQ5q4P9++Hn/QLAcQvFxqZ1pC1goRc1Iipe6MPZVKwbt3gnJ6qQsutIbxSt
	 h3PWPLfVWqlIiqUR0QMlhr7izH97oCDJucKkOFzVRa+qHQzbmLUYISIlTCFWP7rr5b
	 mbBuryiiUO84Oj6Loz/L8k6v966571yRiu86knuOuMG1Navh2r1C++hZsZYwKmEQ4y
	 E9Cl0MW0wPOIJconiRbuG33Bl5/QBhWxeF3cgGczAlw2uMlvk1oJJoIAZd8G8wsria
	 svx01xtCUre7smoZDWFLrWxBjC2jYjQtEFQIOmEJpnDEX4ClZdj3wTRDLyCCP18QV3
	 WMHgzZ1v2/HYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A7CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168459361.8467.15008506767194196828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdc0bc9398e3329554d112449a687323da64b8d13539629da6b1c26ec020f80
Date: Tue, 28 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761684593
