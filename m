Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B2327469
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717861643; cv=none; b=HWSI3H74VF4UhxKAYpsn6OHwXUlVBEVAufKPm+kjBsxQyrUxh35RdW8CQc+gov/2URzrhYpBPKVpmVq5IDNJoKTsoPJzez6iIXzj9eIdQXlvSJZcRpeAVeVPs7ngChVYYHtFaU3ky/2Z4w4MNYRJrh/oBxJuBAYwZtsFPXx957Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717861643; c=relaxed/simple;
	bh=CMvKXnbIP55bA9TVZ0E7ndHmVnE6FKBBsQs8q2L/GlQ=;
	h=To:Subject:From:Message-Id:Date; b=fn5dZlKHOOfRaG9RJ5G4/M6EkhFl/D11dkbjZ9vGPul63aAqJPw/Mrcgud6uLkEX6IZmW7ce3NZBXeZqZak5UQIZ4n1zUZeDja+dNzF87ww/JJD3h+8kQWVnIkLfz2Zn8R10D/SXu/raQlpgWwdS8bD2+gqR+I97V6kawNvzlYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTWHkXyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTWHkXyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E653CC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717861642;
	bh=CMvKXnbIP55bA9TVZ0E7ndHmVnE6FKBBsQs8q2L/GlQ=;
	h=To:Subject:From:Date:From;
	b=OTWHkXyg5Qz2zUICLBHhMch8e2xPJGuEanEpholDHV1NY4uxtfA11hSIfjKKUjHSD
	 q09ULaVAZXavSgqYjdWB+b4R+V8OIBA+GObmioXGSKg0zv9Bs5ewpa6pRDKP9DcYe2
	 D5a4TqoGCbc2+66Ij4Uu0qt012iFjpzzYz+D4h2JriN4C66hb+zb8WEShY9WX5Ka6f
	 VvadtBteTL5lv8YagaDtiSGydPyvIOD6UwjN3mJjYMpbLmZBn1pk8aBKA5KLcuW/2p
	 SnRLNOgh1MojZlhKEUyOFsqdcNb5f+9szvENMCp8sOJMwuLZISJJhazMJ9sTOcXEly
	 blAWf0mczxAcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8DAC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786164280.15352.5471604522351519262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8801ffa8d10864e5443333fb160b0968b4e59d7de58f72a6f9d6557933cb5431
Date: Sat, 08 Jun 2024 15:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717861642
