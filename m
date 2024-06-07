Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716151CD02
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717785443; cv=none; b=lnSxUkgGp0/jNZYSIGNdTV8NPicgZVATfHx2QSmeEJhLBpnbXNH6mFAW1dBddQL1+Q+PVheWFklCnA/8b28TwPxqK/Lt3EZ/70WVwEk6AD2g7n4GHflVHjEgeaTeSpsfHyZcG2ZUjl/i/+LVadKYmZuoRC2qvK5RzhoATQ3InO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717785443; c=relaxed/simple;
	bh=BaoS4BLytKbeX4ZCaIQFdJeej+mXBOQMT+COJMkW/vw=;
	h=To:Subject:From:Message-Id:Date; b=kt9v2XDpkEvm51onUAv81KK0W0525Uk4I8r/fBaShuYl7ahZx3FBvyRvU9CCZq8Ekc0vaNvc+MgwD/Nli/JrkRmzCC93vqA1yFMvobYsFcOPQZ2T+uOArnQyf9vrdHzn4GWJSTFkE9LakWFuK2++jsxO2bJGZM03tgJMl9pzuJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQrIBX5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQrIBX5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED998C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717785443;
	bh=BaoS4BLytKbeX4ZCaIQFdJeej+mXBOQMT+COJMkW/vw=;
	h=To:Subject:From:Date:From;
	b=bQrIBX5laIN0bUq3VxdnASM0vXddRCFqpuBGo2+ZMrzKhl9uy3DxfgSu1W9ic3xuY
	 F4BT8Ocd/MeTt6yclZGYo4erEwTyzaOjFKoR63bP0X/mKX9lxybsd2Zjy5M5VEk02M
	 749isTk28EZ8Rpom+KQqIndCqiNRINPrNGtt+jnPrW5Q5wW9HdGUeTZ6sj6zmfzfkV
	 LhheEdsgGPa+e4H0jBfGVuQW5w8dalwZlpDrTswr9/uVEjtu4CxgOC7Pjl36le/Ja3
	 7C6BRw0CiabIkZe6eMvfy42Hhjq0tLaYuJBwplcuU8NQ4O6MKnGtJHRqQ1B4fVhKnR
	 y2QmSGva9YNiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4C9C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778544284.7368.17970908666546149856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f19d51cda21774bc6772918c658f135b9407334c61f316c67de6192b74067c5
Date: Fri, 07 Jun 2024 18:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717785442
