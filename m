Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4333156870
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712180897; cv=none; b=qLE+O5bjmSlHBKYpXnzl7DM3KuPpLiZA2yCcLCIuhnIo6CX95tW/VU+r8kSDIpvJY/c1cxmszuZhUc5K7MsVc9ZpmndY/4l+eewoQeebhlLA5GNocz4BL9U3xXuPdsB4OshMhIruCUS6XZYMcrc4JFpe6DlVpKS7xFgtbg1mfKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712180897; c=relaxed/simple;
	bh=+KN4pxCPp71oyUObv+zRAoTvB9IGfqlYw4XI3z+FUK0=;
	h=To:Subject:From:Message-Id:Date; b=B2uuyVkTgtIRRaJVk6udVs/WuLwsydRrn8EfzlAuQtF4TbcBSBX5ZIuAu1ItNgCpZMsZzEC+wraueyMlu/RiYZ9exGRa9Pxxd2+dfPVde9Sl8XO9zXz6TsEclC8H+8RaIfGtOsWU9LBhgA1bIUA2RqbaR56vbXNfA0XyHcMZdlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM8rqGJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM8rqGJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A0DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712180896;
	bh=+KN4pxCPp71oyUObv+zRAoTvB9IGfqlYw4XI3z+FUK0=;
	h=To:Subject:From:Date:From;
	b=BM8rqGJaNykc8olhmyGFr+CXuYTabfChz4VMeTBqwLU5qidKEq5F+KtT6DQn1rONh
	 Tsjz15IrbCy/yJKKvgbbDwTTqrmgjTOoFfSLZp8HYZ1p5JFnkx6MZMqTjDqZ3MuoFW
	 1MzI4IH4P+qw77IFfZHYg6Vy47jqtixP9Mc+TIRKROlQvGCBR+nghdy83d6uegoPE5
	 yaTaBqDZKfUzPLPQNvJwrgonCVjWoqlvt0MzcM2dpIDRfH0Vks32sxSQgPuhza+5Ip
	 NzCIdlvQWta0zdAUlduo4KT2oQRnD+LakFQcP5ji9ZyNbvSK/rT/59RZ5q7hiCQKvn
	 2ewQkasjoQSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68117CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171218089641.10200.16436750376134523863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72b096fdf345f7bbb863fdec17e726b0c495d2fa6befdbd426073022a922b5a
Date: Wed, 03 Apr 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712180896
