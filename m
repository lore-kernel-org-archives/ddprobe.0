Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6282FE04E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773954893; cv=none; b=XlMaJfR0w9NJdYxlHSw6ujd3VJSAsCyXVoUt4GqLqxc+e3MSZFFt4U2dZkhak+WSF+pXrTI2rF1f69DLHOrHTM7hetS2JGewi/3icA/LnAxiuTJmYt+G/HE5k/rurfBMR/qa1VZrjS1trj8GM6Sf3XqeEDx4aqCMFL6oI+nps8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773954893; c=relaxed/simple;
	bh=rhg8BJYQwbwWRfouiA5F/NamUFw+hT8NUfmCGPnlQrg=;
	h=To:Subject:From:Message-Id:Date; b=Y8IfE2LQVPBuEaovFS0o146jAxCYYJHvzl3b+m+3WLcJKwJVsqbvU2M20V11wr+V5+d0Zz19yx2ElRqZeq0zIJpjVnkRIYSEbaj05IUlIT1RCxdsuZYCqGjEChCOheBvjkSg6DoKdnZAIqEOzGRp2Aw7y3aYyXGD9DLQIZU7nNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOqqr8b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOqqr8b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531AC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773954893;
	bh=rhg8BJYQwbwWRfouiA5F/NamUFw+hT8NUfmCGPnlQrg=;
	h=To:Subject:From:Date:From;
	b=aOqqr8b3qPaZokD22bH64GLXdW2juHalZqI1njs+BJRykq9fUKosVcUfI8EEtKlzq
	 DQfYDed7b96VwmfIusmIrNFmzyuzt+xRCMkBp6J+dAPl6nPA7A6/5Fp3dxUa8RCJIC
	 CXR8LRxOnhFblmA7um/20UaTcjI8r4QivzSxAbwI7Ra2/U4tFR49DteoNviwxXiMVr
	 Gv52iRqOtSSfG8kkhL4ypnOHQ7c8ZYdg9lYIeyFSo9sjrCOpyMvL0ZVCe7oBU31SBt
	 K97kEPI6dw3CW0XOoEq308EXOwD8XcQgSL873BT24B5SIZhveoWdtkbm/qZ+x2jcID
	 jPmd5DnHRtl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905721091923
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395489358.1649.14698003113677783299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d3968a08330ef5cc51796b80cf4124540a24bac3c8b0b9ca1590549c012529
Date: Thu, 19 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773954893
