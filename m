Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E942D7DEA
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763445114; cv=none; b=TYl7rNIeoITlUlQaU9hfMrfcY+rVTbHV3u1L7RAFf23ZyJwW5DNN8EJb3YdwOoyMYHjnLTW90vfSYpPqPLlzXsdVporKQxSh8IfNFvHJFkoY0l5sJsflPgTTmk0+ikQrFWoBDl3XdtVirsJNQLMYTYCh3IndKV9rBjWbN9h+HTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763445114; c=relaxed/simple;
	bh=BZBXVE6VvFIk7kdm0L6E3+i4abUwfwcKIxx/49zfUg0=;
	h=To:Subject:From:Message-Id:Date; b=KlRDMVznK278gsJxDAzk7pBMwJsTFA2rVIss7K3vxto9hORwhAVd6c6fVvCSK3TXzoTZVC3nIqIA0KMVy0SPsIrNCskkzjNtCjqMnI7cXJdONWwdky1R+zmo35xleUEkzbn+YVtpkjuBQaFzDGHJ8bh00u36N1i3ENgzPRLVwck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZSnjF34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZSnjF34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92FFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763445113;
	bh=BZBXVE6VvFIk7kdm0L6E3+i4abUwfwcKIxx/49zfUg0=;
	h=To:Subject:From:Date:From;
	b=kZSnjF345JUMAk7DQZfwHsSGGmMX2oM9ycDgOz4ibw4bv+/rvqigv7uRCGFo2JgNU
	 mk+f26wZNSPxoNoWH2d6sgVzsShlfPSfyDVzUwUwKx6YdVXMPHhF6FmKJrDg8oOxDG
	 6T5xufRspLMk7J5nx7bXZXUy6ODnTBF6fhxhw1JE6KpJt1fhj7TcpiWMere3YJsPfq
	 yMtAwO/sYbGuS5rU3g+j2OsjzAZtQlaoETBc3zL42SLb1TgFPa0DxrxgHsyOC0G7tm
	 o+n7mqIixsfpOo389NU8Uj5f7AEjK7+1o4ZCq9cGUkw8BBDnWExnPXLRpbVgO1NZzh
	 f/ssetceuzDRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0573CED240
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344511364.14194.3769171822547661782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3781a3001b3fa43f57328240974a5d3c3d81af5d4b476775002e0d3b643e6b
Date: Tue, 18 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763445113
