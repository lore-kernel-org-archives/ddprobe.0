Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3150B25F78F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767192234; cv=none; b=Y6+8JGp6ehDqsReXXDdoVCSczKH7OGXI/MNajg8m/5sR+8343KogW+1Q95lX/1SO+DzjC6CPRVQiumTcNoWLpyCng0xrCUNxEWADe1+nh2tLw7zIXTK/YbK093gpPiKtfyYMA8BbOOFK65WjIGbnT53B+7uJy3VBlOo0V2Mpx18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767192234; c=relaxed/simple;
	bh=woO/tuYAXbzBhrTccjLvhARv+/Dr7V5eKM2G7a7I3Qs=;
	h=To:Subject:From:Message-Id:Date; b=g0ti+SF2v0JrhsyDtoz3G8UKjl6zVdgl2cN4Z0LuKY1uQ7njaBYPBnoRjdMkS9JNbCimLSJMUuv1xaTqANHhKl3HUTyCtHLkLmJBrHS5VTZuTdzZnOW0u0Qhl7w2Li8AUe2xYU10sZnbzjlwC4peaQGmH/Jwsbbq3nUgKlg9HoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XULDJ+Zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XULDJ+Zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5643C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767192233;
	bh=woO/tuYAXbzBhrTccjLvhARv+/Dr7V5eKM2G7a7I3Qs=;
	h=To:Subject:From:Date:From;
	b=XULDJ+ZrB+SWLkIrvUEYKv5fLXK/Yl033BtyDoMxu/0OcBcbD4+qI9Xs4T23dyGzS
	 dG3ulM0qs9K+MGBta7AKVNhIbnltotwGd3NwRdYZxHhR3rf3yql+/J88LbRN2yIdva
	 1G48R+B4fGiYWlpnKruQkAEHxHH8koon1wOARjx+3X16kvaDKxjxpAfCB7LtBWSPAo
	 DjxmbuNdSXwvZXPNZj4iju5LUPeicAiYM0k4q+idUnJmRBt9CAGyleye6lMdjmYJ+0
	 A4u3C0g8fFcJkCndtzn3wENZ+8oQAYlWzWBfpCEAe3MLagbf9mNWq+HxgU8uKkvmGR
	 lBR9m7UcaxcfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96885EE6446
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719223360.15562.9895593584834830687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdaf46bbe066c75e8f8a12c4ca4ab1cb892885e62e23d946cc67f6c8cd3451e
Date: Wed, 31 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767192233
