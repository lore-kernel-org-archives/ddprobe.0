Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196FD23AB90
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765379574; cv=none; b=TWDytqaV9JyKsnQsQW1fXNsbQ8wHr3YBjB0QjEpGY1e8tP7fzOoD/wb7nuWHGpkV6saCzBAuYWI1KWoX3ZG8DA2W7JVlpGTHp3vQoJ0724VRN9WsCAoPZE9ryla3ASfq89WwzlFiIV2kEOoofGJJsfhaWxBreXoHeqm1GPvL0ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765379574; c=relaxed/simple;
	bh=57XvS7ojpm/rUsx3kfbLHJoybnx3GM6b8sQJJNp9zQU=;
	h=To:Subject:From:Message-Id:Date; b=TN1OHqImFWR0a/fu6SEiv7RBggd1cwxpION01jit4JOWWC02ioxn1h3kXmZ4bDpNb9NMNtBBHinUHZ+c3jSF7/XIWTai33/cgKrhRADLfx3btEfoGqG0MKZr3IzIc6JQvJwafU4a0HgYOtUoj797/FrV0pafcAGv3hx6C8kYiCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdDrQK17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdDrQK17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3F2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765379573;
	bh=57XvS7ojpm/rUsx3kfbLHJoybnx3GM6b8sQJJNp9zQU=;
	h=To:Subject:From:Date:From;
	b=SdDrQK17kqq5LNtlwhUljxbzr9Dkgha0FQmJ2JmtseBc9EnG4Zk0i40qbeoMWiN6L
	 DKfSncx8N71A7Idox4p6UvsnoWjvuPL9C+C8qrdpt8iiBB6ZuBS/gLIcjQdrEQo/53
	 B4F7VoNQwfghzDdz/sWB0BGkWOvpMZxoTGn9ZVbEEAlhZMHFjM1MTV8PBPON6fowID
	 0VA31eNhXTrlfO3R8QyuiXvx8rtLOIXM+8NGhjLXx447mN75EKsi6OZLTizkaC/JgR
	 Hm8vS1FAE4gdvc3TcvQu+eRk95uGPRSc10JGWFL8jIbaSQP3E9cTcrXwu4yw7lbUmr
	 I4KHyBMW2iE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B3D3C920
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537957360.24398.10742711207552654600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51078b44e4e500e021a02ab1d2cf5a7a855804ca2d3dee6c03a7055487946c48
Date: Wed, 10 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765379573
