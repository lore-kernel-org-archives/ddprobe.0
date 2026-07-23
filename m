Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489C9419303
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784830234; cv=none; b=AsQqAuZ/0lCft5+7H0R8NE2uxi4aOsAktyrEVE3h+hguJHK/1X0q3QjDTIzUbI6rxPvso/hsFo87VMTw5+ivwmKgMVZDMwztjKNODS4jjEP2wmVupYxRP09gkWcFno8pjIehXsHPBycIW/+77pvQLdXcnGPNKTIApYV4+HRdPro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784830234; c=relaxed/simple;
	bh=6GsF09p28DD7BP9zn1IP19IC0J4xTW24HXxk5rrZDwk=;
	h=To:Subject:From:Message-Id:Date; b=XcACmftq2V3zoUWU36JxljyUxCq83tPcZXmHE8vvPpN6qD4aIN83Zpw6z5FjXGjkEDWFH6mMJ3AJiOYdU2X2qN9SWWeQTPWBdrkCVfB5ukGsvuk+EYx/G7gLCda0dGoeBNZCK95nu1GmZ0AwjALJeJXSI/gi27lE9kYY8xxFICk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWiz9UcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWiz9UcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0F7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784830233;
	bh=6GsF09p28DD7BP9zn1IP19IC0J4xTW24HXxk5rrZDwk=;
	h=To:Subject:From:Date:From;
	b=XWiz9UcO3xo/ajf3WuooKuhRVwcnU0vIs+XPzn7V+wKPfJQVBkElZD3lYHp4QsggJ
	 8xW9zmEHgdWDyihwdUcDhI5RxSAbo5iRSqIwjFbjGwwpZb08W4ZOpV4jaHxnGfWgLr
	 06oGewjucBgO0WxLlfBrDbGBAaTGViD1/lwlXWKgl21MlUD4p7GIqkHEPjIE/tvgQb
	 +ZUymAkk/uBdLcv4KSdp3Ycu+N3lDzn+FW/202e6Fl5xQGB7fkfoEUaiZe8QlyCRPu
	 DAQL1N2WDHI5U6Qa5a/2bJsTZA5ZdGrEvyoghoDBOCpPJqL+yJyxSibjxnBl+y2Mes
	 d4GFsHdcrEn9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD463C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483023370.15180.16925033607153430640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc7677fe0167f7fbe02abdf44f0f4578dc892d2168e995745460c0a917802e8
Date: Thu, 23 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784830233
