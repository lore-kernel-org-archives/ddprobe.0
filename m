Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC113D54C
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714188743; cv=none; b=HiDpawyGPdNoqwi2rNwPCq3RmBIUIzBibXh8ZBJJ7WBoSPmsjvh/oVzyEJHi5l+04ClhTijQCO1u9Rq+71N6iUA/BIMXpzK6FJQ1yZxwh03RccNEb+sg6bEz/zp4mQRZPmE20Mp2yFzasjtHohCl/DbCpkm8lgCDhC95D3l8IR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714188743; c=relaxed/simple;
	bh=K609NXtrqImXdhRUv8rEf6HDw8XqWjA9oFU6SKJMaFQ=;
	h=To:Subject:From:Message-Id:Date; b=Im2lT6xwXV2AAWA+LIqVaRZfjMMvHrPRCZsqfHXSGA14f7ehanjeufeQ+Jv+s7mJ62OlSKKmS2R3HC59aWrbuHP9YR6imGWsD2yP3rtqR30C+cDknD9Spb+zU2zeeODpM2PCFVRconSkn33hqicfRAR0RS1pa65H9Ri3rSm2Kuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmmGFSwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmmGFSwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA621C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714188743;
	bh=K609NXtrqImXdhRUv8rEf6HDw8XqWjA9oFU6SKJMaFQ=;
	h=To:Subject:From:Date:From;
	b=ZmmGFSwvyFtkyfrFXha3YCDNpJHda5kkpIxUYoGsEq2zZsHVbm1Q/DSNLsLbGnzvo
	 s9RH/Ln1Koem441oVqV2BTXFdMp+4OxxAecxqrHqOQf4LfrMKj8F2cpTt/jlInxs88
	 sz+demRb9QlgiWzzqrj5aG0WdUl7ZvNIIAw29skUq493MGBuBlUHlQPdb+LHdsodmL
	 ioKVYBnnascMoK2bFUE3VJJoaAn7qPOFQcmKBdynQ1rBgNKpXcO4NDdh6f7Wj62CA2
	 RGhXkTOLU+Wsmn1akcFIrRXRMsgQdu8ZXNv0wdZg8V6Hc+eM2A013mP9pY95AEJ0Y9
	 xW83HZsPieiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF52DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418874281.32344.15332202341388258754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9763efc1f4f378784d51d8f6a41f2cd1b593775ece1dbcaf7cec82baad4182e
Date: Sat, 27 Apr 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714188742
