Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328CC4A32
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786353634; cv=none; b=rdxLobHO/Qcdp94LO7SUbubEYajm5Pc76UMFjwtQWqYpT6yRpbJL/iMoQzhdt7Z3H16z/cPYZHLtxfYd9my5BKUp+tHq0ayAhbEqS9CBc8/2TpcWz5Sb9dCqNRrkNIdKyqqUmCjkIl3N9TzwmDH33/n5BaY0p0epCy/ml1aQPyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786353634; c=relaxed/simple;
	bh=SvdG8LWt7qla1e3mk5lPelhiJy6BwgIr1DVVnIorIZo=;
	h=To:Subject:From:Message-Id:Date; b=EnWNrkGBhnpM8XJ2VTakYdwMhPUjQoKtmB9/yukVepiS+Q+be1UA6Ag+KdahZarFcBbuHwoJjfpT47XcQj2+uA8BW7epBCvNjPpTHd5nSdI9S0N6YTxmP5FbQN75JsozFKpkTep7ve6UNin51IbW8ONdWjvm4ck4OhmCON9lKEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abFyVcnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abFyVcnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD8AC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786353633;
	bh=SvdG8LWt7qla1e3mk5lPelhiJy6BwgIr1DVVnIorIZo=;
	h=To:Subject:From:Date:From;
	b=abFyVcnpSjrdYuIApy+BqLl+Gjsk6QoLA+unDz/eXbFIogwLXNVCyU/I6wM7Xx7ze
	 uVo9zyEjkluyTHasdVJdY+EZgoQSsEE/egQfchti1b+5l5nX13LXpvd8EJHE/ICf63
	 KzO1ssPYVnTDmpxeNNxPmdjwPX06m0j7/ZQXLkisst7/vnYm0KM/aFNPARXb4TNKJs
	 dWviX7IvDUGRqBdPTMFnQYryEmrxem/Xuz+xWMFHecuh9h8TpWyspsesPMpaEHJo+H
	 bTZ55p49/LBD92xGnRxmChCxnzRdbSYtSmipMfmDBi6JBTsg1LWCvjJI+sYuJnsHu5
	 EFlS9P6wEvLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA83BC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635363368.24760.1343063990539438185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf041e799fc3c98731bf5737853a314003f7a8842221f6829958a9ad4188faf4
Date: Mon, 10 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786353633
