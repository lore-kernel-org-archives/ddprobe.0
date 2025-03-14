Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC222E3363
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741931334; cv=none; b=phd/gEMx4t0XpEGO9CirieblaO2TDPv/jejlAog9BJ8IiHw0utlpS91CSG6PkVUkOnNHdP08aHy9tMnP6Wa2NhS6+LWhJQLqk1HnS7nimOz22BWBlEq5snEaDUC4Gli7GJxqNTnoOYM8g4ebrRYc+IP4+NP1oh2drpi+AhTOKN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741931334; c=relaxed/simple;
	bh=cS87GFCD/nigHm7DILbZbj4z1/uVkPC7aFUrDFDsnC4=;
	h=To:Subject:From:Message-Id:Date; b=oiHchx+cXqUEwMV55e7ipsPSkGaYk4iS8bsvhoNIbzG9TJe/MqM/euZhme5PhGTFS0AoJfjyVYa2/a1DzDY9INE+TLsHsBZ+KifIrYPn/rFh0UbSeLYE3OLOg3bPkD70LZyznoY9skd8zI+8G02WS3LknqmwFLwhblYnJVz8c8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqpVjAKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqpVjAKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6EEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741931333;
	bh=cS87GFCD/nigHm7DILbZbj4z1/uVkPC7aFUrDFDsnC4=;
	h=To:Subject:From:Date:From;
	b=BqpVjAKE4dK1D20aUkp4Rf4KtsXxLeyYZXQakCsXykmib9jnO8RQmJr8X11QMgvht
	 jatjxaac7rIzHlmionLQljOsFzZQ3FTKJLY0kppBirnLZ94ZAgyRnci0aOzkg93FcZ
	 NSmJ4vj7xW/I+Zha+tJQAKX37WYRLIyCIPG7wCE43w9rU2IsPZ+LKDK5EF0Np106BL
	 FtczxD6hWtdxbja3FcrW+QDRGrFWA0hcOJU2OsJ/bzInvc2+RxSSJCPuNJWs2maYA2
	 18q5NFNW04BtlcbZMnzW6gl6mNaQ/TVZJO1vq6vC/jg7/beoJq+/f3/yqzYKJ2p7ps
	 5P4WX2t4QJYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A079C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193133362.3069.10287947066556773812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9c82a1f32503a53742de55801a22e5949abed7d2e71aec21dbd65d8b89effe
Date: Fri, 14 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741931333
