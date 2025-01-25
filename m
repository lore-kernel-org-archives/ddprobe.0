Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5B51ADC98
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737802554; cv=none; b=tQvWlfTUbQRbe6sL+It9DvYXPG1dzngN4j7At+svQPdZTOGoZzE416tXlrrKT/d7PbspnLSu1jVD2Vt4kJ/46qJeO+kz8CQ++EA6pqdr8n/oDBxyLK/Xx11y8Q3Kc2KhqjYWUoAfbjhnEqu7+rOCyVwUqb8vTrIR48dbrJ1oViE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737802554; c=relaxed/simple;
	bh=ufBFCGJT/uTX4IoYQFaMohZr5OvRV96a0KW4aKfP28Q=;
	h=To:Subject:From:Message-Id:Date; b=F4gJ2FuorGgfrKyAnVOZ0R2cYfWytxQ7HGoRlPYy5HTc5JRO3pK1rHgQ2/ZzH36rXMTt37R+lr/RtMb5OgQeTBG3F2LtEOkYegQ3UCkRmZICQEv0+kXxawBgqwPYIxDoU0DBA/n/CVSzlBbvO40+uEjVp+Fl8ZNSfJCWgnKXkws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJ+xOXux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJ+xOXux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4589C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737802553;
	bh=ufBFCGJT/uTX4IoYQFaMohZr5OvRV96a0KW4aKfP28Q=;
	h=To:Subject:From:Date:From;
	b=WJ+xOXuxgqXxsx0/moxKX21zsvVrShiJ2bqPgmPlb3MQR+JsmT2smLBzy4HkSxpz7
	 fY781dvv9MEHUifUfLfZKe39HVffTFiB6UUtkgRGeoRXdqFl+D2DAQjsOs/OrGgZRn
	 QV9Q7fF1izTh3Ly++Ojf4hvjPlNtZo8wspscYL0daJoC5dsKANw2SwmCIOyS6tGT0D
	 C1txehQmi1t5sbBxtpCWXlJkPl4X9PUhVOMbV7zkn7/56yPs/MhmjRX2ZlDNp3qOnf
	 8haJMl+UOfRBz4rGmiJBBJX5LKHo9q3oeuiWDK1SbUlFb8OnysWYMOJeHPVtHFPsAT
	 Hfn3gJpS7Qwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F58C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780255358.23322.4036800807820336239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e46bd24197acfb14c0cbb381ebafc00fcbed1bc0c30ec2b3b7cf175a5f5878
Date: Sat, 25 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737802553
