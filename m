Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D19B26CE33
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756548595; cv=none; b=TgXBJ2UCRaMSdq3kIYJ3wkM3xGkdet5K4zglWCTrr6xRsss7qKXHp2XrMnvC0y1H5p0SeROdFYrhlyurV7FPHTuYgvyAXq15KbOoXaDIpxG4H62USVELkat/M7b1ggKvdMjcju0JoFMS0EPrmwvT9O9+OkPBu9jJTU2uUN88jNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756548595; c=relaxed/simple;
	bh=Tfo5gMYHGZTbLtWwdVkztcHJjxDP2/MqSp/XFz3jP7A=;
	h=To:Subject:From:Message-Id:Date; b=VjA5w4Icn6x0WoItBc8hLwuo/4qThzvvfnNKBSEz7AEL8Ee+Ebxy/HGiWuDZ8pByV05EKPBckNs/dzHweGrRa4fB3eW03ssY/Kw7WPYlWX3NsVVsf4OFTPYYswwa8lBM3XH89GNpvcptx0m2kg11esMHR1Ttdq4Qi8w7X52WgqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDuRN9Gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDuRN9Gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2627C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756548593;
	bh=Tfo5gMYHGZTbLtWwdVkztcHJjxDP2/MqSp/XFz3jP7A=;
	h=To:Subject:From:Date:From;
	b=HDuRN9GitO8tpWfgOj7kn7i8mMwPeQPfpVfide8AF8z/RIrkfkHPc6PAk0AKiDOYS
	 acf39j2e9ba2F4fRjXRx8zk5pmjf+VER70VLggWVkRXfMeQuOlWXVzWWRQhKomudlq
	 R3jGDxTl8ZFiS75ZA4gGGvWpIe0Mth+8h8e5W+h4ARkGmCAQOcxiHJeBYdnuExWcvj
	 /XTJ2UbgJts4yGr3zFAWnOhIqy9bk2RpI7DnnoAxUb+fDgb+ayHRQ7dHAja3wJ77+g
	 1v+zhZldrSZV1h57YBxCBIVFjc69bsiKYcbgUEWt7esUHcfGpIZEyCWHbA5PvqOq3G
	 gJHjN23U+O8dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50ACA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654859357.31731.9693504261180176809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20b46608654190c61732880413e1807d5bbb28ab55b77b1328147138daad414
Date: Sat, 30 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756548593
