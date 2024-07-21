Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F084944E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721579154; cv=none; b=sntdCfUxOp//lQSgKzDIVoefk2Vobo6AqAWXfgGxcB1w/wPTZPAdlAYa3S+wFv2qgfzKHGxxhI42Jm6um2gTDVAacSwMynTn24nlU4TL7PREI0a/ciqTy4JzYwviQht4g1hHKirpGeUjqTKo6EsSsc7C5SKFHTSegY+HKK2z7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721579154; c=relaxed/simple;
	bh=mkHFEG3xMQqgedYzLGZGKpMTA0iKlivlYclhsPx0kF4=;
	h=To:Subject:From:Message-Id:Date; b=OeBe6bjL7jJQKlcwPBPnHjrAK95XlDQgudaa8c8h2WxsZeF4CXwvc1/b63GBWJ6xEazhCPpGT65PtoJmq1bbwQXLJJuXA+MK3S/nIXVUaOel8MRwU/q5ey1ebQyKwWFpTrjZ6TPlBB9KWFpyfBOmXjb7jhKyyUX6wGbxsCtC/bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBhR6LnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBhR6LnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA558C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721579153;
	bh=mkHFEG3xMQqgedYzLGZGKpMTA0iKlivlYclhsPx0kF4=;
	h=To:Subject:From:Date:From;
	b=FBhR6LnZ8FNDqDybVi699f/bB/UFJho3Ht/4ms4KJAdoh1jlG+ENgoC0qEFo6fR7N
	 FkSBwsqYY8mxu9yHpPd+DnJ6iZKFF0vVHqE+NgafI3NI1DffHcI95yI0WxOeyBoTta
	 2WmWU/w9YufXv1l3I6HpLXggguumJE3AajEDFNsKEArwGNQCH6HG+5A0XIgcVcr7F+
	 w0Ni1sbtn3zIfPJqJP+pyA2539/Skmv8DBYcbHBapEsldLyWzB8jDgVX9uaagy7x+X
	 RES5F5G8C9RCiVuUVMEKiaWzO2zlDGoVQkpMcutamR08X54XYj5QNgK2IDt3KfGHZH
	 sbq/e2IH/XtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C073C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157915362.32272.14493852808675351040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330d838aef9681cf6fef4b02abbd7c3afe2d4bca90c0e0aca2a1d4a8de97155b
Date: Sun, 21 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721579153
