Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B2C2931E9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791341434; cv=none; b=VoXjg3SN30mb5dmQAeZ8xBwEV4hg1ydbIjQ23U5XHPQmhjYHOrDSiRjWZ2Op6CXXOJroVqyAccuzzWcdzQJWhmNv8XeoF3JPKLYeVX0jyvuPId2dfuxaXRL7hAKrnIRwbrJXzaBddFdCyNSKPiT2DId9MxcGtw5fZR+ZjQ1GN88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791341434; c=relaxed/simple;
	bh=lPk43gS5XQhHRxg5iP4F7C/TC/6l0G5zpLM/dIvuYy0=;
	h=To:Subject:From:Message-Id:Date; b=d4H9Gc56GDvxMuV3aH/mar5UpdcSsMCjXJXnOT0jHJitZF8DDPPPiKQV6mF0U3fOrEssoE5rx/zfSCOXmtWaCg2z6elnCmKFQfaYqntkS5TWXuFQAmfxrsRQrqEhBo+z5ZS112GVp8rrSG+x+dOc5/hB5uLa1BQjpMxr2NAC9Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZwP2an6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZwP2an6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C9CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791341433;
	bh=lPk43gS5XQhHRxg5iP4F7C/TC/6l0G5zpLM/dIvuYy0=;
	h=To:Subject:From:Date:From;
	b=uZwP2an6l9Y1iGpjDmI+M42RjTsjGidy+vuV3Gz37y+RuRekw2j9f5EpvSUVANlDT
	 Ha1C4UmyYoZSIMwZ3jQnZPTxcgVdtehcyVPxqPz3YTq5ZhDnOvcQJei+tPwVVlUDgI
	 J1werDnsY4/E0eLkATW50UkiQO9aC663hGWe5NjSzOkaqCmo2Mg2xwDNWjo0nsRQhc
	 xauND5DmFlV1+zNeoc1QlUqg4PgebQQTiqzdTkDLhoJmWlWYPTAtVyD3ugaQ8+SwGr
	 OsSTB8T4kEvtIahbqP3mUPd9SDnTiza/Wx8ZlrdplRvVBwXfK5aiCSe5ru7+p/j94e
	 wdMhYxSVyc6tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC8ECA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134143368.4237.7068210537468615667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2cefb82214994ab832c3f7db6c693e2aece21b57821f415801f01b33e37ee4
Date: Wed, 07 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791341433
