Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD53190692
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755475793; cv=none; b=Er0NF6h0gPTQHqhSUSfUfPzRCLnsLjjoUj35h9ra2B7uQIN+dcmD2PiesCwhlB6C3ASa438k5zrkQ5n8K/fSuCufsNF0sPRvn3mULMwRix7LUqV8mbM2h1FE2KIsT65N+eS8MY8M8EK0egis5OkhXnsFYjkdWOhJ6X/5W0jPaW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755475793; c=relaxed/simple;
	bh=athMBAwu7gOKcdkZaA63fcg3f/E1WVqGP1zmRkAKou4=;
	h=To:Subject:From:Message-Id:Date; b=cHgA7s81bdCcyEcOUbobWbKuynUB11lbZu2uMPzpV2tSJ24yf87eNtqxnHH14CBIhsuFE1YLe3YkGVzBTVxR7FDDo/c4dHvVJbd4GQeNxkSDLhOLy3HerBztSHBA5dkMXi+PuL/2HsXMm5+yPe/sEwbiM125Ts+xZV2+bn40VYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI0JM8cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI0JM8cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755475793;
	bh=athMBAwu7gOKcdkZaA63fcg3f/E1WVqGP1zmRkAKou4=;
	h=To:Subject:From:Date:From;
	b=oI0JM8cbtl+/G6zbI70fjBj66QxczVQXeSQxKwPTXmq4rKC82zaTm8LxrOiqI5ErU
	 F2QC5aVwNftmQl6ZJl1Ua1ZV5qjLAS8jNpwmk9txLtfTxtB/gi7s8jWzwwwORNrg7f
	 f/d+Bj3vbb/ruj0O2jOVwP9Oei5UnJyzYS2ayy4LiYqk+zMJce567qZmLNK8h2/WCp
	 FSf+wt4LvnAg9EMgRbqLLyNP6Gpi7ONHKg9t1YGpKNUO94mt27hpeL/y4KI3iEsjkN
	 GosJyuuuUhaETWMoBlY3I2X0tYcww/QOp4zJbiiO4U2E57n42J6VikTaA52O3I7nsj
	 T63eI4KwmEovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EBCA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547579357.18382.7112541489507900071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a197e9414c6bfde2485d62005ac299891ff9c280bd6b398ed351c00ea215c6
Date: Mon, 18 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755475793
