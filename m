Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E352208BA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721377554; cv=none; b=HxMpXSNoevzbvbDHRzEsHA8hsHygjrm551hve5El1jyjP3umHEaOgCAXjgmROD8t106Iay29ocbu0WsU97gtCitZZZqrxN1Z6uEl0asNK4szud5VUWclg90lkno7F+XTTffDLI4/q1dhhy8NpFh2hQVTRmgBzjIF4Q4d0+VIW1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721377554; c=relaxed/simple;
	bh=vET+rJagmXFZk6UJ0I4NvU6fOYZQfuqunHkkdj/DfLQ=;
	h=To:Subject:From:Message-Id:Date; b=bmR7jqSC8z2BuRCAV+AwO1rxzBrylnbRZYvN++P5xWrUZO6PhzQAJuTdH8Gjz6mN8d0WTQEOE6Wh4BPrQ1SmYTs8XRdv5d6nYYP2/kUHgMX4N66Uo/NaxPIoRaN/GvG+aeYW1TMW1OhWQ6wmm3//7DQ/PVsqF19qRsjMIQjcgTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faEbe1zJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faEbe1zJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A450FC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721377553;
	bh=vET+rJagmXFZk6UJ0I4NvU6fOYZQfuqunHkkdj/DfLQ=;
	h=To:Subject:From:Date:From;
	b=faEbe1zJtPqDE2xTXibeRj2pHWS7tNF1Ri6jFEM5ZbiI2WV2lPr/K4Xi2R+qhtVKh
	 Mot9IKn0lYrZETM4+ooqMpRuqLEiCxBxwgiUDvkdgQmT1cB1IfyfQ51hdMzvZovZUD
	 A+5mIE5dzwMrburFrmHrHC5cgP4tqARTTwY4TdG4lvyvE1GXJJb3SpOKBTdWrnvFBf
	 zc0AgmkuxX0K+n033PFSDYCXm8Xa0RSp3mKLu/Cf+EEy+/DBqUjyGXKXQ1wlGqHkzQ
	 zmVacoWwJ81vGHOGBFG5MZnCJ9yZQWPmV2+FIJOI8cZwQkVmJqnYedNIK3wyH8E0ve
	 0sOkQRC4EAFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93169C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137755359.6424.13988237928504774875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a137b3979746e68066f26371808a7ee6ac4603d8fb5846824c429fb4a65bba10
Date: Fri, 19 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721377553
