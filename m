Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC557D405
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721433953; cv=none; b=AEhiuB65Toq/Ysdqtm03VnhbDrglKrEYD7cRvMv/TggJSngUnU02iDg5T3pG25HtkwADKoYNjNcxqBoEebApKUjKoJ6biqn/xZvxZOUMkZfZl1OO5X3K6nN7fr+tPWl3NWgoT35/6VCsmAFD/mcZ4C55SSTTC/YI2G/2OLW8bik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721433953; c=relaxed/simple;
	bh=reVzrVXBGt3dcQkV/uImY3sHfxxDcIpz+2of8mjqXCQ=;
	h=To:Subject:From:Message-Id:Date; b=ULLFYNrwI2VZWqnXlg05iY0go4cundmAdiN9f2dlHLXTnoE/c0S1kzo0/P4MxQReKyZYEb62YpiXWS0PxUNAUUnFjCdF1+vMuiB5iHyy/hvQ9IOnp4imD7G2/NbZAB6YWrP/0IzZ09jZ7KG3GthD4CGAoGjns0XELVjFrNUJxs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwvGtzxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwvGtzxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B323AC32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721433953;
	bh=reVzrVXBGt3dcQkV/uImY3sHfxxDcIpz+2of8mjqXCQ=;
	h=To:Subject:From:Date:From;
	b=UwvGtzxs/QK0AUVeamLCPeyITmm+iddqdQ5LsbIbzo09s2B0YXW/KH1qoAj5RLZ5y
	 GSbCfHuSfKJh0J116FRhpRWzBhr5roBgMRAgp78zBCGqQYsR6XIGq4J8tF3Ex3bstx
	 BwNPgxY7cg2cXmM298IYMT6j2B9TyBqr5eaHglxX4bPOUD3ZuXAfH5qn4lAjvxqC8i
	 S2/zMcmHpn3drqePXCxzSh2G/YMyR6hK1Kxsof2N6bM64+ulwJ3TKDs6j1EkaTm7z4
	 MOOkaneyPAKPHMlcG7HwG73xmiqdSdhu5xx5mtWm7ScuRl0sH8a9+wE8tqLpeK8acv
	 v0WNvmvOqGkOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2199C3DA5D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143395361.18104.12387082407866077852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b488963437fbcaedaeadec79f65534ceb6404ff0bdb621125db3e34403e8c79b
Date: Sat, 20 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721433953
