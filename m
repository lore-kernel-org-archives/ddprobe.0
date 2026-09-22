Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E942A49E5CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790110237; cv=none; b=jp/FWgVdEyXddt2Z9AlOXnlbZUrNY4FJVYQWU6iCT5GXQIs/U+xy1TYwza3cjFkEmgCopgLeWDWSt423tvVwKd98SxZnYQfejD56GOdl6FsQy80QDUkKGaWJBHwWZ4HxJLWKgi/HPewKa/QZbpwuD39n9KO2sMaf7ln1t46SC44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790110237; c=relaxed/simple;
	bh=dY5jfBraX0X+oEDNz6gfYVESs/tAraD76F9NeAfRvKo=;
	h=To:Subject:From:Message-Id:Date; b=Zlc5a4cOB3dJUmX+y9ZNvnb8N0H/CLxqbf6R8xICh4gK3NOwxMrhU2UeBsJqAyz4hLgyL7ZO4Jt0FlbJ/DwN0EWp1cVJu43w/6gq1RnwsvDYS2t3Zx9brY42EcLi+yQTQhxk36AzL+3Kyb6xDExzUia3qy7ZESKZeIiCxK01ONc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsM7IrZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsM7IrZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C4BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790110233;
	bh=dY5jfBraX0X+oEDNz6gfYVESs/tAraD76F9NeAfRvKo=;
	h=To:Subject:From:Date:From;
	b=tsM7IrZv5JZHjl7DzSS4NHH9jbGrxhi9UoxC3ujm0TPkwnUsPjjmVFUtpEWtOCjRk
	 kqeFKSMZ70M4EeppwNBKtHkddomsE3UFuIN2zQvzxHz676H+6R2Nf8f519wyBjlaQv
	 w049HyAfCHtlmQV94QWPNy2qAveU/aP98eDoVyvcBBHUwmXzJIpcEujP652WlSv8pe
	 QlK280UamIKrqgFzBH55w4dJHZKvR/AArSaRh7SeiX8qdjWhvzciuSBRbOWlLt20zf
	 lHvAiowuTCAhPLsYwjnPoYrBd0JU+q20o0cMsL2XgBf/MuIYGOWblo7sspFvqTyvXw
	 9znvMg9PSxJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE52EC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011023370.13633.17273791470463618920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa17ce7d5cc3a27005fdbbdc935fe4a55bca39b4257e6894af09d9bda1ad3fbc
Date: Tue, 22 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790110233
