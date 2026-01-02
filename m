Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631A15A86D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767321834; cv=none; b=Rb8ja4wJso3phB6jJYQte4DYw5aRy2Cv4efoYsIPs145ZXCKv3GAlwZ5KfmMyxHiFAjn++SDRZvrCboJba8OGyG7nnPCtPbfs6A3Oi1mS5KQAJa6W5e5PZXzNPz7MTjAmVoUsYkNuVQ6GV9z5j4PW7bx8t8uRnO5eb2Pfu65ld8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767321834; c=relaxed/simple;
	bh=wfFD7hlM9W6OQOyLo7jOobMtpVUfLQst9QuvcvD8u6M=;
	h=To:Subject:From:Message-Id:Date; b=omAgVycOKtsM35itZJBsUNXLA9Ky/J8iNb0Ll5y8bHYiUmTp0yHC+zHHI/WPxKYySUcqnm3IhVzqUqVKXU/2ybFZA+5awT7h2xyzyQByxL7LNTDqUG3ei5HZHH7t1ZuA1Tc3ayccVDwMrugGWHxLugu5Hi+RWQ3gv9FQbVrxIcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNxa0BYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNxa0BYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F15C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767321833;
	bh=wfFD7hlM9W6OQOyLo7jOobMtpVUfLQst9QuvcvD8u6M=;
	h=To:Subject:From:Date:From;
	b=SNxa0BYyNutlYUO3seO0itFh1V5WPTB/wYoaEEIZdwk0skK3GY4MGnJAw+MC6Azcs
	 hpzc0733uiNFZufXhLslgLgSWuOjInqdWbs9ODwaUXEDOCvnixY0w8HWPaKcQkMxGi
	 CWFg5118tsE00CIVDOQ+Qku4ClAIa+RTepgZeCFxKeM3x0TslA2XWg8FdllCgwK00W
	 RA7ofk9NX/uD5e/dUXE+nBldzTRb5bItuMuGGkkJP4nILPBpuPUI419HYoJe3yznSx
	 ickqB8ZeDEgmhGf3+Dm0U0ZwuU8r4lIdNMl1XK54nuka9f2HJZRmtoR7snAfzEDT9H
	 ziiO4bqtWE9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F5CFA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732183362.9932.5189917949178936546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6901c2c0c4ba7f6db4be0d90e36ffe04bcc671c0cf6b60badb074c56579c54a7
Date: Fri, 02 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767321833
