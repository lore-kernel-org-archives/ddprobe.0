Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B084345EB3
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785799834; cv=none; b=O19svX0gCyKWfAc2rrTnxZm1jzgtSbxUiDtyzhRhMxI8sl0YdMuzBEBkvHlU9zRNbAftjYx+7GnmWQfYAonLsNiRtC4bvr7zwgIDv658mkWzVipOwEYJyZ1FDxUb9vMfxQXLtkXoTXMTK23WH5OXx8pVaa2C7v973J9SFFZrrPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785799834; c=relaxed/simple;
	bh=xil5lwBz6OGLXKqrecUjJ2Eo7N1Jf0sKoXyUPPI3eKk=;
	h=To:Subject:From:Message-Id:Date; b=knPoJAQKXe+eJBaExVbqU9ADMR23IdkWrF04JbN4yuJb31jpN9LiHjUO5IfJz2dcZ/sU4IwruRk7StYzmMLIQNw3A3ZBch/tLaQBic33k0yjxvsMzXvFjsDdzaj0J1QuLsmKp8dNs6Xv5C9T31vKJNBIhsDw2NQ3+baGfNH+jxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oyx4y67P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oyx4y67P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D16C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785799833;
	bh=xil5lwBz6OGLXKqrecUjJ2Eo7N1Jf0sKoXyUPPI3eKk=;
	h=To:Subject:From:Date:From;
	b=Oyx4y67PqyJ+wmRqBPhYYwUaJQoMvR2wNxbNp30E/WyJlBsceGbr1+WKapuizlZiq
	 FM58XVwrdY+7VNm7QjH0G8BSJmb2U5p6MMwd54MTxMFiQzt+YvySEMUljx4F6RWAH0
	 o3F9jcQdE1eI86HZ8NhxwRGUbJW2sLYT+N8DUkUItoLzAF9szRWIPMsErd8fF2v4mK
	 clL01vZwIRWGLfMSRAp5DBRVZ6i/7mwTXtIBJavYnL1XcvXs5o4C49ID6DuO5QCPS7
	 mxXUcuolxWlq4/CT/JZYWYlpjszv6+mkS40hw7CYNVWXCnnp7b5yq0XF+Cvho2BNkE
	 bKkUeI2cRxFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09F7C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579983368.4814.11594587528610428568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde45b5025aed5f0b7876373b278b3dd4894f2c10200d68f98100777d6bbe986
Date: Mon, 03 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785799833
