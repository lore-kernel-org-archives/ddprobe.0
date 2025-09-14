Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121AA1684B0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757841595; cv=none; b=Y0grKEaN8s3bUB5ox/EGtNwrfcN7Hy9Aj+rRLaBFKS99svQgsL1zxnwidAErll9RGB4jZqDXx55pYEDToepxFUfpJENnD3RDQl62G6PgtjS6ox7tzJhFYQoRKH9Tt3snAAbPvEY6V7UKPvNVfRZTofis9AIbCf4T7NmPBKrMeho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757841595; c=relaxed/simple;
	bh=kzux6o3QEFVIQTlfO6qk/PRIBDhobomme3R62H8jhkw=;
	h=To:Subject:From:Message-Id:Date; b=rr5Xyy9Mb9uUat0/kLzkx+MKKVmy/23TX2FSBzwB8jq/fVcK4HpX2MMgQpcigtcb7BaT0HeXES8AFPs+a7AZ+emkhvshQUUxlPFGWTL+Skqr3JxqKBJfV0OEGcxMpjKK8WdEbKDsc8CAtxja0yeTDCZ+RSsCN6sGaNr+XMqUdf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1lHyjdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1lHyjdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2545C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757841593;
	bh=kzux6o3QEFVIQTlfO6qk/PRIBDhobomme3R62H8jhkw=;
	h=To:Subject:From:Date:From;
	b=C1lHyjdf/Joq0GhksweX6p+5zwIfCdywoiSF+Ic3rYNCt4B8OGkvT9nA2McTv2ovq
	 vbBeXK6EyYyPcfXerl86LX60WON13AgDLsHCj2AQtjmsJFvvawaBcux3wG3ClGN16d
	 N2Lk9ll3JmLGN4DeCZRIMahPPfPGJpFdHpZC5R+7DJpzY/6gW0UEfWOR1zlvNIhQsP
	 pPwdrbg5LqPjevOiMJp4M3vu7hFCYhyKpUexks/41E3XJwgNleqU+rIhe2lewx/lNm
	 DuVgviwKd9/1gIHERra50sYCKfiMQ0Kig4LyztMLtNqPfR3CsrU7EFqhdCbI7D+Mwm
	 pgmE0kppiKGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B3CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784159357.16620.8267694806009222908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfffbba50fbba3dfdc8ee78a207e6f66fdcf9ce1bfa924ddc448c67c77d7c45
Date: Sun, 14 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757841593
