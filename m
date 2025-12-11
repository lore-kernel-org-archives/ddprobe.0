Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B6D1F584C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765412574; cv=none; b=P3QsphF50DLw5e3DWZR/ZnGsN+S/tKIrfdc0q4G24bBfxjz3A8SAWrvaweoy/L5fKIrM5bTOiYwMbGm8h6No2faeEN8qckvxtL63ZDA09i2XgtF3jlGi0BNQvPeB4gP0F7ShCL0prpfXRGuvkSoacANcafljNcxpuhTsqiI/hzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765412574; c=relaxed/simple;
	bh=xTpAxMEf6jHfYob+67kcQykGJX+YGxE01/N2pr8461Y=;
	h=To:Subject:From:Message-Id:Date; b=uNaBHiAXHBWTWJ40ImeZrFZpHr29i5oHQVZ6bjlXIh3mcMm7srrEg6IURyZ2373XXZ28arN+GNxH+hWi+G5BFTJatotpjm3EB+XQ36WOBlZdPaXm7ciGGqovz5BEixC+wi5kRsBL1wNiO3PN7xXt4sl0Ql68xcLxEo1n1PvaTRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bccaALSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bccaALSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765412573;
	bh=xTpAxMEf6jHfYob+67kcQykGJX+YGxE01/N2pr8461Y=;
	h=To:Subject:From:Date:From;
	b=bccaALSBuYqw630sBTm2TA3QTuZAs0MY2V9/rmZmbTb7qmXCYz4nagTmbTThEOiHj
	 n1llHvw1km6i5mYy+AZcNbiZHwYWDfaYsnVKJjeeIaokkO3lwpdrvOOSIJ/ZKUeBbR
	 GqFQAa4NZakA3W09WGJi9IVxFbj8HOXB8mEomsiCWhcQ5RznG/YwDcnsT9HlMBLSKK
	 Yf/zkJ3kQqTOFjKWWPg1QtOuRZY3sm362inLzcTqYLKZe+89QkobPSx3+d2uIerza7
	 p/7WztNUHN1tllnfySPAC5A9Y1/DXWQzmX72SK1J6trShGHRK6ZzgUa8rTKj7jxC1E
	 sazSFX+chECeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B4D3E783
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541257358.18807.12491955557771699344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd55b84b5a306bf46e5f6c7b37a8d0818116f81755cd62d73be875d6e560f34
Date: Thu, 11 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765412573
