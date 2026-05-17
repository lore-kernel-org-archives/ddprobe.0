Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5569A340A6B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779055834; cv=none; b=PcldsaXtYL47IK9ozdsskW2FHBs9YbBPJ5egVc2iA4dPIrCQ7SGP/Qg6ufGY9TZNEwmCDKGcQSssFrn8u/2qiCZMSBmiN1TYazQriIVjMcfNi5iSZcz9nBLF4od89Qln3e5mfqkYE3xMfKeSlJlRZt1LUaAr6nneSRixssymqaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779055834; c=relaxed/simple;
	bh=WhWDoId0UrqO6qRT8jWUXaUZ9f9yr73Tcc0ACbDULFc=;
	h=To:Subject:From:Message-Id:Date; b=Nu89D5MeLU/s950i22vyQv9Zu2xyMjZeqJTWzO9Is7tIwd3QWuKiKyTR9RceJLGIPTOh6m44M/aWOC+2DfZPbuanVhe4AnvKzoYV/F04vDKjshn4+x6xuaTgoL5Eq0TbMQ++uUjaWx0gWyHmXZyg0ZkJgPzzIbHRFpZ19Lz8wG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxOtRXgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxOtRXgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1263C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779055833;
	bh=WhWDoId0UrqO6qRT8jWUXaUZ9f9yr73Tcc0ACbDULFc=;
	h=To:Subject:From:Date:From;
	b=nxOtRXgCtpgIIUk+HKeh60HPag6liOkoakhVdOVvETLWi5h47POfM8t9GlkW40Bpo
	 ewpdwJ96nwiz3PQcU8aSDJiymvIwFqGRYbshoDP+gK/e7qiCELUUZ+wG413QGUKfIZ
	 ZX1sK0vh6vBvdGl56zxtZf0oTegTabmOBasL48yV23dIqdGJF8JU2Lhuu4gc2IkSD2
	 WsQGK4F/4JAApoWfmA6E+fjmPO+OlYPLlSCN0UGa6Q5zshp3dThVQCSvEZl5cJdMj2
	 j5jMq3BrIrMKm04YXCUCKF83Ang3PNA7W2K81+ogYXNuoLdqOnK5mdsiufTvW2XbXj
	 v5H9qxP66RYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B143DCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905583368.11885.1820807034408816376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72106abe8e7410ff410e1ab28e606e4a1479f309ff38fea2f61ce97c071da02
Date: Sun, 17 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779055833
