Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0FE269D18
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789527034; cv=none; b=iidEUJoS+E7pbsNevVuTDkiUG0WNv2QoBJ9HugMXo7px6MSInmOz+4+H7smfwsnEABhot7YlOMVBgKrn50TgyjlMjV01/MUnx3lxNtdkNrgjnkMQVTtCR420kPizOEAelsQRgQFMY+9XLl3CNbPUiWPmylC5sCYkjH7cGyfCJ3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789527034; c=relaxed/simple;
	bh=XFxwbJWhKQ6V0dMKQjgDgUB/urQVae97vBXSA+v8EgE=;
	h=To:Subject:From:Message-Id:Date; b=hOCKSdp9Fres5H7oVvmnrZyhRA6gB6jGFB4+tUCf0NKProgMDNwsq7PnJf5KdagXFUJ+m3EzgdtQtZuq4ojPV2BYCbryWm0HA7GWZuz/ld1PQL2wXTUbK7gHwSeRo8zc+jZAewRQVoPdpjkA/XgjChclxRcqSXa9R3xNAMWWz6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dt7BOy35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dt7BOy35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0E0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789527033;
	bh=XFxwbJWhKQ6V0dMKQjgDgUB/urQVae97vBXSA+v8EgE=;
	h=To:Subject:From:Date:From;
	b=Dt7BOy35APPmgzrFjXI2l3et9rwVsnUTiPhHef3WaQCYVSZdxqwt7g/BNpBf716xW
	 oCsiC7y7rAfkHoDDw93XZK2L9IIr81mNtOF24xIO0r0Ojn8YO5w92LmMTyyCoDL8Pp
	 lG2EXPxucnMCFWzA0uGtSMBMuDt0efvoCRC2DwlQye3VrBKXCSpfbOj3yDGN8u8cGs
	 zQiYSM1mIYtl3XYiKhuusfrZxjQed1KlKKXkX3h+uHFzJmVDLwduPO6hpPmUpNRw3I
	 +L/qPQi6/UMXwJBjKXfMLsoulIzUfz3mhmXfK+Ayx5SAAOr4dtV+rLLmGUKKO6E2qD
	 PmXK+FneLfX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFEDC88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952703374.1681.7150786599383148289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cac4d3ef2938958a74fbe697bf055ab138c605c0e0b250093f7d52a1f73790a
Date: Wed, 16 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789527033
