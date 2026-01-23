Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1664A2D8792
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769201634; cv=none; b=JbBuzXeAkrtqRU5GKFCYp7gDt2ZXo/dejogWsvW9V4GN67Tk8oY1OJl4DfmawX24zG57MT10qH84q6YMt0a7mUi7bQYVpR//lrU14YmoeP9t3/4W2aOQ6riZdXB8K97XZNo7eaKtCW3dRT/+pBiLd545ulCOe88f312jw6C9WIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769201634; c=relaxed/simple;
	bh=oubC5nOZT0QNnADapDdg0Em7Jt31LV2gJfu415BpbQk=;
	h=To:Subject:From:Message-Id:Date; b=aazHeBW8bO7sIN4p2+xAn5RH6+HnQRCbcBZxqv0BV6Dp8s8yDCEiAXvGW0w6S4O6uB5cmqCD54iN2JHx7xHlQ+1cMdEjjU4n3jZdeodFxfd97QQ7JlGaDFwybxAI2n9Z0IHyBn4C+82tNAOcMLEhcfMd7W4RC2iWTpqoXDsUqwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfgMXyFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfgMXyFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF4C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769201633;
	bh=oubC5nOZT0QNnADapDdg0Em7Jt31LV2gJfu415BpbQk=;
	h=To:Subject:From:Date:From;
	b=gfgMXyFeuy9mLfvXDQls/eN3GttWYJbHAN/dyy9+VJiA5Yk4nnEIqza2ikJPaoWtt
	 L/OUmlRb4oWwZFSmX1O2uCcoUmqmGYh7EwqtFzG3mDfZTI/TFzeY9h3gOHmNR4QYlS
	 ZQnuBAUlN/HNuHReFCFP8exLetzJO2xcoczHf1GjRWDF8P8/7kbc2HPmq9aNncFRuU
	 yEsDMsaaNjEInDt4xCOT76QLqdoiipMAZFZPP3Fahp8dZ7jvy1vrcHF4vSgQ3H9Zrh
	 DKjZGsvu79oKqV5Xn/Vn7y1SvCqJZWEQPJRP7n/kOcJH+qWu0XkL+hOHvsaRse6yhy
	 xNB+opxKnJozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2ED778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920163357.23992.11923089490828516774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b726ff7a02c6d0498686c9466616cad173b0a3df9359f7ffcb403625e11fdf
Date: Fri, 23 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769201633
