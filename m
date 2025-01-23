Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAEE1BC4E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737599754; cv=none; b=taXym3LdVic6mCDMwFFCu5/8qG894lWn4Ht08rfG2w+D2hIGCvDLY25PYgQNhP6OoockF/O/7AYF2wBrz+s6T293alSMUqWj1jBNEeC6Oh2NJuHd0L6OEq3xkWSYU3hK9EMnyzhZLA7Q+vjQ1mtFts20PP96IZlbacy6mvOsrHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737599754; c=relaxed/simple;
	bh=jFuQIxOMZFci5h+46O1vAzyeTYk6RaR2X/8qcxj724w=;
	h=To:Subject:From:Message-Id:Date; b=f9Vm2cuibZK2tqHVQWeT9YEjuNanl8lfytHv5K3HphWxzVvaICLRDYJPKnUVQqTpkQGhMpbhqxMLbIfqmNkmHNp8yoxRaWcGuLLE9ToOZlGkH1EJg5Wo5vCGe/cQFfYUE7BJE6jQFck3VVM9z3E4QLAfSr5dB4NVw58MTxYqGso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHefNYVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHefNYVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF83C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737599753;
	bh=jFuQIxOMZFci5h+46O1vAzyeTYk6RaR2X/8qcxj724w=;
	h=To:Subject:From:Date:From;
	b=UHefNYVo9ZX4B+mUzdmbnXxt2boq6HfI1ycZwPl2H7FeB1EHrSXxyHmGlIGkKtp+t
	 wWJtXZpwsKLv7DqGJibSVe2tPg+ZYD05R6nrI7IZttghzkpaWz/++rFpgzvWU76csN
	 FBkIB2MfD4w82xS107AXJk3hbUVHQZGwtCQenk3kMpy6l63fEGpZKg+wlhxY+TzyRV
	 wUxQivvuXQDN98+wmJ54oLqGLqu8RFLM4cdbIJZpCR5e0ae+RrvhR0h6j2OmtmGf9g
	 udo/Nc2oZnzpUznfgMKytB9E7/sk9305N7RCXr/SiCbnNQcZHX1To83dbfby5MLCCr
	 l6U366F6gZwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D47DC02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759975357.12903.2087835021116083900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e705159a116fb04dbe7aa694356aa6922e90679900b286861e8144003be8cf
Date: Thu, 23 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737599753
