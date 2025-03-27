Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390032FB6
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743035394; cv=none; b=SSqtnhf1Vv1JoqcPgU+WP4UJBiXDSPm07EDkQDlsG8XEZXkOmIspw6CxWoTGAft8JgXamHyUMQZgIDUpw/cyAJ0kK6W+72f5t+vA/9WxqLxJ9uTysSv2VEiG1sDv4f1rI7wltAE7YOvF9EDkM1sCA4/aKpKrtM59hnQVBQP+JjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743035394; c=relaxed/simple;
	bh=tHHh2n4UqPFnGDWjWaXGuRTAP5oJHSigYfR+AaUlbKs=;
	h=To:Subject:From:Message-Id:Date; b=GN/CGWVJH5qo+oGGZyaZea217KnnuyVaa2/Wxh9EcLctbmPYiCUtiUygDLXh2ZgLCrc9e6quCEvdLHAsPGwH/HI4GYPKLDPXdSryYnqtrpZc/tGT9IoflTC78xJpJDOVj/0xR2q7awUtIvP+KqT8Ysa2a/00oZTUMUs46ijZcAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g10dkGgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g10dkGgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4762C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743035393;
	bh=tHHh2n4UqPFnGDWjWaXGuRTAP5oJHSigYfR+AaUlbKs=;
	h=To:Subject:From:Date:From;
	b=g10dkGgYYZ279A5ou/N8U1jPJ6AX/qFZUli8iV+Elqj8Qr7JpLR4dKqHhdRLJEQkb
	 BDh75U64UTB/EmxfOYjf5GWs0ZGXoRCtmHpAvMa/3jotOXdh8qzExvIFtld7OpHfZZ
	 cnTad/orV4lsjrA3rRkooeQoCA+YDoYBQ1SVuATRss0JJqlzfS7YgHugAxyF+ayPRq
	 e66P8FZFyt36Mu9WW1GjVV931Mize+EjhEowCNbaIXOLj5Y55cLWr6sXFstN4De1F1
	 UtL0A8zZjudSpKPj2cfpSuapUbMxaeTbkrUfcrmNfmIi6/BbUKHTnbaVoXfw+J/ttf
	 i6M5Ng0rIJAAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CBBC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303539361.5948.14826823362900947084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316b294eeedd9039bc2dbe634683ecec8fd28b7b375715fdddf208f65fa93e3e
Date: Thu, 27 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743035393
