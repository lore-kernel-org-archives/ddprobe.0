Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C1C2163B5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741342733; cv=none; b=M6k9gd2hGfzE9CXH6jUHq50pJxL7y0kHr0XUB4aW7PF+ruUe7hFCY9dUHU2LJFMdcclseS4SF7CmFg+UEF/S3luznecwlecvHiC+CibR/oWYsI5Kk091IhY6ZTW+2Kl17U9w0T2qd6fVWZzOtotm/7x+kqEYLdN6k0+mDThya7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741342733; c=relaxed/simple;
	bh=TksB6B0IJbD2rx88uFH4ckQXQKJGLN9ETzuRZnOWb3w=;
	h=To:Subject:From:Message-Id:Date; b=awGhiggk3a/oyYotWt7LgmpHq/ocdc1JaecdVJuL01woWwuBYcn2b8lABzyO7gkxMiGq/TV6SJtY8yLTo/ENQ9phLeVp6Ug9/hixl6K4Bad2hjqTbi67zpTQop7zFmyADkWU4C/bDMJU8XUNELyl33BIqK32+5sx2Sieub+r9BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcpYDgjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcpYDgjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE6C4CEEA
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741342733;
	bh=TksB6B0IJbD2rx88uFH4ckQXQKJGLN9ETzuRZnOWb3w=;
	h=To:Subject:From:Date:From;
	b=dcpYDgjLKPbowvslllMDqiPxwF79p8ixJg/beIddl0oyShMg+XerczPR81n7Fws9F
	 yWh0dYQuDTMXx3zWSJEvfQ0xQZUl/8XgfK+fY5biCxCsUBEyRj1nGoQmUPCk7ChmI8
	 VElW3M9DubLb1pjm/6rLNyUjDbunYxmmVxTiEUS8a43rIJ5A9nlctUAHjMZrRafZCI
	 +xtobkCB5HUI4/24YuopeYsNR8y18rsJNyh4Toof9TaZWRSFW2ZdWUYsXbjVScSGaA
	 wqZftru3PtHZjlTpnRbfH9uEsxi3gfIns/srGfckS0dyJ9Xrp5tSZzWd4jqn3Varom
	 ZKQtM+f4XmESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508BC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174134273360.10452.11243711033542126639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9830bf655168377a792a557a624455cea932b4f301cf291380bf646b1d3a13f
Date: Fri, 07 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741342733
