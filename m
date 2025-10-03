Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F84A23
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759508394; cv=none; b=qjtI+glRUUkIfXdNA8fm8Jq+vkYSJd2p6u87iJ7y5n+tbAPNXq8u5O7AxFiGhO6aBH9DF50ZWMN6yYzM1YMErPJetLtZrfcCHP6RoWoAH7hNGhZkueo/+TKAFlmlNgrfpd/fBeFT6Bb8GzoMo0DsbSwiSsT3kage5npDDJzHfRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759508394; c=relaxed/simple;
	bh=yJvCxsgy/Ha58KXL7OdmkTw3DJaYsKT4k0WLOjzi7Hw=;
	h=To:Subject:From:Message-Id:Date; b=qhS/SOyokBbAl7BEKNCtk3epHqVrsxitx3mB7rZ0j4Nx4w/asArpmP3FcZGuDjAis4kjd/iNnWW4p3/SPi3ctwVS688aqF7r+XV0T4BWowz8fxsnmqne5Wjx+g/TGRQCdg/S7BO1XyJwXuGvA5T4cYXtJY5CSeaBMmw0oL+JCCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEC0Jymt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEC0Jymt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759508393;
	bh=yJvCxsgy/Ha58KXL7OdmkTw3DJaYsKT4k0WLOjzi7Hw=;
	h=To:Subject:From:Date:From;
	b=SEC0Jymtb+PSx5MAaTeYLZe9PTXB8+bjy5eid/jYSWTghGZr/Hl5lQIZ6rICy7+te
	 JJdB/yAm5McqMChWomlcAuZ3SAb0/qrkabfctIqh2Y4gQ6HXphXvYGRnhqmdI205kw
	 9BgvuBbaL8umfr3Em8sG0XdDaoiFeyj+2zS0XN6P0SlLhfe3jBStNWlYkCdviT7fHp
	 q5GeKQiVN82A06cc9T2FCq/t7XAT98FvS1319FfZ7wro6sPPzmodmVwh+eLCX12ZL0
	 JMkoh5/Cwm0IRkJhEcHCigwivt/nLAJPhtZGifvmxR71dp5LwpjlZ7v0xq1x+jVBLn
	 7t4vSuK2mmXMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE77CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950839357.14671.13251943095914113932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7b03cfede32792e9726f4d1936e804af481ab7c1f66e2af6376ab162172afc
Date: Fri, 03 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759508393
