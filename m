Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE9B3321C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790052034; cv=none; b=hGyuMaBIR36wWho4V6dnWrSRTiiVdU7tFXyz25HmsI9CqSjLDC3qVdyz1tFOqkxBgHcf9nImj9rWPZK4hySVeiSJ1fQy7H+gQhiJcZwLbJxdM1qe/heRgZmiaMXybHNTS7Au4vRHYc31iUDiNe+zZFQPGryQ55RBH1GaYNjAXf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790052034; c=relaxed/simple;
	bh=ZCckEFrjqaUHuU3W4cazOiwnoCIbo0ALH8TAR1BGa+8=;
	h=To:Subject:From:Message-Id:Date; b=LEoFYfr8EftWeo9hGGtk9NIoUI/evHk3gQtQcilbVCQCgxAbcvBUmefwkfsz8MO7zUgsSWm1Zb/ytIIhVzGhGO8zTIYbW5frME837Xqa1zqd2oYNMyrNNtlJJUPnotONHTRn0qz7Bta5yS4pPi4FOKxFi2xrbdoMtanPGO8VG5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klw4QfAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klw4QfAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D033DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790052033;
	bh=ZCckEFrjqaUHuU3W4cazOiwnoCIbo0ALH8TAR1BGa+8=;
	h=To:Subject:From:Date:From;
	b=Klw4QfAnGzMjBk2QBVAfO8PAk8lb1Ink0N/4wC15rd37FO/M/k0N0wDtg2FTxIHwI
	 b+dS7CadkSfOiHU2fB4lL6i3UjyFcZOJP6YJIObrgAFqky+VdBk+d5lp0nEZBlxC5a
	 Vq3CHIcglWpg6dovUk7+daJbmMBAanW/OBWU6ChUlGYMKHmMnOF5GD66GYIeKg2aX8
	 m3j4x5/Ye617KY/mMjVnxl3N25b+S4DquIj7R8xgI4xsjBjOwXP0ZJptdmm3FJN2BK
	 MOyxjgG3Ni0s9pd6ROZBaBYnMHmF71oGyxUiIzAlHxZGzFxFXtaM50DS7ZMNxL4fSY
	 JrDOTboX5/wTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF3AC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005203369.9647.9500035360097391201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb375056255ff75fc82b530ad091db53d931cacedbd2bd1d2cb87f4d19b214b
Date: Tue, 22 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790052033
