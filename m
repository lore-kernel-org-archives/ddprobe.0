Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423E535E1AE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784968834; cv=none; b=Vu/EGsRznj4nu/KR4ARN8GqXkhiRXNcUrtB48au0HyMuSFhw40Dyo8rTl+r+euAZW+8Uqxj9bdQJvGaefdJtGRJswYLkGLvMbZPo/0HxHpK112VLGQ7D2qu1vst2YUFSnAdsPwnL2ciibkEiY6w/0v+IRh8MRfHMu6kiIYZ0vFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784968834; c=relaxed/simple;
	bh=9siBPwLsggj3vtVOZHvdpxSfgr8lriot9tdSqkrRKFE=;
	h=To:Subject:From:Message-Id:Date; b=S4GpXKPglcDqx+xvOCJdgxA8VZtU234HqsWq1Oh0x2eY3gRHKbEgGh9joA5tZ1hnGASdFnqDtcGvbFFsTpHPxYjsTxqMJ5xCBoXmqdTQAEdf2clWEYhJSWk5cn728LoixWvtdPJ9WUC0b5TXmIHZDc2t38M66cdRPkMY63pD1ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvfMsKHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvfMsKHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D21C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784968833;
	bh=9siBPwLsggj3vtVOZHvdpxSfgr8lriot9tdSqkrRKFE=;
	h=To:Subject:From:Date:From;
	b=KvfMsKHWqMasJOuD4juvm8BjIvjPXUTqgaBvIX+TuBt79DgFbhRvA+c+NxxIbza3+
	 AAoCbXuKhTiG9rJpgawNQOQbvG8jXCLh9Mp3p5Ggm7A1ji3rlV0TJmlPlFhKUtPLqp
	 7AfQF3o4v7hx1hODutpYH6OeR9GbTeSE4hYl2ptq6w0TFzNZGO0X33jAP3YO1h3whj
	 bQl/2bAxREWKcRqMPyMB3ta5oi10RGoOf1n4ARwpsJTiXcpxqFOKxwvZN2QedKp6gp
	 DbJYZkDijW92OfKXbEL74hq8cot22scqw0i6sge7STcX/szj+Ql6uYq+Q3zNOALaLU
	 6PeVc7HHRvDgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC0FC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496883368.9840.2275476528225982854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dff45395a184c8facf42c0c28deb4ae7c782a9dbc507be473e2d8cfb82e576
Date: Sat, 25 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784968833
