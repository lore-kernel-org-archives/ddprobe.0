Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A8E370D79
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786499434; cv=none; b=S4duTs8dSR5pFehbMrVq0TFwLyYb8iBwqNMDSAv9KlkXAoiGZ8VcXr3e9VArPyX4qzZ1+xk0TzJW/7+o8VveLtFDP8UATBeThKYmzxDKdcBfgDNEofRJmrOjBhqX/38xAjGX2bJLrZ+QJcJF16vY34K89pu09in4ryiHPGzveRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786499434; c=relaxed/simple;
	bh=Cistqj1M4c65PplTTGwSbSWiwBRyJKCb2JIByJczaUc=;
	h=To:Subject:From:Message-Id:Date; b=c4ns7uZZu6cVl/BXhe+KWt4EoQMxnauTqK1S/nkhT/rhFreak5V6UhQC3s1qF7ArHrDeVb9blMnNfM2HbazpQeniS7Hbf7bDYFAYWxONV95pfH/X05ONJKtPBgtUCtYh9sIL8lz84iXeE1jN3nOacR88nXfI1br7gEP659fiGM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXXBYIk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXXBYIk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC43DC2BCFD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786499433;
	bh=Cistqj1M4c65PplTTGwSbSWiwBRyJKCb2JIByJczaUc=;
	h=To:Subject:From:Date:From;
	b=AXXBYIk3HLmdpnSAlJM531Qz1H5M6GV+w6DRE8qlussuLJarQEMk2RneYfDyc6rpv
	 6GMDWr0tx0tXuPk/9LspKnbRCNxQT9SsXntJGxob7hnQ86YO7pwL0aUbSAiWnh53KA
	 HiGe8rxVrYSFL4ONNPN356etD4rJUxlgWFFsmOXd+8niKMUcnKPWoDqZ1EBi/qrwPx
	 foyvIOl7HSSMpD80UwkAXtNy2Vmd4361H1EbS6uLp4Da3LRKD72uQ4QDCiY8yMV4YQ
	 q5v9iBO5n+NLZZzPVr3fYUjSZfQOaZKh6SjNLqgjhRvMDowX0qWyhgAgy8omI9QVkt
	 AtMWURduFAf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB372C5AC67
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649943368.16689.8815554630379315468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edabb2705a1eeddab896f20f4acd31f9d2893a172e3cf9b9c9c9bddff9e65761
Date: Wed, 12 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786499433
