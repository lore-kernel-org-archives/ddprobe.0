Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE58A127B54
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712588297; cv=none; b=JCAeLxOB61iRaXeLswhmHTQsQ/v3F6+k4+zIcEFbPI5WuqrUe0YyjuhbJ2QFsrgqiUiOu2cOz9z1rZIEMTisOT1bcgXQrHQHiMn6g9LDuFUUaJ5J1Qj8QS4/dFZ+o4jKaQ+A5NAXmBeG9IODTUUJYO/iv7waWRW+wPL2Uk4Kyio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712588297; c=relaxed/simple;
	bh=+Y2P2g/1gSnwWUQCQjAwjPC0qR1EmVxbUcUUrcpknao=;
	h=To:Subject:From:Message-Id:Date; b=FSS7my9i/ryhmyQd0s+MzZToS0Icqs1R0PYZ07MnD8bHtYGIq7Xo8snXpAuixxg3p1bSRugo30oIBMvL2H+TjIcG8/e5GdMl0POGQME0gBBioj7poZ0EXb2bSiTggmTJUo+xGbBXk7j4gBI9zjxW1uJl4kmSAHhkIwzBj9PbFyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vigu9rbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vigu9rbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7DBC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712588296;
	bh=+Y2P2g/1gSnwWUQCQjAwjPC0qR1EmVxbUcUUrcpknao=;
	h=To:Subject:From:Date:From;
	b=Vigu9rbxL3WaZxIOV7DoKro/KTKEXGdrUQ51g5qIr63OHEIKwap5FyT/8dVENNaPx
	 Z65S3ejIlOLNu4k+RB4eO7PVY/DtFiF5fmF6Fn3X8fxTaQWfNYsEGsxCehRLyvFHbI
	 JfgUxq9WRUix9YWRFDslx/16Z/i3YggmSBN3ysbQ7MDr7GR8BnMKpjXCE3BqhUmo87
	 0ODUeusuc+mW8YfJO0UM0u2Jkft23zpvMsUWAHBaC3Gjr7MbOMgTGBr8/aM8osAev/
	 3MZmV9xnCscZVPGhlhGEDM5S8FIZIUyYtIGNblB3z+zsEuFgVO1DCGIsxdZ/Y+hBPN
	 OUYKGEE8DEytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652EEC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171258829640.24047.12336606924691801441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a4080520a628ab7eb96883754ad4aac5531abee89f9c9f64c2212725cbac69
Date: Mon, 08 Apr 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712588296
