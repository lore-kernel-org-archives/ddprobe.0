Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C993F8E11
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774355694; cv=none; b=FPF+GmKtESxJBD5f2nDvcFDNvqQQ/BxGaJOsK+qI1M2eVWZX2qUC6k/mRcbzwx7jntx7FCzTvWTzk02BlGBasOOkxso7M1LSerG9VmOyI3B+vawdVMgptG+rHHzKOrrVqhrVXlsks+CGWDcSPD+UU+lemE9YxGiRMhWfNnwLSSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774355694; c=relaxed/simple;
	bh=OBSrceQbYciM34iNJ4OojDKyqdvRttsveaKG1/loEsw=;
	h=To:Subject:From:Message-Id:Date; b=sIqdibwy4prqagMMSbYVi6jO7niZhyBPSuGbGv0NmTHY7HXdRRo9y1n1ZdeyuVt2NHrVu1RB3sfxqeTfuNf9lg/XKF337mpp4RrFCymalp2o6TeGOe2a66nGx++wl+WnU/Im67GGI/wthXqFjjWDWXZSEx/YfXtP556/oJyYtWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3YAcNnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3YAcNnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F575C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774355693;
	bh=OBSrceQbYciM34iNJ4OojDKyqdvRttsveaKG1/loEsw=;
	h=To:Subject:From:Date:From;
	b=P3YAcNnGWXi88w5MkawCRu7TdDlIKhwT/nnpBEOS7Zy4Qq+AqUMrKsSWGKlYQvXHT
	 SURkf/xuCGPgtTz/Sxd6d5obddrsX4CStwzn6T2DSCyLkfhGtf0ogzO80kELl2hU+L
	 5XMIUbFeSt2yElLX503hhO0FOGiaKJjMorDZnI61LJWxhVZdiECh+k1fYic98JnbTw
	 pDMnlets3m/rN/pLdEvgvAbEESzAlvyMCk2puVgx28LOQRGAcLqu2L9ocxBFTZcpVo
	 wUzfqmUTMZsRAyA3AzlRM6kt8vSYqmBQYnnkbINsAG9Yp8aYXI6UCZcks4e+P/hW0M
	 4EE4zkgM7tjRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91009E9A779
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435569358.7379.8710483046591491241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22d94a4d765e366a047cb6c25b2ded5643ceaae50e5e36376d9cc94a63d0bd3
Date: Tue, 24 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774355693
