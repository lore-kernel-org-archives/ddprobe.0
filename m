Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F971172A
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745074194; cv=none; b=dUpGRluM3cv90npde8+TS9q9dRI+jw/f/MOpP/KtRGhzC4PulI7/Z8+A5p43uIGdRnY82ibQsg7OHsTZ13TosS34qjEk+m1E016WudBnx9OCotPzO4eeiP3vAy6gOpFPl3F+7gQoynMG9vslK7bYC8EUgHL08cVjC9u+jWH2vt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745074194; c=relaxed/simple;
	bh=Vvh1qBw0bdYImdOzWlFmEPCJy1h/k4Yg5coc7lKSOEg=;
	h=To:Subject:From:Message-Id:Date; b=YKvh7kb6fgoFLPxijlIsrsaJBc+cPDpjQ0P6ev8nQkVfPXtw6dX7fyUC5qepeNmufZ0Yaj6xZ0ygJb58hLsoK3X5YocCejfjthPMpBcjh4eeDgcblpG0PY6d0QQ4GBR+kImOXSxSA6whZM1lqX4efl/1XteidRMPVT9HM9ibnIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9Ya+Boe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9Ya+Boe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D2C4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745074193;
	bh=Vvh1qBw0bdYImdOzWlFmEPCJy1h/k4Yg5coc7lKSOEg=;
	h=To:Subject:From:Date:From;
	b=W9Ya+BoeU9+Yty1r76zVWVQPcJfBCO4EPwxXL8RY3aUbMSpMNyVSziRn9+C+CamyL
	 1/AFcd0WF/j5LjBZTzC6xahPfeTa28heu305j5flY3q9T2F2E/tjqouYDxoRGlxVww
	 QT7wL6XFPLo6n7OcEv1Z4l5URYifdwlub3wwpvrEtgmC+TKFB13DlZPnaBqZMjv1D9
	 P/vEE1Yn3Z21zIhG+nFVhfsuzrK8g/xel0NoU4WxHolEmtKms7K+OiocdMZ+rCELpa
	 gTjFs1L/AvDMK4wYQuncVQXIoYtKWoXlBA2SyhzByXdTprLYvLYSBkQdq1ZMbXK20b
	 GCIH62rgLUR8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8B4C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507419359.4584.17592745552258444781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb74ce7052217b6f2a421f45f3a9c351fae2f1ece9024fe4e6ad55bb8238c48
Date: Sat, 19 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745074193
