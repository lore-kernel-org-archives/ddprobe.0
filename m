Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A8D2EEE86
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788070834; cv=none; b=Ev6I4IdU5oMSZcLOpgnpfYJJNvJ3JuM0I+x6B8f8rhEK+1VU+86yRlJfckFGINggdWJVkMDhNrbVKaVi/mYXXiJJrurglJ8uKiQTc7o589lSjP5lnBfVlZoYI/fkzZRYNgCFHQLotnx9bw8W7T0ww+j7QZQfaHP2q7XISDgBIic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788070834; c=relaxed/simple;
	bh=YfgInax5zRQjaWtEF6XDBW6c55FWodNNOxe24BDwsc0=;
	h=To:Subject:From:Message-Id:Date; b=W8wSQXLToo76gEXkwUr/aRB3fuNQ3jz3S2zsZVD93es3eoCATZBjLRV5rfdz6fXU7nEaHSVcMyXT2KeSsKkmYBvaYHiYIBQgKtsmQADY3Dy+meF/jiMfbwn0oM6yUHo5AHLLc4btf1DVyT1fuvEnkpdIysCL9KglZEssPLbOqOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsW+UB97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsW+UB97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD96C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788070833;
	bh=YfgInax5zRQjaWtEF6XDBW6c55FWodNNOxe24BDwsc0=;
	h=To:Subject:From:Date:From;
	b=gsW+UB97WYg7/pWj31h/EOPG8CJVNLN5YLVNsfJPo1XWaip1eOcCus7sR/9qT0jx4
	 hYH2Dp8Z6RlRMLXihpuOCG4xY5/m1DwOd4/0aG9yNJD/5BdsLysVInRHrbIBWMxb8V
	 lWmeWVPMMAM4wB5f6bLrEZ0VWLFPhlfpANPTfBS1RMB572B6lUFno4g6Afqg1NjZuD
	 Q6V2jjkrCHb7zPY4XmcvimXwAxtU+kcig3SP1hZWRGcOFnRxf3KbKZAe8F+CAGgdm8
	 g1p8puffiQypnfmQ3onI1eceogoUerBUQukGVnKMI+pyCRC6B5WZEsnbzCHD+3nVP5
	 Ramg+CiA4xXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F5C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807083368.28708.3705594504950422074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe09c3fcdc589c5413e2b6fd517af84a17e288fe4011edbda7e07cbde7727e3
Date: Sun, 30 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788070833
