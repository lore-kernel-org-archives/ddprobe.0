Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE19495E5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776993454; cv=none; b=tehWgGtj/IDVWS1zlsaETmVcXu5357LkGCszuVPBY33lG6xbkEFHhaeio5hAJai54ZPm07E10+Q2m25MCjTno71iRM5Mi0l2urfrYzlRgkHYCbR0O7aOV4qH2yFbHLuQUaTL0CH82MVdqhrZc5LCfFFmynfYdlyWbCxk3ThU2/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776993454; c=relaxed/simple;
	bh=+euXSFbyzuRiOoi+i/DVQBQGtMz1Hl20SR0vh7VSZGc=;
	h=To:Subject:From:Message-Id:Date; b=FRBa1lp66M8E71P2dNYw2eYwJWYp5D6ZDMT9P0uarArmzdottHEXfTYvRHJN4DC1YPF4dA6z+LMDxMRK34FzWAUpoj3a70v4iVyIWfNlQLi7/jafeTBe8gnB2r66UFSR/rBKXiVdSSBDb3AxcuQhc0/wUGD/aFcP6VTPkSK6qOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSpl1bVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSpl1bVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE322C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776993453;
	bh=+euXSFbyzuRiOoi+i/DVQBQGtMz1Hl20SR0vh7VSZGc=;
	h=To:Subject:From:Date:From;
	b=HSpl1bVT+0eiPfRbGowJ7wJZkpJTb/xUnDvhDCQsQDq4p6kUY6X2+UnCqg57V1n48
	 W1hZbwCQMBzuPM+n8z2HPBAE1tKF8jaBoFkJSUIqzhAb1zQJ730lq5LWoZMhGL5Bdj
	 m9ufZxlbMUfwbUGkfQ01r4pSk0Jh3qdiGxPtCHVdskG6dhwNLeywucFWovSF8OyktG
	 6Ql4WyknRTKBn4WAo4KgwOU0+KQ93kCXWfNu/+wSuo9cT4/HVTFQhw/fBDYVJE3TOl
	 Z1IyKb6BTwE18xjEmil7w9PSESQ4zgm/r+oydBPnaMr9ByLlfbdsBlbOKPQNpOfYdo
	 FTNVjksJyRpuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC77FFDEE56
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699345368.28693.13689683772176707323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abf586d65c7bcce0b89566d8e3f4aa0b51a0f5f4b7ad54105624361ae8e8f45
Date: Fri, 24 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776993453
