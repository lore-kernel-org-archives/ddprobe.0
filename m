Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B10918C02E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759676995; cv=none; b=RIHlcZeNTvMpMhtI8NBFM5CXVh28uhg1mSeaUEOAdH82Yfv4ZIuR2bZPnmTv4L1Wi25nOJoCVezsGWxjiirZizxLvvfU0w9mANlVIlvF5ycDU73N8VMklV2kMRBNEynaquB+ztbU1dddxKTJ0310XpkuvdCwf/fzMZryPwUFhjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759676995; c=relaxed/simple;
	bh=O1se4WQJmesxUvmq6etA5QF5NzFjI0Pb40662FVLHM0=;
	h=To:Subject:From:Message-Id:Date; b=D07a1roFNndEdmbRqGX0b1rRK6mvPBfX4t17P6cCMeXrtHAF95e3ppuOZ3/FTTHijdnjlZS0/EkQvkJvxV6IUf+/7F8LIM0k6VfoLkZgnYjs1KxSXaT6KR9RBWihjMu631MU6Zsav2pD2DYbtmrt9CrewaiM9zTG+3G9hj9D4Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEBNT3Zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEBNT3Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71AEC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759676993;
	bh=O1se4WQJmesxUvmq6etA5QF5NzFjI0Pb40662FVLHM0=;
	h=To:Subject:From:Date:From;
	b=JEBNT3ZcsuBMtpz6L0Ot/4VmWpvQtR6EgqpCZZKq/aRf6N6Xl6q4nLCMtzxgn5SA8
	 73R8amfACw43cwY1Ztl2FwaPW3112TO6bNhJbdml/eRGpZewqGK2zyoQDc+7xP34bg
	 FHKuur5ayutqUdK0Joo1WhuAgp0l+VhZFTfrcd+ESpv2W3DTpaqfg1CxLq9AgXvYU+
	 PUC0/yR8hUSRi69/axsC02WdaZ8w0go3xKprk4DAXqny6J55rJ3Ww2v8DXqd2YHkvU
	 4P0YYm0c/XdFyUdlx6oE6nXRlJnO079QIOqVcF5RxVMI+e7RmBiMyCiY4Ovf7fZiCO
	 FZI3Fo2vN1VVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955ABCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967699358.32310.18147521426791163689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76f06ec8ce3f307e0c79c3a5a70542fb3d161f237f61b0c262926eb58d7da9b
Date: Sun, 05 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759676993
