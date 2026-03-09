Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DEF35C19B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773063294; cv=none; b=ChpqZBCu23ftJkfDFG1lhUWqoxbQd9z+b7Ze6dGPuFelsL7Aq3FZrCwZhHyU7K1611UqeT/28bm4ulnFaEYJ1rJ9Dg1p7LyWSSKsor6CWPyfns9O2jtZCyqbwq9gc/ivd7wApAJDFWXDNOqvlejO+FtppY92z/tG7GlZHWHD614=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773063294; c=relaxed/simple;
	bh=B9e6hpulf8TLPF/1/XxkUicGVysTMGhW/C1PDYmFSpU=;
	h=To:Subject:From:Message-Id:Date; b=KO3FfRGZ7fjXtX+dRNx+BEraqRkc7FdtuVxBOTE5QCtJEST+M2FuTJiaQFiJMXu8jYi0dtSaHNbuY9xRI8ReXFNx+nD1kxqB7+PjDXbo/5jOPQA+BsXk7JFg+1Ez19STPRl43JfIHBVGz9nCOJBoAicnrDQSLNXA2jrOwVl1cGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7kqNkxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7kqNkxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97669C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773063293;
	bh=B9e6hpulf8TLPF/1/XxkUicGVysTMGhW/C1PDYmFSpU=;
	h=To:Subject:From:Date:From;
	b=O7kqNkxltEF/E3bswYTL/tgHLzH6FdBSankmXsGmO92HquOntpAbzXbd95M446UIE
	 isH+gl7Q3UtOUFxswbK+FsaqBDxRt7kv2WKupF9XPv1sUvLoYlr5FmtWqOTeZBR8tV
	 DoBRl5nZL8qYGfmzOTrqnL7lDP6BghDZOI/HVrz2poUanp+FhGabuEYzAaLxhrbWJZ
	 kmqsljUru0ewXGl6LyuOKYg3yBb4RKO37SlVAn3pBErGRKubVHsaPet7BKD+fWRTHf
	 6qVXn5wNT679Iex8QVnaplv3lBSpcZCSJmjJFG5ukiZcqVG2lSueZao9H2jBH6pYx/
	 hdP+kp5+2x1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88AF3C24E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306329358.29472.11591343951095995196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383e79bb09826042903f2d1319533df95260308bc3ef5f7c41bea3b2465e955a
Date: Mon, 09 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773063293
