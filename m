Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4024819A
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723509354; cv=none; b=bT+6+qpvay2JV8fmu9Rk87hr9SS5802Jg6atUsiKhWyjgBEPuQ+HHsUUeB+CqXE1Q6D3I3oZgJ2H292Tg/YMCZ7OEArvrv7DDqjj9tujQFzUz+wAihktL4wk/osQPnP2g5BS1NR5sXb/LRMOHO3fT/c4TKWYT0BgAgN8k74qkOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723509354; c=relaxed/simple;
	bh=S7aDg3s1x95Y9DDEkLA4gCuGydVZrQMs7KU8C8t293U=;
	h=To:Subject:From:Message-Id:Date; b=FPtEYSI24ykChWTUeL9vccSO+cU7z/5ClxYsmpE3wR6ukrtuFSWyc94hYraWUYW/tuPu49utR8yCNrvmXI+9gXBbCtOZhv0/tNh9z9TNPhpu3vkWw9rMYqUCkzqKZ1Kn0tn4NytbwTxDeUzxPSlZwl6c4ARJVx9IuwNjj+44qWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAaNpB52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAaNpB52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5509C4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723509353;
	bh=S7aDg3s1x95Y9DDEkLA4gCuGydVZrQMs7KU8C8t293U=;
	h=To:Subject:From:Date:From;
	b=DAaNpB52SPOctzxr0CtvhRSm1CPQc0h5oLsRSCb8D/JCM+iwbvsHufueOdBJ+Asq9
	 9k0CAvnI2zfg2whan7WVrK+PRHuuN5/ktTT1SIV5pEo93hS92Cu39rdqMOnCWQw8lf
	 ZJdTM396puK2ye/49vR6qoJ4pYYOuu8E6geY3/4aW4XEIHDiQltkaunZ60WhcJ3SZG
	 6GqpnmxJmE8WXo9iTFTpIL0q9g269gJiwdhz8r8LAOlPAamEwUuFyWlIaXZW+Zis9J
	 ta/6676DXCgccPnrxRJaLZQ3PkW6xmixhMhcZT3PDE3aQKoYUeVRt+aNZXEPKszLc8
	 WVELvq5hqWbiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B51C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350935358.29355.7147802579072867736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bc83a4b04558b35f2c5f1cc3c81f93d5f157dd7b02be3c32db05afcf62e3e3
Date: Tue, 13 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723509353
