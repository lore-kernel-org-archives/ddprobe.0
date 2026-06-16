Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1763D5643
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781634394; cv=none; b=MWjJoyMEIE2kWhceu3mcr42WP+pB5D02hahShPyZtG+4bBcwlAqNfkVOfUWWgj8dLykJ8Bow6MAOU2tS8OIrYSqGwhLhQsbXHWLxMBBwBqAWq7zDTTNhdz4M9TJciv3A59dF0eSRIeS4ydGM8kA/E6Y2yor0hgZEtu9pxdMpi48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781634394; c=relaxed/simple;
	bh=sMbObH8jEpYyRwMHA8DCwc3f3z7TcreR/JeW9XBoRrA=;
	h=To:Subject:From:Message-Id:Date; b=N9Bevw9GZtsUPQPHBRvD4wCHHRL/8EmK+Smsf7u8jX3TKbVWVn08tblsVg0IYT0zucpHSNIG0Rz0Kuq6d6BTZuGV3fW7n3OEdqBiBdmlpjkFzYXoPAzZ5VUpVg0mL4r1ho/KHDddKY7O4cF5JNY3SSfTnWqYYTDTDXm5PGm41Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3D8k8vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3D8k8vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D072BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781634393;
	bh=sMbObH8jEpYyRwMHA8DCwc3f3z7TcreR/JeW9XBoRrA=;
	h=To:Subject:From:Date:From;
	b=S3D8k8vh3cqtOJYsJFRRYhxmO5S+T1xHbjDjeD9rzo7dvskTbd0sDQa3ETsDP6RUH
	 l1ecxxfG0X/hu7D4bj4Ck4tdflb8BwJSrwCXHyQREb9BjV/Po1dubQ+nBtOcCOcDmX
	 auCTdz4nA7oiHD1n1mTEUFcTC8Saov1obrQ5YEsiqLfeVHKO/8zzXICSiDN035CiJi
	 gGQBCvdLnyX3BAYowYe37Mu38jWjsGY+835+ky0aagfn8ETH6Kqijij1Enh3/bNMp9
	 Bs6MkL8PItTWHmc82b1nQr7PUE2MlqpZSJrAq1smcpeA+ZZqG5nECS8SOUPICvw0Uw
	 KxJg26le7OXHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECA2CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163439372.9585.805112055562371580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd6e3550a4d979f0e7ff8b79d792303596a38061c6c6da4c0d43e0bb0697a97
Date: Tue, 16 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781634393
