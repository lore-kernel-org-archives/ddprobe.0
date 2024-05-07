Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB6D19E
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715043743; cv=none; b=iMgIR1jDm9GkiSwyUGGms4mlH3+dW08F6l/dMiALPuNxf89Rhf4Y0dOVOElknKH6nPEpmWvk+x4jYMajIfuafYyPh38QlytqdLqZtAwI9uXd1okClAWE+MpcpQVR6aF1/BPO1p0MAwgMM+hAHdTeFK9johR6K5rcauM7+oSqhoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715043743; c=relaxed/simple;
	bh=LjqAm3pRar5/qI+96eaylHuW/WO7nvtDHGBEDa5dEJA=;
	h=To:Subject:From:Message-Id:Date; b=NTP/i5wiiWvFBld8xNpwKQOX5+IvJfS3FqtRaVTNIBvRDC1orcE2grc2LtT2+UT0RLbb5sGmhHKygA6ok1ATORgkBs3O8FTYIaxMpn5nHeUJ4rQt6ds9jHTBHMMXg7KZ/GsSq2h1b+IRu3Utf3hr/EaTZGtIOIA4865lJ7fX0NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ekq9ZHDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ekq9ZHDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEE7C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715043742;
	bh=LjqAm3pRar5/qI+96eaylHuW/WO7nvtDHGBEDa5dEJA=;
	h=To:Subject:From:Date:From;
	b=Ekq9ZHDOwtAiYASUlffQe4ZTXiaXUVApEiTzkCobK98/HXWfmlE8dSCWdA9scsGyb
	 ijPCDEYX56NFLQ6eeu+ZmY2sInlalZCFqHOZgILtWbzVedxcmOwv59WQxbQbtJabqT
	 slK/G2FiyF58bbuRw0DGvEUAofjj972ybWhsKwfKCk1Bi6gZuso3wC7hjGXTIYPteQ
	 czP+hqBLA7UApX8+utMkTF773H5O0cBT1KIxon5OELUhYdy1ZHx6fX7mDxtnATpAm3
	 VGQ8d4hhz24LbzYS6G73AYslOEliTwMp/X5RC/8n9aiAg13FHFfgrgdRlzTMb5u2Zn
	 hWPeTkJOOGjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C472BC25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504374276.22370.471001327674998408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d88a7e8bb1cf0ea3283d72106ba5c64bc77f7e29ff0c390f05f3ce9c188be0b
Date: Tue, 07 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715043742
