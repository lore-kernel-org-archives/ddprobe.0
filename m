Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167753AA1AE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778795434; cv=none; b=Zn4n1/vw5kLmJY9KBK6fOxbIFvBF7oGf5mvv6C3St8dBqKsMZoriHr2s+UfBjZMObQLWlsSEked1DquYYz+CKWy9v0luvbsmlAIwW4YuOG/fv+hPr0lKEbC0EOoTrkXeWt5sp4aeOd/ndQJpGArE0KximWGgw/0FWRvyjOEy4y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778795434; c=relaxed/simple;
	bh=Nz3aguTL8J9ar3AHNvLOz8AQTJZJ20BBDqGjJ7Ot/gE=;
	h=To:Subject:From:Message-Id:Date; b=rsnAVlikpddd1lbuZu4s0hPMzRvMQY6M8Q+Ft0+g7BQnQiFxuD33oPBt/WcR83jMzbe7ARJobgVpcH9bwSSucS2fv6hWI59xeX3hSonctbE3DcKv4rKSDBMG1iUPn1SpThrzd7TqgvavO+c/kN2k0IAxOYWFslQDA7DKJZ9KC34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNbM39CA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNbM39CA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCE7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778795433;
	bh=Nz3aguTL8J9ar3AHNvLOz8AQTJZJ20BBDqGjJ7Ot/gE=;
	h=To:Subject:From:Date:From;
	b=mNbM39CAJq5scdYft5u9iEh6FWUP9aKPlgXc+18uJvW+IPr5H5/ol325cS5a8Vm+d
	 pHR/JETpEUAMFD8acl1I51l6XZsCyNGiU3DTn1GbnASpy1nJ3KdqnGBxatoyvDZqbK
	 LBXAG6FqB7fQcG9pbW8HwGvQ2VlqMYv5FpgSToVbFqbkmBUzFWbrNRowaqNSIciUbP
	 vbSjYtyCvwM0tMtpYYumHwCRe2UylsOxiAotSCXbuKBblTz5EAKuiYdIQG9zgDWNCA
	 UjGNFTE7ElwY9HSeUzzrzNSP1J5YuBUvjGlQz7ZrHXoC2h/XQ0EnvmiibRkBIhl4Vo
	 HFNSpxZkDpl5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0FCCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879543369.9347.7467967920251693624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c50103812dc66e492b3ceee709e177115a8ea9acb8ffba7061cfd6332e1ec94
Date: Thu, 14 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778795433
