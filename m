Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DBB1E32CF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768817634; cv=none; b=ju6x9TbDZTmprvFAFCd2oZcVkYvHG1Ebd0h1KAlMOD4cA+HbG8nRyxCmdyABntNGi6kgujAVX9SXLzUdiXNE2NiM0j0/mcKXI/BzXRlYXrE3DLl7mKWVSZj6bA5JzsFdME8q2sOxd5yXqx8kqfOqKu7NBdGVQ156SY3htjySg6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768817634; c=relaxed/simple;
	bh=NybaB7rzhvay1GdxsYDZHJsJBUaq+jL43lgbhzBfPDk=;
	h=To:Subject:From:Message-Id:Date; b=WRM5wUsJX+hHRWL5lgxxUt4AV3r5xjUeQnFEkZ+S7odDi74QM1Penfb2Jw7hS1RBkHPxrG0o5nPC6rH/H33jVOGOxWBgIQJmYHUKqJ0Z9UOogeLlhQJGC0euPerUNW3+/09ZH4ZZilHJJJa39ltNgZGRqb0nmxOgZXrjnngM+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO53ch+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO53ch+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D764C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768817633;
	bh=NybaB7rzhvay1GdxsYDZHJsJBUaq+jL43lgbhzBfPDk=;
	h=To:Subject:From:Date:From;
	b=eO53ch+4wz8e8/DzRZd7QbHoaZRhYFSAaRO6I4xNrkkjV5gxZWTA7P0boqou50gwb
	 T4QQNvGEqe30CoKTcEVQoVJ7bn8SFhgJr3aHnMDIEzBu4irW+jg8CZgR/WOVDAKGDy
	 Xcolv2arIYHZKBS1Fr82JlWeKIUMWYb3IqC3X9yNADbm6NGv+giHgQovQdxoHb4ZLG
	 ca3lJM+nQcIcCqprbTP6l1NIq6vkWh64Vy6UR1sEn4ZfJdg6UFA/NVuL/HnjRMsK80
	 PO/MBcLskpZHYgfELmKfgELB8BSQ4iB0xYabN50TSbgS7s4x+sahA5/+qu0ZXduc04
	 EafeOKJ4vk5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8BCCF2D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881763357.11524.4479170153917049150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9c3a4c36935e7f27bfde34b9a7b92ee57287232e406dab397b3b17efb5e812
Date: Mon, 19 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768817633
