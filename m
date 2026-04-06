Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353761E5B88
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775444134; cv=none; b=RDy30SwnOXzx3fULbIbEHRaXzEVB293hjuTB9wfcy3vCdN5RaFfrIxvWNK3petlE7C9XC7epOHqW/qnbgOnAGgPtA/tsQcQRRWuaTRvD7R9/NoWWur39tkUxCKNMfysqr8Jwqi49CgCnIEpuJX6Qcwwva+DkcLekbl6TbDCIluU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775444134; c=relaxed/simple;
	bh=7NRFtStkcXlOjw1ll5VnaCtu+KqMlii4gzkgpH/JRaM=;
	h=To:Subject:From:Message-Id:Date; b=nuQLVt9b+nnRyxNrM85HKsKU4Keq6S8oQzVjxJLFdcbEaTVnL09Vkd+GAbdO20IvFgRhw/7g3XKwng0irRJ04d3RDI8ZxjmnvYUh6Zs4ix1HJZPwkjuIjS6ekuoG1HwZnrj5QLvOXt3AnPsxC7ou0zPrfaajpZ7lKGMqGCPiI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNLLWJ6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNLLWJ6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE4EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775444133;
	bh=7NRFtStkcXlOjw1ll5VnaCtu+KqMlii4gzkgpH/JRaM=;
	h=To:Subject:From:Date:From;
	b=CNLLWJ6P7sE7R+QX+8ND+x1WkPrxyquqHpwP7oXV+bttNXbM+piYPn0ghllF90Vdm
	 B0+8ALrZYHS9xpQrsyqP7D19iFdfSXm6nXAiBb8a1XJ3IpzGhyoYVn9vsTlnubWGY/
	 yl/fb7PLjV1KXrdiIcEmnOAvTAr3XgpqRMe8YdU/YR4qcjlkW4DextXPnFHdvCvNX/
	 TRR90RJyNzxGmrFEXvGUfThpzqlvi2xAYOO5tKQMCGM+Bv8isgtpcOBpZ+zK4WT5C8
	 5hwjO+OjhE5I4tQjsPLwPJb5Y0MAG6WiovrjF01W25TYdr6JH0huOmGy0VRneshkN1
	 CQaY/oSsHPrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7615E9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544413371.26968.11139593515142469072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce3d6b9b45398a41cbbb531af6fc821b6c70f542246e96d4038a7db649178a2
Date: Mon, 06 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775444133
