Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE726D4DE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764665574; cv=none; b=V+/c7NyCVEqg4eOyPep/8VQS9uTHCCJz5Z0504LtkdzMUpSjCHLyYVMrRCM6kRp3Lm4zrLS886RRM1BolvOige/ETyBgexQybjZ4i7Nut7tgdcqIaspSaM1jAdbn+ApF/KvBAYwyYW896uYx6qrsvHXfu5HcSORLdUBcYrxOU1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764665574; c=relaxed/simple;
	bh=tQYmTblaAI14FGN8vHu7FrZ0x37PDepzCJ2sm5sVwgI=;
	h=To:Subject:From:Message-Id:Date; b=ejgWyUkh/Zoy3DcMHnsyN0gK/YBlGO5BfXB1G2CSE0RthJonwCZTeBryHuM59MsGhtYEl+OEg+rTZy4+wMvn0LgJf+oXdpIHHa0H8E7cefq1Qr5IbconrKvAKAUDJqjd/c+SOEgTGxJeB6TBBo7Czb/Rq2P1Uyy++xernigYTNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQIuNxNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQIuNxNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED2DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764665573;
	bh=tQYmTblaAI14FGN8vHu7FrZ0x37PDepzCJ2sm5sVwgI=;
	h=To:Subject:From:Date:From;
	b=GQIuNxNku0tKuFeEINSLWJvXXHhZBK9F/nEfU1sbBxac8QOCrX6JFhS9VwZltP1AG
	 9Fz81fkP4rroU1GSWxcYtEE4tXJkhTIxX+RI9gHWFFf0wljp34VPJQJQu5SCPXNT7w
	 5fuOZ4gj6a3X8WkgVVQwfF67ypgFVkzqKi4N3ghWo36rdTjB93kHzNuW+QiHmGTB23
	 2NEvHBJ5OLCKoZlo3iUWARCz6xsXRynB8no5FLiYbNdaBbprLgl3j0SUKc5BpXdiKD
	 aeCeqUL7kN6OeDbRg0+Z+aewO6KFzSMmULcHP3QzZEmVCaP26NQ63Rh4AJp22YH0ki
	 lkbr9eHGkd7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4BFCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466557363.11305.1164277994869344255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2825e85d6f94d90bf033c56b45bad23387a38acbea661a848b3fd0880db1294
Date: Tue, 02 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764665573
