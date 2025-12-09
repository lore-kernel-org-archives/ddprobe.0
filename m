Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E8CB640
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765282974; cv=none; b=plLiez2wiLYYZlBOV7q9NOb6q5wnlTQr+QRw8mP3zt02Z9gaqdUChSSpBiqyguLTeb6yTEDSN4Ly0ihE/k8B5oQVajLKj8cnWYL1FNqGuMsy8wTHe9Dz49myfPzxCfGOpplNfAwqerofPYJWI/dRpGNWZq8iFqL7TdALpk1vV6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765282974; c=relaxed/simple;
	bh=tT8ajJLThw7V83oCYc6CHnKd8tzu4YNOztdRsUSoU6c=;
	h=To:Subject:From:Message-Id:Date; b=hQobWAUWLX6I8On9S3QIMZZvNbuEg0pGtJZKHT/AFw2mtIEA47R2GsaTj14TEtmRzCi8ocCMzpjTOGmQ0vNSGGgs0AuP11gwTXxZzax4pUPDrvYs5qP/9iNawlvV2VLz59eKaggYXKkMT18kAv+jbyOdDx/UbDWIaMqPyVrDHtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD3XD6iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD3XD6iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765282973;
	bh=tT8ajJLThw7V83oCYc6CHnKd8tzu4YNOztdRsUSoU6c=;
	h=To:Subject:From:Date:From;
	b=oD3XD6iws7set6LQtOo9s+gkfDxeBuIraRLRZlAeGZhfW+omK1p8nHDgHKzdVRf0D
	 YkxQENP7VlfEFSsIiHVK4WCPnmSA+35rXznsVcjwNh2q3vUiC18Hfsps/SZA5Ltyxi
	 DpHrjfxZNr0/Q20DM1QfSY+rpJiDPGyUBAg9bjV4Y7OpwWsU8JR4mXKk3wX/vU6D72
	 zsAKHL1LSIbbbjKdqryRInAbW/2nQrcICaofXL2AqRv2n5PHwN6uTQZ45M5arFxqkU
	 TJNVUdTve5ULJdb2BHX/sh12p9WMiAPAKDjv4BY6bY4nc9TqZTlTNo2z/e0DMI01+b
	 z2tVsr9xq6qGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC5D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528297358.16187.8817758934393372241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8da0a6655148becdbff1872bb01eb5f460f5d39244b97ce7a5aad1271fd446
Date: Tue, 09 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765282973
