Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0938C1C69D
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766241834; cv=none; b=mqa9hT/I1W4An6oPCmbjng7ICX9SE1hY4RK3laeYwq0uPucmq83j62BqUndwIJqrBFAqtM0TlLjSIJ8m9etaqhDZWC3Ju0hAjBhkHe2tSm2ThJUaH4hxGh3vpxp8cABmahJpMVga4xQtCiu7FFNcLrzDMWE0ftn6sQ0LUrZ6ups=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766241834; c=relaxed/simple;
	bh=qeH7GFKcuBOcf1/QZ0h2VMrluADqcQ+f/F6xhTCzAbk=;
	h=To:Subject:From:Message-Id:Date; b=mAMDOPnYbuBRqarA17us+WaA+Kpt8K9a1JpbZs8XXbN/FF5OzizMYybq7vvT1vdvID6WsptZwx8IA7YjzyfJzAOB88+h10/lDETNAyAgEJIX1KE1Fadk+UwhCY74Yhxa78tpRLqz8r8/0B+gXOP6p/XJ54JnFQHiRd6arR4rao0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+b56iOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+b56iOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F82C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766241833;
	bh=qeH7GFKcuBOcf1/QZ0h2VMrluADqcQ+f/F6xhTCzAbk=;
	h=To:Subject:From:Date:From;
	b=K+b56iOjkH+cWtu9jGHu+9coTy0RzD5dgW1mjQchba7cYsUeS9letOzMwR5sJlH7p
	 bghn78pK336v83izQRH8ky6DE+l2r4h8Zq25oezVJ9BXTGXjEQPaB8l2NJMcJgLOu/
	 pVRCZQJeAjLlaU4cjnTRahJwcFxQo5EGbgCM4o7CE37PpLGYxTFFqPNKAucl/uRaWU
	 p4snY4Mvp88PptZVhlBUGw4585sNgAfxIjWwKI33TD+A164v1VHUpSWp1nF2UvmF7T
	 zsPRksBwc8549jWNcLnuhAWG+UfocCNgQfPku9AHcy20IVbXWtZLjIa+mulSR74oOi
	 ybGmyNbmBSG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9277BD78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624183358.26570.13842388110095477605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ae19698a15a8eeeeb9f538a14806c74481b3f36a6757bbf1f1410c2436ba14
Date: Sat, 20 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766241833
