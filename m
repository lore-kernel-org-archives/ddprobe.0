Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD432C327A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748942394; cv=none; b=reSXprpOdi2+NOfjP2FqmiFRGe0F2+Q2pXkYJHfFxxeT5rDE/aC451vKSxDfc9ql06QyUA3yfyRs4o4qmcr2+BZGZMIQwMo+qUdYNQuk0qt8bb8T+V267EgZaSBVdrSb9+DYXpMWs0tgL+egrgsLR5gUEFXd3cB88NGVkELMupI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748942394; c=relaxed/simple;
	bh=eQVOnM1Gr33PHmqNHQB3ktYpDp7WpCfe+W7yqxI2jqY=;
	h=To:Subject:From:Message-Id:Date; b=DpAfQs6Zxz/IOKxU/LL9GVUxXJXCO2D8uMYITp/A7oo2MaZUhUVUiFP3GxwTYcciwY0j3degeTx28lRuxY/xMtbpmGfNmAksQyxXQ1Mbw4FM1tdqMmAA7arnmvC7ADg18YkSvKQjaitwTITW1B2Z8cLLG3NLS0MYNoelhyk+KBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3AR5WtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3AR5WtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3690C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748942393;
	bh=eQVOnM1Gr33PHmqNHQB3ktYpDp7WpCfe+W7yqxI2jqY=;
	h=To:Subject:From:Date:From;
	b=p3AR5WtBu7Ifs5u2AtCeqYNBAKAdJ6XnKDg8AuvUS2u+GK7irEih3+sLT64ngdgqz
	 7A+/baS84EoqtrM8QOeidvuUy8UHO9utxS1miCbPCLR3S33pW6hr9GFf0B14Zg+IA0
	 gFgVxtzKb98Kvyj9cbup7PI34uj/O+pzCoJZ7LS6T+qy9xNYNXzomhwMqoczMbRz/3
	 lx458enK8O3HVJA2d4Z68XRQ4QMHkxvkrc14gPQe/6bHNyqYUVHTN3HNrOWqfXOalY
	 +Km/erJzfb8eHsWnOK9Q9LXPfW5hKjtwxhM5OftBH1GHzTc18kfAxB6RW5AzuWDDJe
	 2yAAJJTaeEOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CDC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894239358.20354.7159817511454309984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800e41cf354335d244f73ad66b86b4f50d6a139cfda8efee85c4fcf898089e17
Date: Tue, 03 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748942393
