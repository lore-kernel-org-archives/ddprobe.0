Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7101BC46
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771793694; cv=none; b=ppwKz7PwFDEIstG96tGLSfiV8EBt1Svny4mkJoa++iFCOLmuVZN5+e1X9CUr3hLt4Uz7dOshw0WC0Vyzdz6vLsieC/9SXpRGRKh9ujeUjDu+L7X3wE6NAeL/x262+QGjCFpuLyB6H4wZFOgecVOW4umZ3kFFwQmLLoDPVX5uZFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771793694; c=relaxed/simple;
	bh=of8f8bm0o+UhTIJILhYCGeKrkb6yqVeX2tNnszsku0U=;
	h=To:Subject:From:Message-Id:Date; b=tZo1yBy74ucTV9zvMCJuWYe+nS6Pd30vf7A0jmVf5KteP9KBhBJ839MgvBCU3SepUspin7ULuqn1BpbNDR6IMT1+YYvyoT1YHHTHV569sN8j0hCu1u3+lBDRfiXreMfTJk6oH1T5JSY4iQV/jny3NrG70drRtpArsrTnlPP1F8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CorwzQ7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CorwzQ7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC69DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771793693;
	bh=of8f8bm0o+UhTIJILhYCGeKrkb6yqVeX2tNnszsku0U=;
	h=To:Subject:From:Date:From;
	b=CorwzQ7b1oet1jGSjoGIF0Vzv9XvN6OzZXOPCgz77CVydflfbBirJuURh9c9n7Ma5
	 rUEjMPMck5pn1L6JKzrnLv0xES5kSH8AjlsblGMLKxU8r4aiY+iBBWKPSLjgEjjbpZ
	 bzwZHxQupByXtP+OHXHwWZnOd6lmf8ty9r9XFa3bCOt1LSElDIFJXKhq01qkk+sCou
	 hUfY0CjOp7nv7MXqfkszCznhiVphVSovj0+ODPdEvX+ZEYH7gmg2edp9qksJAq41zX
	 n6xirSaw19oepW3ZW3vBBT50gsDm1tzKUlpPPT/Q/+72CuVM8GHtfLblertba1NRxW
	 qOQq3LmKaluzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D58C636B8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179369358.5564.4327638408280045624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aec98d5776459c3cf3150200f33fb555a78b8913d6c01ed02d0ac0853acaff9
Date: Sun, 22 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771793693
