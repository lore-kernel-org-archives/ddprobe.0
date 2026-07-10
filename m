Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFF529994B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783659514; cv=none; b=EMv9depBuXIuOUgkg9eWNgJQKTlIDC+ph3kKFqJRuSlXXj7XN2urPunOxKE0/7BnPHJ1QFntQA2zMu6Y0jCBLgyB6qMXRIn8nS5544lo/AMCtAV9AvQWOegXG8+wFD6S8DqxWF6HoUfi7ni8fWSJSa0iNhaZiPbpIAncbx9tIR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783659514; c=relaxed/simple;
	bh=cHmlIsu/QR9PBVuvOL1b5OXa7ZUyw/gO/muIuSjd9ms=;
	h=To:Subject:From:Message-Id:Date; b=rEhhjIeZlZNO6ZSNutCNPXobMSO5BtgWLRnbNe8T5dfq4a6ZaXRK5v28O67QWSKW/RMvms06yyVpT6c6zCNvilbPuUMU/gR/k15D6KTdfz0jA1nXys7joRDTHSfNuhVs3FBw9kBxaw38smfQpHPKfHnhsDvdbhY0N6zI5n6ueDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsOZ6SIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsOZ6SIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0294C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783659513;
	bh=cHmlIsu/QR9PBVuvOL1b5OXa7ZUyw/gO/muIuSjd9ms=;
	h=To:Subject:From:Date:From;
	b=nsOZ6SIRA9e4elImdJr19lsw5unDAriPJtumqOavLBUmzcsuFGegbJaMFB9dXGKuh
	 zLA8nHhFUP83V5tJ4OZAnMSHZrfuYRr/WDVurTCw4laHNJs2epRnPOG5LlzCWNX00q
	 bEaf2GE5+pBYOM2D+4bqjJREnZKXuXegWkEKGjIZhIdGNiaRDuf8cbD318iC0wTl4Q
	 Ss7kr7BLTewKq9h1HFmphVlgC3I2bF4DQ/9jvtoqnwOVC/4mK19Zg+Fvc6bEj/jgnV
	 xC8D+6O64pcmJIeSYgfntmIgxXZnGQrUY0WLzHu2MCOE/h/TgcgfZAuZwGm5rDV80i
	 aXpoYbFl9kfhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA2CC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365951370.28093.3214962640978656167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb50d237112785b85d274a706d2a727497cbba84950ff3798ddc47cf541e50f
Date: Fri, 10 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783659513
