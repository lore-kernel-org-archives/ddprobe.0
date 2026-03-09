Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78BC36B075
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773044094; cv=none; b=eWiFPFVy7SuhJJXAAavZCWagxp7eGLjsP20d1b9VuuhddXNvVyLBPPDG41PSbpvCVSIdUsN0121HWFlssBkhjkdGNvj49LUC5tzipp9oV3PXqQOEXzcvUPZpQwgHl7u9qnXIuw6NvWZjgUh7eGRdItSgYKOJTvRNrgSewx5L0xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773044094; c=relaxed/simple;
	bh=9ifeMRWRF+WeZm6XDUbHUNeAc6e16I9p/xxG4OrLMHQ=;
	h=To:Subject:From:Message-Id:Date; b=tkp9MxiXgY0/9XikmAHePDqB3KbRVolxqNNmHiF0P45eBsx5uwMfeZB6s5L3yJuqEPJCnsvN039wvskm9mmRF4sKWp2WfpsVzM74fPF76H1yZ+nGmlPMgVt7y2HP0zAra5a5fUzEi/+IyfIh4dvw9Tt6KxkQdAE+HhGoo2P5Aic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrJ/EnIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrJ/EnIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773044093;
	bh=9ifeMRWRF+WeZm6XDUbHUNeAc6e16I9p/xxG4OrLMHQ=;
	h=To:Subject:From:Date:From;
	b=MrJ/EnIPvGUE5OoQQu9p6VRIunBS5PYO6foKHAcgpXUe4W+gzqXyQZa+23B5vZH/N
	 ivya1sO20JjXnYMM/h6elXRBT/OvGD9ojgQpUPVe7uQq2VW2hOdZQp6HsVcQFvDN8O
	 awqOtmmSN8kVowOKT8jfIt+WHs/7+oUHbKkhY0bt44ft3ayNj3mYHUJXgV/oSzW0gi
	 5BOe9uV0hfDcXnfHJq5bZkuAECmMmHVN6ukLzXySfw1cApADnLb69Fn7LRTPPJOSug
	 KoiDQAJMmFJCneodpdK56LsIQUV7umPNU/V73M4DZXejAgKbKPHVY/qv96+KgPM+cQ
	 VCRDp0mizcAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92873EF370A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304409357.22445.414382935962779024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ed93dd9eccbc61d9a79b03814165e47ae9c7524875fe535a55dc5e9196bcfb
Date: Mon, 09 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773044093
