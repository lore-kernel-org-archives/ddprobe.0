Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C82010F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732748754; cv=none; b=de1jS4kM5S/VbVQQwRKrJn4osCKzQPEMKBWvMNgTTkB1BMeSVscKE80/S9goLZRtFlJ7Kod6Co4YZvEV1HUHqFYJ5qSZeiKQlqy7s+cADATJXMnX6Sjt1XoNzpJvNSb6IOGs/KA/LLZ5WxHzvHBabOCACMkJLwj4K1ICn9qxnKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732748754; c=relaxed/simple;
	bh=dIEuhazr5KHVam4DxGbw3pg1KNrIqxixWc4teASgKOY=;
	h=To:Subject:From:Message-Id:Date; b=pk6xZVSRBIaxAu+gheKdI0BFyIGLpYuHgdrT33dAG+bCDQJK54sBaCAXQ/1040IJ3cpnn2qpQUkwrBblYK0YipDpcXjwKu4n+GuhtIt/gqY+alV/tqLBeBsBcCH+DpWbgQ1sW5L32OOWpVqhcQaVTorsqWwHSUH2sDfU21Mmu94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1RXvuUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1RXvuUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA454C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732748753;
	bh=dIEuhazr5KHVam4DxGbw3pg1KNrIqxixWc4teASgKOY=;
	h=To:Subject:From:Date:From;
	b=g1RXvuUPNcucojQ4lp+iWdqKku1naY8H+czSRc8/XHxqsQrAjO46BwHglMyCFPF5T
	 sd9gqJ5ohdoptOEtkvWWP/ZSTXVya0/hjNwvuM7CJ6FG0e3fWtru5SW0gprh4AI680
	 h05F4l08to5HfmApK53n8UG72VvZZX7Eq2SAHGTNlxIVAeoKg4dg4e4AncqXsiGHVE
	 35t8MQ/9xuuhpMKfSHcMLnGebuqQy58J6bJxjmYnSER3+Vifkm2O8YqoTXfkdUMDHT
	 uPgVsLcqArlozAuZ8RxYmuV+NtGjxMphZh8Q4dgKcdCwTY3EZzlodcFEfhBjBsqkgd
	 RBql0QbXhiffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99978D6D247
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274875361.17106.11269417278453254479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3500ad84eed94c4bc560047db841c811e3b82c4c1cf6fe20fb21676bd9b14db0
Date: Wed, 27 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732748753
