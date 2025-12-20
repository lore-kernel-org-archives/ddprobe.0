Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD57204F93
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766231034; cv=none; b=hx54+iU6QZJZ3Al0ApPHameKQinh71Sb5+QxDYRyLsqv0fV16KbM5Xamq7nssS0ePMNwcZMUHS+BCrpM5kEQ0NPgD/CbpLYNcWp6dkkrGPvgJAdKZ5+E78KEBuTLuuoUKLS1csBo4aOzW8XHJgzorKRPAwlF6GzR5X6q4rnBnfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766231034; c=relaxed/simple;
	bh=VqZIZ65lAvvUfOCH025AdIkmv6pKWrv6ps39g1ytvNQ=;
	h=To:Subject:From:Message-Id:Date; b=I1WvMveI33TzjqTWwupER2ehEQ7/2lRijmNJs9DFljPofv0dHXEx/lbecWZboz9JMP3sz6Y0iyDlHvE3e2gYVdQyA/WdQh2H75/3ay3v+km062BUAn2j/DstL+k8TztWxgmgihqX7IEE6J8hb8QTEjRGU7cpyQQCMtnttRWFJqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwiynXe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwiynXe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6117C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766231033;
	bh=VqZIZ65lAvvUfOCH025AdIkmv6pKWrv6ps39g1ytvNQ=;
	h=To:Subject:From:Date:From;
	b=WwiynXe7V90chU8XZ24segaLT3bgKf1QUOBFbbQSzZYvGU4fF2Vkmw+4TUsMQ9OIM
	 dlLY20+Jxugakza3MNKa0JoJWNnk1GhiMoTNWlOKMMdCRtLINARrfleT6wcriic1t3
	 4JrTIUPyt6NcnhEcjSfQzAyNYZO2NY+IdK0Bdfe+4PJ4mVShW+Q4XsfM5XhxVzPELu
	 TFvBMgNz0T7r3yDecfvAMa39Cdtte5Xw0XY50/i8CeTZDNaorKfHzUGNEqytTBdUCM
	 MeHaW4mZK6tkw3MG4+56aITVn6pNNOpggRFF1Rj/YSxr7yVfbXifgU46k/b6c2lYTZ
	 lyWGlc2/ywlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EDD78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623103358.12193.16214355014463229484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf398baa57df06689dbd94cd8fee672655b0e07ad75c1b1d954bd76b8b745a30
Date: Sat, 20 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766231033
