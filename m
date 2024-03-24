Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C0419E
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711247897; cv=none; b=P0WHCFwxMaKbqavdCP78Ft4d/CtsoSO1uxlvmpzx2dk1RkNY2hwyl2lwrWaovPxUPtvFfnKSu2F26GITP9+EfiZuM1LRgryKLrHxj9K6LXhXg1k/KN3VH42sF+tVBZxbppzdM5Ubntkjd6VgkCmkZRdI9vqLYboNcttckND34sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711247897; c=relaxed/simple;
	bh=SzJI5YUn65u/KoNXe1gzwdluzxrVZIF8KiNkQWlDT0A=;
	h=To:Subject:From:Message-Id:Date; b=X8FlEqcdy0dUkhfyG7yFja6dyyfCsyyMnG2HC4K6xwhcg2eLWe3DVDN1DIc7Oq/7ITPawfhE9IAJr24+JUoSdciggpM/7063ad48zZ9ILuggr0opqJEOxPqwsPm3FKG+Z8MN9rNrsCcNYxcRN0QFUVEYhiCIBUg7FXeFc+kjepw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ifde2XqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ifde2XqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83622C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711247896;
	bh=SzJI5YUn65u/KoNXe1gzwdluzxrVZIF8KiNkQWlDT0A=;
	h=To:Subject:From:Date:From;
	b=Ifde2XqWqyMQNhrZKt68F+QA9LqNMoXQ554lpkOMSuRQCQ8aO7nrUz+zZQguAE5cK
	 PCInUtuQ9LrlTLpjFo9k/CfgiWzqd0kj4p0OzfbQCAYjBY92lTa3m6KR0WdWU1ZOWV
	 8qi6rXd7vP2/3JzAtDXTzjykd7rCCvM+PkSPqP9kVKRVUCG6ONOh+5AVQrldiBmmTG
	 4qwPxNItBY5A5ExRBRFUL+3apAfKjK62axGl8mxS84ucogxEJ51fVBeIc4QGlObx78
	 +i7IO3IWgl6INWyXTFi3jMSnIEXxvajKh39P658oDq+58WbVjdiKOYvOMaA9S9rgYJ
	 Yh176NEm1oiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68DF6C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171124789640.4658.3936169869446538783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bc668135329bde93de817c5b1328e0ad65e476d6eabd56680e1ed83cbc2da0
Date: Sun, 24 Mar 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711247896
