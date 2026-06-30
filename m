Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376812BE05E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782832114; cv=none; b=HCOzbe/Fq0e7CEZkKfkSFMiPf1oVVLvH0fc3JcYRX6b5Ln+q1dGQjUyQ4PoPif8FKnNZGoKYRpo4spg1fQSmXYixZD/Zs9CpfYw3U+QLRAVTXXi7Gx4Q4m+VOO/cRd4FoG5vbwKC6Et01TGhdSefIwbiLEskJM+CUEg7Y7cbg+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782832114; c=relaxed/simple;
	bh=tYcPWJ61IAJcW2IbBuXsLQ2fQSxPXuDaHNq1w15lNwA=;
	h=To:Subject:From:Message-Id:Date; b=Yo3+o8Nbzmh/QMYPKweoz75uM7GqgiuhGBE682D6tiAR5rGBaE42n9MkIYf31iEUjwuH5wAUB1zPp4mAr6oSIgfolC8Rnt3l3HpKjxt83sftQ4ziC6yksjlluTDxicYHfBtGa3IgmjzrnnJt6IZgCUevpsge8RZOcSXWZosq97o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1kmjTzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1kmjTzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33F2C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782832113;
	bh=tYcPWJ61IAJcW2IbBuXsLQ2fQSxPXuDaHNq1w15lNwA=;
	h=To:Subject:From:Date:From;
	b=p1kmjTzlxMTL9zXFyBYzATXeB0AzkWaDtTsuH7B20xvCi75nTaz9dfi+osRkbkDOF
	 rc4R+23l4cHzLgXjjgvLnVkAgDX4V7503W8cg9XqwDCVw5gmlYRFQLlTLpXub93h2S
	 S0tKSxZXWFRjVmI1sYFXad651GW8uCELVQwNtoDMBwpxOBFBcB4S+kFPRecUpy2c5l
	 ws6pinFpi7gEammcTfQOAuhmq6snWR1iKjf0dyj6sm4nL4u2ktbgvYQhj5YnXdral5
	 1h+YU8e1La6WmHzi3Ue32S7Ws/ZSdY7AjIzilsCn7skAk8cyXgHK5o2Km0zZL7tW2T
	 BAOKZzknILf3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA75CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283211368.12673.16329388839942662450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142cd9ccdd02d5ce4c0df559324a549e9e69116a547965c6b8127400971eab1d
Date: Tue, 30 Jun 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782832113
