Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5354E3D6A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746927594; cv=none; b=IJn3NRjdW9vNLGHw0SljGPOWd7M5xKfq64h0jOsCBckhh/YIBOw7+dDn796XB6xGZfB6Aue9UbnPU61VShYbsxtzlntNYXm4vnW/4M2QWVIolgVW1xN0wR02NTk0QZJFtQWAPfssBsBk9f9al8COT5PpipvJCyQ1oBJLmZm9WFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746927594; c=relaxed/simple;
	bh=drnseUXGKEPYzCgboYfomYddt4LkxY9Wo4IhRX6nHi8=;
	h=To:Subject:From:Message-Id:Date; b=rmsFGbKyeTD/3WAD+LemOrSWcg+mlilzlOSR3lxmIRpsYFGYEPGeQltZuF5haIp7m0v07bIKjmNgRkG0rndDXBKhySZyzL00CHzrLviUNOyjc83ig7Wt9zS/4vpmqbegez6o0vZENsEK6pK/clpLrBOlnk9St9q+Rz3D3q412xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ax05BHVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ax05BHVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A446EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746927593;
	bh=drnseUXGKEPYzCgboYfomYddt4LkxY9Wo4IhRX6nHi8=;
	h=To:Subject:From:Date:From;
	b=Ax05BHVj7gxkDHmIEhdYRb2Y0yVVC2tkEX4bV1ETlnlf/Z1KnKaMHWr7G3OuIiHey
	 ytcaEo0l0nQBhiRy/GbaSCvK28XwJITZFiokL+CTMLf6aQCNbhtKVnV/q26Av9VTIw
	 FhJ/CMXKP7xWyeOYgLTZO7etKu+whCC/1BKljUGF2SAgYPnwPLwPnEiLbiU54vS5cB
	 +1S8C8/r3FsLH3XmgeqVVshRgKBxdNV3IL8WoomxacE1g8xbvpNjpQibTrTDYwvNdc
	 ZmG81ioXYwtQMaKYBbmrkQTJ1WndGwoTc8mfE+H8oAo5KZ6kaEQaFroC/SNYyzw+an
	 Eb27uNPlLrDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF9C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692759357.1235.8479729266960106236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e1db5b31bd00a5044da0faa42a1af908c68787c51f40cfeb6bf3bb794c8c97
Date: Sun, 11 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746927593
