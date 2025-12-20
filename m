Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224CF231A55
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766274834; cv=none; b=h7IsphIBaUlJ6pUCPUNdPNVMr3yhDZchOIEdZGgGizP99wXFPBI9UzxQ1a7RSEAPPYr+47DE5HxUN6/M+5/xwG4q2pkjQmItptah8lMjoXQxaDTI5teUpfLl+5e8lVn2fIty0eycvkPIOz6oks593UIpzCtAb5mQre6gzB/RWAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766274834; c=relaxed/simple;
	bh=BLFIV+o5Y0OVKqFNMbawhLiVNYVqLL/XbREHwZRQp5k=;
	h=To:Subject:From:Message-Id:Date; b=QLdI+TSLha6VRiaHAqYWe5b5GPU1MhfvzBtpplOn1oHMr/aku3PA+H9yTicXYdYK8SL7sXRe+8kFxCm1ODCb95I6fXWbB+bmSVpAUT4chwcxTjRVeiQttsDxgQDM1rsAo6VJILj8V2KBrYfOPhA72SaQUsWFXf0EeeDClaoy9nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kt834/qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kt834/qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7001C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766274833;
	bh=BLFIV+o5Y0OVKqFNMbawhLiVNYVqLL/XbREHwZRQp5k=;
	h=To:Subject:From:Date:From;
	b=Kt834/qqkKpgbKm6bIaaOkfdFBzBZXwWM5KsMWwCn1wFCEh2JRZxEnBhDp1V2yqP4
	 7IXAC9G2J0rBDG52qmeyWtGFHkYz+vpAj/AqhzlVSadcsJmQqSZ7dX/SlDWs04woMx
	 QyrplzA5tYbv9VrPKlzo1zZvvEyl6c4FCvZMj9v+5bcKDakQQLr1EbAjjAFJZhRX9n
	 E4xfwpqIJux2p1TtbJM0JYGPatmJUwsKZ/fm9DZAs6Sz1yLwJbmgkLUenlzu1+U71G
	 uho2C3MKA8jdZj3CGwS5ZGQcMwMOwQv58oU2iU0RnFBVh3XzsA/CJI1QaLYo+yGnd/
	 yYyhfKRGCKb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F6E668BB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627483357.14321.5909556002329907762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909d5091f599d8864405b0b2e19dd861160917f69c842c50248f9b54533b1838
Date: Sat, 20 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766274833
