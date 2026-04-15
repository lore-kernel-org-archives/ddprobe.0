Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8073909B6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776291454; cv=none; b=gYtwSb5ylPtEMpp6nkAST6wcAW30Cv78ZcsyYgW8g1nfEBDuVmtV0Zy2HNqMjXvwepmc+7mfgd+YrCByy1bPnqO4SoKyaOBXQQMN8Rgb6wy/1IztOGgwSfghMm/Bug+7F3jNA/ef4Fw3VTC2SSc2TseFzgTS+Dt9+3gq0PTUglM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776291454; c=relaxed/simple;
	bh=ahJ+BVZYNV2XmQk0FGq1XCgx1FX99ETWWNiAP2KjfQQ=;
	h=To:Subject:From:Message-Id:Date; b=sAq6fiwxtaWHvRNeuQMSqxxJ0MGQhaI2AGdKHsIcK/51BZ3QS75HUJLbLVEcobrtDjyd5V9ooNo9sMryg5a6vMP6OakmnS1XL1xfzOGgnvWlgWnFvhHmvhqGqGqadnURqpqasHY29zg7FG6Fe44zoyiBLg7jnTWtB8N5Ymcz/HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxlo5IHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxlo5IHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DDEC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776291453;
	bh=ahJ+BVZYNV2XmQk0FGq1XCgx1FX99ETWWNiAP2KjfQQ=;
	h=To:Subject:From:Date:From;
	b=pxlo5IHLdIs25Qem0w8kE/2xHWA5Cb/cn2yWhjzmC8P6alb2w8TRualS9P/U/o7+w
	 HESYYj28ec4mxSheyMnrgD6rejIRY65FMWfuysk3kZo8Nicb1lqtSSc78fYcoqNd+3
	 6ulKLalHwX465UfDnQjqXxQ4rIkIyKjyBtD2bBpcNcbeT+ZNdua3JpG0ej9PV+0yf3
	 eXSTe6bHmhg9mG4YdsQNglyKrmP2cRaFjNQpPMuNjB7K3ELggszanPn8WyHZFbyc6l
	 rR1A/5JqT6HZ9WW7O84K53KtYdZAG0aZ9oZ3VKrpcbJO5gC3Bx7ZFWMER58BjS15uf
	 AAkuqqkh/xFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97CDF433CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629145368.27830.15048576554202950559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a370fc1b176f957d30fb480364af8ea3d17f16167b8acc7679a09da08cd818e7
Date: Wed, 15 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776291453
