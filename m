Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9AB4A0A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753001994; cv=none; b=mcKau3OBjniwOfpu+3owR/lNsSHXkhuEshbwnB98us1E0qpXIVbeOpXlzENLQEng4NaCV8Y/vFsYhzseiX3rVc8niXVpvKDUb3mNqqyfrCdju9rYSjosNyVbp07E3Duq2aGlFTB2kwNCtnyqkjAtbMgqXlVYvuIoYN4T6xL3gnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753001994; c=relaxed/simple;
	bh=qbpKWeeOUxJXVX+1S07Os3y80Hjv5YdeV7V85SkTMAs=;
	h=To:Subject:From:Message-Id:Date; b=bWcom7sxneHs9DSopPTvAEeT++eVGpqrODiTbtJOJhLz9ovhBYzLw1wemgCZke4OV80c0lNRvWYo4ftzvUPAx6UVPN4QLsKYnPiVyg9Aa/iW6s/GGjOpe4uqEom+V5hM3Q3pLzIqtPMGrcdEocJ5wfjomai7nC4aLeOqxOhBvmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amsOpfRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amsOpfRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32DEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753001993;
	bh=qbpKWeeOUxJXVX+1S07Os3y80Hjv5YdeV7V85SkTMAs=;
	h=To:Subject:From:Date:From;
	b=amsOpfRufTO2uFCKz65UxtUtdXYC1iBMTbmsBsdTYjUyvCqsKUl7zTuuKycGZSDap
	 F/n1se+E0H8scPSCfzXqHSu/eZHijmP/gF1ity5ak6YHWP3J5idky08KztM3c+XG4t
	 icVxPEXJeRDczfndfQJybcIM40X+oKPBlEZXvE1f3D7+HPOUD6KA8V1qa3VN3XDM0W
	 kRvLzBN4CYl6ql2JhZfqxZ2A8BBVY1xUB16g+f17Z4y7bzlvwiWJVg2osMakGkLuzR
	 pSHEt4nplaNlFckSomb+K7mnXmS/PJYOCjfY5q15z2xn/IW4whMQQQiaMnLsomwAJT
	 WIsIol+S7HHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8FC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300199358.17349.1779625055114975948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77e312f402fb670f65f129a9b24fccd97b48df817daec72f4df976b5de6e351
Date: Sun, 20 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753001993
