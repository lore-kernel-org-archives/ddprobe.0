Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFEC39449D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769144035; cv=none; b=LRuY1QzNv5KR+aeg+SKbHuS1idhM87UMSRAqPoJGtcIPWnCCDRl2VQz4Rti2KUEW6jBzM3CsIBDS/1OUvTtMkSlxIXAuH90qmqjE/e0pYYWpBQhFDpF4cFuLPbLFEmuezpGUVN+E8InqO1iruPnkhjlKB7slamqXVKO8qtrBiQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769144035; c=relaxed/simple;
	bh=hD5QAbmB7WlQP22Vc9FVEFXYVr09V2Ucg8JS1u8jd9U=;
	h=To:Subject:From:Message-Id:Date; b=Vgz+iefweTC1AWkKYyNcsD7I2nNywWNKVL7Vladdj8UAd8Jfm5F6OMkRRrhIiMlTuu4obtgZwkFHzG3JxRyN/h4of+dtk/A6fxHyWHFP5IijjG00BxRZK2jgSA7sQt7RXoH0hPBSEfDL6+UAgSrOjxlpu04suVh5pw6yI2tkwn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTXrNUTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTXrNUTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A687CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769144033;
	bh=hD5QAbmB7WlQP22Vc9FVEFXYVr09V2Ucg8JS1u8jd9U=;
	h=To:Subject:From:Date:From;
	b=sTXrNUTN/u/GDvOSK+yjaJRJfJ7nSOLm6Qjn5oD3qlLZCBv4/t3zlwNln4B4hMb7Y
	 9PfTUGGF+dFyj6QwHbW9cEqoj9SOPlYpRZLA8RD5Hs4uU84n/k7cH1Bt2kmQKPRhqh
	 1zL0IR7a4O8k5B8A1q5jhytitzH8Unb8QfOh96FdKoFg+oVdHGJxjk+5VZP/aGopla
	 Zf/j+Nr3v5KIPBKUmY81BoLlkUKgTmwJ2VD8izkUOhstIc6vJ61OIB4zMcchznta0V
	 iElMp0idtAxbtHX3B2uv4MhVq9sodXRmqRf2jg0Sw8KrSShZ8zNpvU+4tuzry14vb4
	 kqHLZbL3R1fIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BFD6CFC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914403358.13841.11186211693622035382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33aea7f8404027634c733963207ad8d2eebf88f473de1735e67e11bd68738e5
Date: Fri, 23 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769144033
