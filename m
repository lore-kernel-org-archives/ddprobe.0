Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD2F639
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717311923; cv=none; b=ALzrmSzMIplbJNk3rpW3Hwo+vXq9pbC17ZhWbCxNfxF/AcnGvpNEPk3o+fIOQqB4n268C3MjE1rmgDlhKT/jfb3CY/GENY/xnXOutSaZZY88Nw7yrUKmZ/lAWwIho6rw0RNTWYHhdR0EJ5c6pvv2JPcqwRWUjuztxLBw36UibIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717311923; c=relaxed/simple;
	bh=irEITSfC37h0QyuJYgMdA2xk/OKA1NTa2lzM6RqOy8E=;
	h=To:Subject:From:Message-Id:Date; b=FRcTZYV+3kg3NV+ESyPSm87rGB/+nN4IvXdGLKi73btOnwecutn4QfYuGf2k7sjQiQN+Bw0dPq31U3GJVWuz4P39syqlEK68pEgvSKOKOxcd/NZLLUpL/I2CGIRe3m9oPHUkn+ENMPwCdGMQNZ6N0JEv9xPves5jhqawEGaDzyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odX8VtHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odX8VtHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40BAC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717311922;
	bh=irEITSfC37h0QyuJYgMdA2xk/OKA1NTa2lzM6RqOy8E=;
	h=To:Subject:From:Date:From;
	b=odX8VtHoIVh6AQhH7oiOMThAOrkwfedjgwYrkyK6ELv2rGbdqEY46UK36yNmODMQj
	 w99GxwEi5wXkPmyA+lIt8En1/wEeV+2qEVHtCmSDu1skLSnCSn69JfdPJjNbQIukaV
	 liy7lLtIlP6Zq4YlJx+Ku+5r/AhSi0hbRXIsHV7R7JZ/heFXIcybtJuytSV8mTBcPR
	 X1IKW44Y/wgLIUiJlnCn9dPZxEJyWfct7rN3zODoswYTXxzzJ46JslM3nNJbogHOlg
	 DANBxkAB/IwHvRqEKc7975tUretmKaspkpZpvq0hG3J+GGFza6NM/olrI7oMYsOZi7
	 2reEVkgT9e7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE182C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731192281.11790.17461289318239913362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84ae9b59e8d5a901f72fb3d950db5777323f1908877e6c190365161ccd7d168
Date: Sun, 02 Jun 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717311922
