Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C75E362154
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777261654; cv=none; b=mNl6e8b1wH+gLVYHUaSKz3KoLuwmZqJVDDOKoHpMKD7lAZeDLrCs7A2H0Vwk0toDOmCnCrmWCSegC4NrG7rJ9962KDkIMa2uAtKhc/LSHH37XtGb1fPtH/0ZoDeiPE+JCQWYj14JO0YeMSs760lm+0JkWOFoHf5wUb5K/6r4McE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777261654; c=relaxed/simple;
	bh=dYL0ojxinmf2fF/adzmrf11P0Ng71NdHdio5WkANaZE=;
	h=To:Subject:From:Message-Id:Date; b=Os9cGX83CamK+T5wF4/zRAJPIQppsCj3oA8rqiD+ndHUMdGnZUdVoQo9mta/Be1gSs5sfObvca6gGx9iCf3dJlMbpE/jwJk/8/7s3cYHuvdkFovVXT4jXkEM5Q7OXJJbwFq1n0x4CH6/CF0+XOLPEOd0/0y2SXRoXhxyI1dLHSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE5lyG0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE5lyG0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB632C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777261653;
	bh=dYL0ojxinmf2fF/adzmrf11P0Ng71NdHdio5WkANaZE=;
	h=To:Subject:From:Date:From;
	b=KE5lyG0kfUKN+jq33uL13X3rddvjDhv+OLqkUwWMJ7dzN1Gx4enYY44+QOu2bZfA+
	 1osmx3LZKT4TVsTLLvGHbQCe7DJvyNT3vENHzJpyVb4soPmO2cHRPaiisFIAEZwuMX
	 4YUJ0TLvNBksmuJi7uBoU9iqvYdFCPrf7MKno31cM+WEBja1L/XsjZbe47g9UFw0AT
	 sSWQCpuSl4019SsCTnMENU1KIpsNEIadHywXBIMq7DzTPQCvJFhN7DihJV1YsPQrzB
	 of1gkQWDUWZyYQ4Fs6o78ytICKLWR7Rji29UgfWwCNNE6MtKvn6XsEFtmV4JkASr5p
	 sIGmG8qZ7XTcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9AFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726165368.30955.10065651339634390372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013a1c848d9547756d82452f0c25df19fb88003cc0bc88e3df3b16fbcac30ea5
Date: Mon, 27 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777261653
