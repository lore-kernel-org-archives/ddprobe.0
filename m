Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330CC86347
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775348134; cv=none; b=mblY/Sfbj1TaoUEKYGJp4huub8UVsYhnwKrWhznpk4VJOmU1o+5hN0AWuwL7ZGZ3BmpNHjzKRSC+KTSXRstkSJxoYzqiQDhow/Z8oI5v/pbsKvtpPKBvHHN3mNxeF6iJAYZJz2ttKj/jOhp4AZwpWn7Sixc/tv8wri78o14Fn68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775348134; c=relaxed/simple;
	bh=UazficDcMMaEPhNz/d1frTMP6As67+tbzBOlaRH/0HY=;
	h=To:Subject:From:Message-Id:Date; b=Z6HiitKpuyxlZuJzzpIiVF0x25XFWv4Q0vwC41z7fI8DxfUZK+0nbtPijRg/4FO2ZccTDpbLwJYN9faLtypxuGEs98jl1YK6D+SaPRqSIytouDQ2/SOxIrgyiDxtK+jYKq9ZBKWOUw87tlr42EcLXIniWQ2tEKtNpJX7mk/5lWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TO4o9oXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TO4o9oXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A1C19423
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775348133;
	bh=UazficDcMMaEPhNz/d1frTMP6As67+tbzBOlaRH/0HY=;
	h=To:Subject:From:Date:From;
	b=TO4o9oXByeMiaw/SxhVfodiBlFymzte3NPOdzqZRupA6S41GXwP94eeVLrQPo7eKD
	 yC25Lbdaacs5tOVNMcNpQLymyRwzqANcG71c4wndMRT3YtcXItB16Tpkyq8TswMkjw
	 UrzWlnU5r8alsaEjMWI9xPWez2nsrwpWA7GbyYoWtHpGPZXxnCsKexp5LHEeYJzOLK
	 oxy8LoQz5JHl+CnRj7Vf7siuWzTSKull21UpnUtyUzQFZlSdCODEgplqF+wXVf25T6
	 wz1l+QNMsrrC7sCFUwhXZ+owyJuS5UVEalNfdZZKqWt3+r31xxKLj8Ls/kYXq/XkTD
	 kLlIGa7oe7TXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49A5E63FE6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534813371.26520.18043301024378696682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535b6e66e7d8b73ea63ace6858f92b9fd260908ee524f2f77787fa161d9fe6d1
Date: Sun, 05 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775348133
