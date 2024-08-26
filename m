Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC8176AC7
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724677554; cv=none; b=ePu5rolYH+sA6FF0/HPVIoHBwfEJ+1XVMoAiSzZBQtDmXB5Zqkzn37wKTcOd/HmIjbNkVHLJwVB2QIAyekQijty85qygv8gKyq74g5jCIWeTva5gxrxxYQKIen6p37mzp1QSHPzS1AFEgmoS/Mrxy8xDgsGnb9Ii5vmHs+XN26E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724677554; c=relaxed/simple;
	bh=KI2DDca1xRMrKNcA0HMYVHOcmv1MEP/nh8W78tB6AEA=;
	h=To:Subject:From:Message-Id:Date; b=vGlf/EdPIQt30lAoeuaKu1mmTfTU5GPi04QmaY8xLIvU33sWdNIfE88JRn6DLQfsl169FNy1TXWJiDYkyDHfxcYnqzCvwGl5ezpaE7RIDUPuM9X7ZCPpGXp4CS2Nt7FkBmIRh5eJuNSG9LzpWIdHV0ViAQu0vadHJrTl4q6B9sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz29rCu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz29rCu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDBEC4FF66
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724677553;
	bh=KI2DDca1xRMrKNcA0HMYVHOcmv1MEP/nh8W78tB6AEA=;
	h=To:Subject:From:Date:From;
	b=bz29rCu4lsIIGzg+wMt/yNS7Qd0L31ItCHXKh/N2ai7mgc8I5zDeKorvoMpGBJlCI
	 XTIYCsqsZxLdpkrEsfzWPSSnCOzxroa4iz8+XyTW0Jfp3SpOjbKUVxaBseiRt6n1Mv
	 ZHa4n8Dty+OTB653img4LSfhO0UmCnGKbeX0LnoFGA/o4R2Nxt5VW7ycXHBM8Cjx8E
	 HOJ5eM/RgtkZcg2iUfDJAdMc4nLEF6gvFK9pvJEiMz02qeM5M7+0TIzBO47I1/AzWb
	 MVXf1aYDICVMgX9IiF0zYLoE3GVVPbNM/apusgXG39IKQORGQjEl6wE7XqQA3TmH9q
	 f4tKgfPKb2yFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A583C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467755361.7915.14530060932064728185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fad186f32f0703417923a53e3ab0e994ce19456a0a21b017f948ffd1f301809
Date: Mon, 26 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724677553
