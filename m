Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB3D275844
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761030594; cv=none; b=i6F4P/fFWccAr0doI26HmpffGgDUpDcK2Sc92dBYl45Z8vLwJxKdYimVw576nsjtkTBHHRqPpDXsw3BcaUAp3AwhLAxgQop99+cbB2eMELD8q3YDYF1R4n3DswTM8HweVuc3LXDm2iGvuwCZJ1Ex9L8IopQV9Ih0rqIwg3s4Mv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761030594; c=relaxed/simple;
	bh=3kYmXxjgt2jxhCz/wZiZlSEOo0tTYMD0mtUeTt2O4IM=;
	h=To:Subject:From:Message-Id:Date; b=ZG+zGKmf/iQmFeW9u5hK1LsqbFTmwEdGEgfscioHkfdr506ecWakvVMvNFcOy+lqasp7N8/oze2GjbKtINDb7w/Dc+O21Dop1wBTMjGTNpjKnU0lZ3RE+ZyqI9l3AxdJqqCRfzq7OzE4P3XY9azAEayvstDBGjUvDdVXIkiJcJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaqnZfvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaqnZfvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD37C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761030593;
	bh=3kYmXxjgt2jxhCz/wZiZlSEOo0tTYMD0mtUeTt2O4IM=;
	h=To:Subject:From:Date:From;
	b=GaqnZfvnXsbwGS8CiPcmo2ShOBXrorAugb9A6F546iAQcwv9+Ee8eUYhP0g7x/ahD
	 Gp5j6vMZi0MDhKys3iaF4XLrRO6eUmySxZeJQP0nnTzvWGLywZDEgNnbOQHRmS474R
	 MQPzGlVSjZ09b1H/v76mxEUCsISYJJoctrTd+Q10dMZV/tKLQqQWzOqSU2zFeWYKyB
	 op8uXUyr1XBfuEJSGAbqSlWbpNt6Y468+/U/gyLy0Un6mVqP4hRcCpcTivUW9A0R+w
	 o7K/08B0Cfq6c2299kP+z5TSUpOKphobYqqG/dWGWar8WQcO/tSjc9ljTGndtMNWL6
	 TVW9UDGKDPA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA5FCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103059364.18631.11763250135898145270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3477cbfbab6be4393ddda4ca861f3e0992fae50fc15738f286a66c32eafee215
Date: Tue, 21 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761030593
