Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BB42D0298
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768362233; cv=none; b=FdQm6P5xVJ+DoH5vJR7EThJtOY6Ztd1/swxhcPqPkjEa8FFsmyuaWQR0Hq8ZrQ88nDVzv6ehCVc1MMbINB5htScCCzULW7fLqK3fAVZckq1zW/14POiCioVov2DduRUduRoQik3GQNXuCatir6vBYvGHsaNuuvOoC8RECVeBVIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768362233; c=relaxed/simple;
	bh=Y7WCvW/fXCFwXQzbreP/4+UuuyLvQSpxU1QpQBpSD20=;
	h=To:Subject:From:Message-Id:Date; b=g3dYsIpwVrGRryudt/9RCm4exDbehzRZmn8hE3Zurhs/vzpzDdiuBeyEy5s7/4Camo8NjfApFeMK7DFa3lZZvcCI3rzQfdTMM60jvpXKUDiFC1biyaF84Xi267MGg2DHKUpDNzDEXjIdpbI27QyvKfW9NFC/eELbMgG9Ed5kX4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igpAX4Zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igpAX4Zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDBEC19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768362233;
	bh=Y7WCvW/fXCFwXQzbreP/4+UuuyLvQSpxU1QpQBpSD20=;
	h=To:Subject:From:Date:From;
	b=igpAX4ZgFRJD5cGVNJTqBA5unL3dPiaq/F9qhK7tAHg8W5ny5P0rZgOQEFWPz+3om
	 Vrsd6RENTVifhboSwWrNuUBdoO/NsBHNAEIRVtWZirAspXDTOx9Gb/f9Kj2Qs59Rcm
	 M33fkKz192EIZw8E9PfUX8BEBm/yNiiLRNbuj2s9hsEYXuiabgyHWzS3QHwRvbj/Bg
	 gD4Ag9Koy1z1jTISJI4uMyIAg5oIe1Bw6Kbomja3EwI/tCQ2AJptTTxgRZ+zjdI07A
	 wxLDQfA3VT03XzI6G1FRKCEehZEhi9KCG3yMfmEWEEwyaHhb4LSJCCmvigMW5J5ISr
	 OiQmW2UF2ps0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FDD31A0C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836223357.25010.13627492903673232690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f892eecaf80b0b4a8171a25dd3643ce3613fbe584d80383b41364f390740738e
Date: Wed, 14 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768362233
