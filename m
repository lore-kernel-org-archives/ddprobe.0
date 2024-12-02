Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361F91E521
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733141754; cv=none; b=Zh4KwiGUyvEFXrErbriT0scdfilMePeANOES0PzoYxjr7bGp0KGDyl7XlOGo0hefjJbt2p2Mq5RnEW0GJ9ilnW4VdFrliOejAd0npoSHzDuLjV7PmempPyyApuGWO43DoweokxVwAru+0WzvGfk+hvs1Ofbt66HlG+vTbOP4BR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733141754; c=relaxed/simple;
	bh=AoJxVDM5Ia1wsl2+VKYN11VrPgJdyo6iZFglY/TN7es=;
	h=To:Subject:From:Message-Id:Date; b=Org46hszV9dtWdB6Ck7wuuoUGKFJB679XJj2496UtXcxSwnjy6SxfDsPxs5vyC7UYOhWtS3OBMWFR0vZCoDkaSbAgeBrOl03my1S8js/tihGY+tKyfEEQtQlaZ5ibCArpPJozzSoOVRhsrGjsbLtPc5bGri4vIGTF1YiiAJ7ccY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj247J82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj247J82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE4CC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733141753;
	bh=AoJxVDM5Ia1wsl2+VKYN11VrPgJdyo6iZFglY/TN7es=;
	h=To:Subject:From:Date:From;
	b=Fj247J82nhkqu912ojUi4d2HuanthnAwuWJ3tsKXryKnEuFOYR928JcdHaPc++N5B
	 hbzlnbjIIXA0YrYwLTJh2N36pC5jjQTGzMO2wtO69Tds0h0rGXh3NVRhhkJPfzgUaC
	 YRMpe+i2ipTk49l3ZQPbiScVoWFWbRmOHg6m1EtI7zUmuzYYtJ9vux4YhttDap5JFy
	 h1bjFlz6XTs39juqAbShGIhZE0HqFADm7EaN7Y3i8i+AwIPqyv50jLxRA0sqSHKOg4
	 CQHt+54ws58K2/rQ+96bTgJNwsW9EHwRRjDiRjK+mTNtiG/fdyIaZzMNJZ22T7Virm
	 lh8AKm8+7t0vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2070D78311
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173314175364.6939.11498743205559113040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbceee1eeb21b57b81213ca7520713aa3b400f67a640755b35afc1ab6d0a1487
Date: Mon, 02 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733141753
