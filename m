Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEA937186B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772780094; cv=none; b=jPi/oEFfapLl5KsB4MMxPDoM89z8xHJ5+svRDnq1/msJ0f0Uae84WKhEbaEvI8d/4hIw0eXR47QTNEFmDLYCjxJ1AeI7Eg6CGY3f/tN4VB/MfFln3fO/OnOsku/niv6v8dMwJ48Hg8tgxYfQSqizRmntO/orStRpSNdOjWzouSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772780094; c=relaxed/simple;
	bh=Mlobx69/UoGfDK1t4+/P/YDItNCLBigGnJ4I1jc1wHo=;
	h=To:Subject:From:Message-Id:Date; b=Y2t454Qw0AGPyLCdpHhZVz7GcfhnyHJDT/FhNgemwjdW/TV9QfmOyeSvIAYJFAET28baAGd7RaRziriEwA85agZu5AjVUFET0MF6Kk9juFZnihz+w9K9EZLXq0IOgxGFwvZwMGI6SmGTJawBsi7NnLbSWi77ZDdWAiM0lPLcOjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkldgeZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkldgeZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772780093;
	bh=Mlobx69/UoGfDK1t4+/P/YDItNCLBigGnJ4I1jc1wHo=;
	h=To:Subject:From:Date:From;
	b=HkldgeZBeiVKAc91K8NydVDjY/9Or2digzul75E5ISuEVaR26fatDGfawo+P+zwnI
	 ssYgQqtx6P39nN5I2ftp4xlPdzgcjBe8Fx/EaNjlnxVCayTBjzgQsr3wwo4j65mYeC
	 ZVBm3oKWE30NPHX2ozCxkGLpdmsxQ7IYwUphINs8Qz4WQ9CHFW1C+AKNpLSehmV7yF
	 QLG990ByoL3CBDK6IP+LDs/lgFbgz8I2G+YCQ1XaWu7nuOo575eAyzltqZj42RijIi
	 EUCnymtvNspotDrMpsC0OsJz8Zmi3IW7fNkWJmmvreGxPqKgKQkPlsuGbvUG1/CC1Q
	 19ErZPTcjjpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91427F5140A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278009358.19448.4240886441548020370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d613f199e3b8259ea9806aabec9ddaf38b4f46fa97a1d9582a274bfd5602d93
Date: Fri, 06 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772780093
