Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92FB7FB
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711780697; cv=none; b=caVzUt0ZzwgCw11eLaGWsazmrOJzDTeVa9gI48nQ3bNqwfs/IM9JQvdCnrGqDojZiJMiq6dj2ZJ0UeRpIkvCnCnMP0983cLVKWZgQzB/UiHr+24bluQTLKlq6sR3NOgDg8gnadRg9GjVwRnnX1whSm4B6iQpC/xu9seJ6/ZeoBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711780697; c=relaxed/simple;
	bh=WparVJ/JMP6kTtemWS4sDkaCUDDZsz4EXnTmdm47oCo=;
	h=To:Subject:From:Message-Id:Date; b=YhS1DDm7bbtenZMFGOumQD+u0kYprNQ4V4d5ldK7BSQArP1LuGF80k/kZAuSpRarHmySiLUT3w274kQT+5ysBsh6CdQAIofZS6U6IXMeWnjraKkHXLaxDLCtup/Y0VTqm9QtLNI7t16gU+xnwaNllZm8fOeuUho8WM4VlMZqUr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlqJGUIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlqJGUIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771BCC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711780696;
	bh=WparVJ/JMP6kTtemWS4sDkaCUDDZsz4EXnTmdm47oCo=;
	h=To:Subject:From:Date:From;
	b=VlqJGUIe+H/Oh3fXFFfIobPcdDYBbg9uIAPwWvp8jYAqIBx+RX+/hHPEfoUXc05oh
	 EJoUga+ItFS+vbHKfiIN8Owwz6JKqe16lNd6XBuZWvPcWdy1y8kX9d75q/tfJiIQHL
	 HFiWEsOQJIgpnLslIMOTIywcmOQwLfmI++43Ro88vrsffHxbyY0SiMVLpNqzbIwdZf
	 QgcnXJTfWX1Q5RigNu8VoKEK8X6LinUqEu0mkCVWepRhnfWJfOX8eUw71e6cMKu7C7
	 xl+ZKtig0SRRC9l+9BVeRE7Eum3LcWhKYMBcDZ2cwPG01MTHlQgxz1Y0eRuYRyuYW9
	 EpXWC3wqQColw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68ACCC47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178069639.24766.16107336216917906078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59c461edde64d2ff261ec9a01a6bd01f96e50e71398f77230c5e9c92916bb2b
Date: Sat, 30 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711780696
