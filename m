Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D77246333
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761803394; cv=none; b=ZxQJTP5uX4aE9moJG3s4Gui6Nc/cxY0NIY6TXj4gSN1mveiGBH55kaCx3Paq9ffapPSa+6H2Ye7hHZhmsXaS7Rnk7Em4EkfRNzxwxd4escMtL2Kafv+wVj6rxEwA849Efib1ig331ol4yflQc67Bz01c4WHjmpNfi8SevQq4p5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761803394; c=relaxed/simple;
	bh=LjITF7vENjAhXXxgppTdXxdXKPcTZSHeA/AkBxkdFX4=;
	h=To:Subject:From:Message-Id:Date; b=kGFNm8TCB0n0qAVpGcVe18dFciWExvYVKesVY97l6U7gGNNQMXl3SjWgojEfx78Mlnp2Mf/t0EqUfrVVK0PWlQJfMPWltxfzzWp0xhl44jSbOGRZrXQm10lFtAMFo3Mhwx8Q8VxCI4bcoiy4N1c57Yh51Mqmk0y4mKAaditUkmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5rBPxcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5rBPxcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD66C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761803393;
	bh=LjITF7vENjAhXXxgppTdXxdXKPcTZSHeA/AkBxkdFX4=;
	h=To:Subject:From:Date:From;
	b=R5rBPxcQqC7G518Cuchbu5j2eaqBfClBKH5SkL31bvHipfrXJ7tvva0sPf94Qm1Cq
	 Oot96W3zW+dYS3JppTSI9JaaVCIjFWl8PSN/PEQXHfZD1Y98v7pUni9RiDGjPP8W4q
	 ITnT7u6N7wpbrAzBbpUrCxGcqrYOR6MGABx3dgdsf52A3XzIerDFAlqzHozpkkUqCt
	 azRl/hMuHGjpiZCcn+faXR5+UcmfkJ65YLVbX+b7zEp0KrMxMVQqh7Bfhi2Drr9HP3
	 iCgsdgQ2kztkIxMoZiXKZXdUenFVZwvvQGQ+FMChd5sRzNRlOhtWvOKRgTuIjYAz3i
	 HlwSKnp1FocXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC7CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180339360.30442.7859090719089614465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6e2bf682486092135300385cae84a5b99b8e7b33c8f9e8528c19dde91688a9
Date: Thu, 30 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761803393
