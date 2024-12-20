Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1499C155342
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734680754; cv=none; b=XffGUZCEYjz6RAOxjjSOvkRNTTpAXuDrDeA1XfI1YI1O6LLiNbo/QElNIk5TyQRt+ZEmesXJPhbxvvZqxFVVqg//fRV5AmWAQT/6EpTKI4gCuKdIcwEwWcqj6ONHUQ5Uplqz1RIYezl3FvnllYpbwsG3DJcM9P9X1ydwt4EVijU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734680754; c=relaxed/simple;
	bh=b7XyZ5ri3q0iGZ+CMJAebzWeCzM39l8NHpF2UMBBV9M=;
	h=To:Subject:From:Message-Id:Date; b=sfmai7lA26BbB7UNTLVxfFqYU2BU3o/Hmoh0vCtGsPgpAGfbMJQ8nubqIfTnt0RXtzCPqK08wTm+wW5/ycofoepS7aLWrlDaUcUGXTXTBZOQ78iDOS4lzXzjI0JuvQlp7PotXc11GbEMElkwnjo1vzKSH5gBR8cgrkO33v9++/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY2b8Rtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY2b8Rtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD258C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734680753;
	bh=b7XyZ5ri3q0iGZ+CMJAebzWeCzM39l8NHpF2UMBBV9M=;
	h=To:Subject:From:Date:From;
	b=JY2b8RtmUizNGs/LQUthtJLKVwz3q8okK9IRlEJ1+NIpPSqA0f9x8qNkdCjp0c8N4
	 oGa3pn0NxP3IGEmXm7K73qr0T0UtVYbphjWvjlrUkhtUdRNhyZqVmwvGeRXNrCuTd1
	 m3/zKiT2k+G3bQ91P+7iNR9jpsAXrO6y9inDL4txtxVktlqPaRxclzhr8l5FRVd+Id
	 DCGgHLTwgYPuA5wm/iLQi75aMOHOOKJtsWXo2q3rq4tT8GoB5f45dBnhm5Ao5kOnN2
	 R36YOKfBG24FXRO8AwG4dJd1sVjIf7hbUxYJI8L2eSFo8KGpTpcU/PUWaKDD76aLr0
	 q0sWQFEo4hdGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3CE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468075358.24011.14726438078390132376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3bd50ef81f43d647c355e3b4906d8b5bfeefa28b255bb63d02ecadcd48c7c3
Date: Fri, 20 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734680753
