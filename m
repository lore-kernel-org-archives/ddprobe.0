Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEAC358D0E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775427334; cv=none; b=ib8A6gU3/wljr5197STjOhaRC5/zRTwOU+hGns8OL6W2FFyxmIGb3hDdPlmx54Fzr//PjxyzkO6wSaS5BlXGlToR28lNZKeCvCZQIpw3lDOuEtVaOTY1Bk0LL25SssY4xVwy52OGLI9k0Qo2bRisf8ZSXpG4FTXhKKu8CE1PCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775427334; c=relaxed/simple;
	bh=eE2Qge7j1VNFNVWMJerSxh3ZsBCyilQ3zrZyZMNeQjk=;
	h=To:Subject:From:Message-Id:Date; b=QIJkldTtXaXQ+mfPtsJgiMo6fs+dxYMOL1kNxYR6Sv+U8Re12ivbqOnG+wXOvQo5peBTxxCJ4DXczNVVFPTFr+uBCoRo9567xm/w5reVd1YwVmD3EnJtA92B5dJ21622POiVmES3O5u83mPEvEUpuHnN6ul31C2lSs1TDvwL3Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2o5GvAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2o5GvAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2226C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775427333;
	bh=eE2Qge7j1VNFNVWMJerSxh3ZsBCyilQ3zrZyZMNeQjk=;
	h=To:Subject:From:Date:From;
	b=V2o5GvAEa1WtsK4DyCoi72c7uV+DVG5ggRtkqzligxZmk3PB5C70bN6fAjYfCmhRx
	 zU0awmQq0QRRhTJkzHij3u+nSDH6cbqDiQfQcre2zzXIL0lXgC/XshpJS97uhGw7Kz
	 3U9A3MY/VcX1SYHgjKREovPpZqn9Znix6OxhQK1pYNT5y8wK0bBVB/9+ssxJwbjaEW
	 3aRaZwwAcVDGoRVkTHkxLX88Ahm5D6KM08B9w8m9SGOD44DEfuZIiodm0GP8t+vTga
	 Zd+vI3x3QxMyiuBYfqmdrhab99NHQiJXVvvi/DiZrJNDGJ52skXuRL1hatsM1Tsa93
	 wwWX5RVRVN5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C1E9D824
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542733368.1317.13829040284675255791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21939b22ecc7e3dcb42a114c73a1e9a4c669b66ce1397fa3f30eee8bbc61172b
Date: Sun, 05 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775427333
