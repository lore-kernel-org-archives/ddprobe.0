Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD8F25228D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532794; cv=none; b=LFtn3xydMd+sAJnk4vtqGV5ifrD8sU+6svDWZ1sIj+6E3nb7MxmnVJwQJPmFC4LK9WuG/pyo6Bwou+y1TQZtL5K+yP0I1Sahyg6X1aSI7GINSpeGzhZ/h4BysBTlzPdy4+4x32nQTjm6qdV5qdxLIyCCJCEMM2AqauaIF90novM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532794; c=relaxed/simple;
	bh=/Ci0S2ogaBg/mtJeSKkccLYTQlpT0dAncGLYvuMdZPk=;
	h=To:Subject:From:Message-Id:Date; b=PcQbYAyocsvck0RikdflpJ6bk0HCaiejbqFMhRSBB7uVIvkw9RWyJUFHoOvZ0aChADBbxbV+ruzakTM2SL6KeD2/l3bu47aa+i8/vAewahzQZfXi7ZsDD68cYGtOn9fC/rXOKWn6f6im9VH+2wucJnys0NBpK7/vkOfNxJhCyo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fnx/ijd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fnx/ijd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D45BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755532793;
	bh=/Ci0S2ogaBg/mtJeSKkccLYTQlpT0dAncGLYvuMdZPk=;
	h=To:Subject:From:Date:From;
	b=Fnx/ijd0WwL84XpHGvxcoUrpu2YpsaVIbPF25d3EAWbWiSFDOemd1Zo6uGpsmkOUH
	 Ku0/tcGexVkCbD3ov+0W0jCafMRcsLdosAnGvYu9oVz4I4UJW4068Aou3I0RiRGfTE
	 DUFfdWIkchJUehLrMjuBEAJPdveiMXbcpREX/UN2d7pPPg/fO/i/6QvWzafKqEmvdS
	 3F3/1ilObRcBA1PFNZbDDU6dr8FBzBXmdeuRYq2jEzX1UdEOdi+GdaEZhoKeuCd3XH
	 anlZW6UJPT6Yt5HC/OOAQonJK2A6PBx/+rrOp6AjTInG8rUdvZ1LXaa/KysjKcfQQr
	 7FVUOKNpLA+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F927CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553279358.4907.5145290864732344125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187e8dab9c09218bc140cff36d14555ba748fd4c11c8a20a110016059749eef4
Date: Mon, 18 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755532793
