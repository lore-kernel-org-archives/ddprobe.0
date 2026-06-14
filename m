Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C73324B24
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781429794; cv=none; b=qupudFoJ/hNBl57cA3rsBdVRuxF+nn+9VTQ+yH0slfbER4oPSXnLvU3VQMvYOkuxB3GGtiGG+SWG+Pi+zWcQQkye8EahHShD7MME18G6DdiEnsgsMNybjsr9oFL5DF/ePU6StEjyekz51LDsiVNNVD3futtoVKO+MPYnpxciV/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781429794; c=relaxed/simple;
	bh=ZmrGZDxmJnGkhY/ZP7PIeZyJdITi/DfSso5oTDibUz0=;
	h=To:Subject:From:Message-Id:Date; b=dCgqX6DKYIV2wHGg0/N4kthUBLdYTxDgg67Zlg22WFqfzVpnH2DQQaOYTPnkqFCVfjg/uDg7cUQRjc81BY2mynVuJsH6twUqpVxZxKbMYSFeGOdrSoGObjPgjfTIIpTZ2MGP+YzW4L7nPICJvq7tNxyedpr2V/1RLx2iOs3nqN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRSlpF4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRSlpF4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2815C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781429794;
	bh=ZmrGZDxmJnGkhY/ZP7PIeZyJdITi/DfSso5oTDibUz0=;
	h=To:Subject:From:Date:From;
	b=LRSlpF4vhhNGO0aXf5+9I7yl4Nzht9X2hp4LRQ6cDx6gX5cp/QRe8HJqeH3F6nZF9
	 2WlFA9R9R1G+hZFWi/MDz+jkMwm8FlZpX5E4s7rW71wJ+ejpvEYGy0iWkZfhQ/HwXN
	 0BRQ6L8vitBIefpTAhImnu3ksFDjSYRkZiQpDyKIqdsvAhwowviiykymp/IhoVSjER
	 duejbnQ6d85MjJYLTDUbud0l8WVjS+to7akWw9V/Lx/CzCeo/Dx5r5/V2AGJjKjWSg
	 wGKsNWc48ORYWkPiwVl5rCl8CP33M0U5CRAuOX6uqXMg60zHVeGuXlFgjBQ4wrPid6
	 KkJPGbDyA6FRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB967CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142979375.16290.8873007534637916302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ac440aff08d3a34a55556f262084b8e0f332433d8983f66f79714abaa4be5e
Date: Sun, 14 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781429793
