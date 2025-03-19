Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333171F872B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742386794; cv=none; b=qy1z8TUtv5sz0SuNeLzG36xfekfnvC1D/GGCvzyRUm3v8eEM3xJRgBR2wc3UlNZ3YZxDVCGXj16gIBxf1LyVMhWJkTYLP6WXFKB7UqGCwOuR/scGh5b77n5WjrW5ivyW6jUuVZJ4PelFMyI8IZ/Aafhn1BkBexmAfYSkGUGi50E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742386794; c=relaxed/simple;
	bh=uBOv8UikuFl7Kb6ctijyqWSs5kTAroKyXTvnERxPaO8=;
	h=To:Subject:From:Message-Id:Date; b=iwQmogx6qJ6n4ddU7bcC9VEgMYeuXS7DWJMi7omdeNXE63k/oBc8sPFsnPuAfOWTwpY5izUXkxctYGISaLEEQ1tgqqF3m3Qw7TpSRx+g5rTKwuaifvUXJxLFyNdxtX0ACnr3TbrE/HRSnwmN6I+LP4+Tbnf7NoF9yI0J4dxgf3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiuIaMXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiuIaMXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742386793;
	bh=uBOv8UikuFl7Kb6ctijyqWSs5kTAroKyXTvnERxPaO8=;
	h=To:Subject:From:Date:From;
	b=fiuIaMXMf0hA4BPP53zELTXvAVQ25jBny976+JE0vPtagXq+MuMLRXXM4e8ITuSdm
	 777VStwA8/sE7/ccYIZ+zfpCqtYSKJATpt7VKHnLZ7algfZPep+D4oah1Y7ZcqpEym
	 U9P91zFefQPyuv2K89ZYoh4iBf7E179bOjiyesGUMrUuCHU/juw5GL36hcJyXmXhFH
	 G45nzIJOcrzmDXhXNL482qTeXYd0PU6WED4E+opruD3GupE9sHZVOEp+ufZwA2OYmQ
	 3gts9ropl9qS3e9jMAN8loX75Rz2Zfcq5j2fN1ga0u+wzS40BJaWv76L8S6YJWmSwb
	 b2DnL1caImP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F627C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238679364.30143.15485300034066664307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f972ea8c2013ac2f9ba39bde1de416f443b427eb92ebb17c3c96c8fb00f27eb
Date: Wed, 19 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742386793
