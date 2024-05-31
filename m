Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837C681ACA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717193663; cv=none; b=QCsC9hO/ceBc5c0bxoFasorO29grPIB3xqgtS53RIb1m5Q9nVkMtXx9Z7yM/N68auGM4gKwUM9WNq2/MwqsfBSVAtVWMvzh1uZ4zlDD1rJxajVLIJlQGSVyaOB64Pr/zBsioj8n4ZS9mk+PY376EGmsElR/dMNZkedaqkqsH288=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717193663; c=relaxed/simple;
	bh=vsQGG5YTwUcDSkf+3KQMLyfbKvGjj0el9EsdWuINoaQ=;
	h=To:Subject:From:Message-Id:Date; b=QmHBthXz9e9eZgg3BY21PCEUdWCE7pmKpGs69Y5/uk/IkLUKlkA1vub65N5547xLk6TJzweSqdSS5fG7qD90rljQYavkuQKNjZeZtCnPb0VrSOmlFC5XKtKJt2Np1Ig6BMYbHBso1Q1qdepDJXZ7fIoNa0nyAmR7aorjGauYUoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFJncuI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFJncuI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05E78C32781
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717193663;
	bh=vsQGG5YTwUcDSkf+3KQMLyfbKvGjj0el9EsdWuINoaQ=;
	h=To:Subject:From:Date:From;
	b=NFJncuI5YD+yemVM+Vn72bnjpcQXbppFT+MA2rB1+NA7HLOO9QUSwUVnkHx5vUkd/
	 IrS5rKvf2Ns/i1Fm6l9zph7d13Ebz8xEC0BSB2PM2C6toEKJq8NQ6uHwL23QTw4TDG
	 S5JURXOnRRfNUSBtmuUbaFWI1jYSy25nLxl5B78qsu2nhzWhv26hknwOiEGK54Jv7F
	 Zg1Az6pJyuupxJ0pL72VJQUc0h7C+ZWJxjVaKydMC3cbvmLV4SDRL721aEDp/2etMR
	 kwgiWqZMLhISezruo46oTiugf38FHAZxWbagESwPPkl4KvAJ6adAB70zV1lCAM45uW
	 Y/hYAhY7JQX5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBA22C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719366288.31586.3003250323562842987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552ea9f6fb5684297832679232dbf04e1895816b8bbc77ee617a8fa45b332482
Date: Fri, 31 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717193662
