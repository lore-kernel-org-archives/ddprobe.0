Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDDA46F4AF
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788780034; cv=none; b=BQ12SPFgV739E8UGZo3pPBWyFJDtr31vwtw03emyEO83luLkdWMhbPHYNhDDDDF8j86WzWzSKzRCWSX6cLbM54fqPADIT+JuHMIutCG1VqK+PsYXwLFd+143695pe2fMY8p7UG2+gaWH13/I6BMTbN5wgJv6yG/APlQvIFHpLks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788780034; c=relaxed/simple;
	bh=xfQaNamtQJR9090vQQSgDA4GIjSRF7eqbCr8b/3Lcno=;
	h=To:Subject:From:Message-Id:Date; b=WM8tA9Ukwv7OX2b/CKJNtDTP9pki1W5m1LiCfXPOVhWB6x+tyyvyat+9yFMwzVl1EmcSY67hCiSARI4kujc2SA3vxszdfjx81xyrR0L1bxpscqnA/lK3IyJ4iU69CSRWUNzrBi0Thrxw4qd4H5W1IB/xfwmcrxIMM+fO9Y5jM1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpZfrv3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpZfrv3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D934AC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788780033;
	bh=xfQaNamtQJR9090vQQSgDA4GIjSRF7eqbCr8b/3Lcno=;
	h=To:Subject:From:Date:From;
	b=bpZfrv3LiJfqh1JuArpTWyV3G2aMQRoKDiC3/MEecVvcdac+mBzTjZ6cUPFcze75W
	 GLG2+HQzpFlIayxcbLS25Y4rkC738y2t9L6lIeiTNVWzn76gjEkOgV/Qwm3d1LiBoi
	 +KTC1t7Fd+RIXhyLWlTtEQU0DNFYv6rw91MkDVfTpUrqxXJssidNhRFmKWDUPDl4uY
	 1HZUjs0zZBJNVS7KNsfbulQRilJ3phsl9EwEs9T4QiVqFrd+jY6FqFlsZwQrS7cVUg
	 ZD/eMvUN3pSNreuw3LOoQa3Ky+GUtmKSuaJMOSDQFBuXnmqYCyIoUMNqYHH7Z1fZdb
	 Xf1vrb52Ec3tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5680C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878003373.5881.3784572285211004773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1810088d8a0da776a47a785810c9e4ba6a23507cfde3f8909c286625f91410fe
Date: Mon, 07 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788780033
