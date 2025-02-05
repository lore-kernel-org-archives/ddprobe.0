Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4486A22A4E8
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738747554; cv=none; b=BuA07QRTodkyn6TkwKqdEak8WW0FigArMtCx3nzmGD7OMliJAC95xm1WCAq2VWMFJfVxrcgCrN5tHfuSMyP6NvaSk9V1I3vIZKqeNA0rGmxTFPaT7QpYichBmC9bEasTm04JS7FHV9icgducHJowzzP02eXJczGAvBXGBUGTLok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738747554; c=relaxed/simple;
	bh=A3g1H5uXJweoJlf/G8sP0yd4+vg5kxX1wiNL1OVIlws=;
	h=To:Subject:From:Message-Id:Date; b=BYBYwXSUReq62Jrvt/XlCX0sQjzMPucXvtWBt3aZWdqcNK0FCiN4QWRrSVr3zZL/8oZBqrSruBoR2qPT22QsAscJiHBbuCxN3DHz6+PlwvaXGZUgmi6ZXKnwhpjMB5CjaGjAw5EpyiTj0UkM3fT5Y5kjkQpyHm0ufyWKlCFlNpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S68AFALb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S68AFALb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5309C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738747553;
	bh=A3g1H5uXJweoJlf/G8sP0yd4+vg5kxX1wiNL1OVIlws=;
	h=To:Subject:From:Date:From;
	b=S68AFALbMKcqH0ceufdClc349fIBHi70QR3cMSMk6SoAgLbUkx9zf+rdd2f+fymRA
	 YJmQbLr8ftqKJ3J8MDeIqtMuX1lLE+qw+e4kM4sifo5DLHfDGZPNfpvAzsZzK/N4td
	 LCJCbVscXriINfVhzKvkcNvfAH5pGWyyFXI2K855F9UjEtA9p9gH+o6n1BzxwQv1Ll
	 P/LfwXZi+zaPWDTu+0+LxZOJNfytD2qdt0UknOmfsg3lTh0sD0tvBOWDHnJCokU3DB
	 rpWuke/6EFdUfKdPNWIgW5M2QSW0+J1uSxMw8GsHlgcVOjfb1hRRZhnxXwZ9Q/l9RS
	 e25QqSB9NCXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9860BC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874755361.30159.1044185111895119192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1c10727357fef50a797f2fa17ab82a2ee2708191d46eca819de328defd874a
Date: Wed, 05 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738747553
