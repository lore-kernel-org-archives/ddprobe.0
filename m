Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4143D1D54FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739288395; cv=none; b=KhrdX8lblzTWC57OLClbbeaLPM4grtlR6t+0Iej0WjBHDKHUVbXMnZgVZW5C3IuitgWHXy+CssJdbJRsCZZJRQIT/0bqtb238p8icnz4FlzQ27Og1cdIKQMbwVZgLqdnxs2Zbx/QvvsDt3kUoZt2vKogmoaYy8vmhwg5QReZQZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739288395; c=relaxed/simple;
	bh=A4qg2IhAddVlO7IPyejYIBRxhbyfGl25PTzZG/pPaPQ=;
	h=To:Subject:From:Message-Id:Date; b=hnRbsgif+jVnOhINCjvqCtFZE21QX9274wExbO8PKD6Xwiaw5LIaGL97otZvgdPbRtNfwCUDlXfXEUpgsXbcbUa/K8+xzO2j3gIBel3a+IhyWhXHQwzLv2ZsVyT26sKev84rLr7nGANzi/PAcEXqMMVcP0Dt4puUrp+mi1/fSLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clcLS33B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clcLS33B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4025C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739288394;
	bh=A4qg2IhAddVlO7IPyejYIBRxhbyfGl25PTzZG/pPaPQ=;
	h=To:Subject:From:Date:From;
	b=clcLS33B8x6i3J7JH7ke8P2FIaVF+LvdDqwqZih59Bp9QZayG3QZ5yA6lK/GARjvE
	 6ml0A4Ry7lhrKq9VdCkxxvkrvCALY+qecNMbL2ka2hXScIYesi/Hrt62Gb/eoQihok
	 cFCSSsxEh7CDlVkJ2LOMUeQ3YXQDIQkl5yhddElLXPKRrNwJIyicBeO23b2Syl69je
	 Bd40WoNPHd6pkEFAW85EwwxvoKchGkcuPhY75cekrjztvgKQGMN95K52aUENhSgruA
	 ioig/nQZVo3qrzTtpfK7zMlqOCnnoY4GdhF4V03qVn7CtFnUIB1bnGARTkiY7eKjkF
	 maV2yxFIgUlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 251FAC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:39:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173928839405.2540.16599729807506201709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050a808dd4bfd742d64993189f9d8e47a498dc8cd0af647f00d0128c56e8a59d
Date: Tue, 11 Feb 2025 15:39:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739288394
