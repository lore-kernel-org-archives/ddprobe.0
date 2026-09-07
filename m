Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F903CF1FD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788768634; cv=none; b=nkIssAJLQdvVVd2luUIKxeZv5AKfL3CP7nDpVPKqzcmR+KnALIsO3ktBxUZigmjLPr4GMUr8WLo4fSAtKh0W0td3UKe+6sK9hPwBcwBd0w+R+rzZqjX8XHOpRuGr64Gfbxi8KXirzu6CCXA8Up7BNJZROfiTGiJe/IAfvtgqta0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788768634; c=relaxed/simple;
	bh=H92K1pJPQdSX35VfXxqTeRWvevZJdpx3N0Z2Yap2ekU=;
	h=To:Subject:From:Message-Id:Date; b=aJZFHT1AU3f3cYtKjxOLRMl3NYbpbSXctHJbCLjYu4tkg6RgUqKJuTysZDPRiso40sEQckpYgFI2t1NAMICukljAtx4Rg1CY4HAl5B3DaKbM2hBkexH06XdH7MsdNy5OOLnSVy7AjNQXjs47F1PTEx/vuqa8vtpvCj5bFmIsZLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBJ3ofOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBJ3ofOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1233C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788768633;
	bh=H92K1pJPQdSX35VfXxqTeRWvevZJdpx3N0Z2Yap2ekU=;
	h=To:Subject:From:Date:From;
	b=TBJ3ofOWFdKtS82cbVBVzKRL4IbSXsCkhnOjJcXUDVbWDiFiMFo1k4g05w+4EYGCu
	 l9OeAPXWyLPymomxo81F42C8Ut96zuNTCQlR9tjJJhEaIopDEhwnfNza6pWj+zFMnD
	 BQDGOMDEARgNsVC2wAFKVFoi5Q8M25XWue3YvUK4acgzbAKixuXECJfBlUI4iwQXLX
	 yvQh31q8xHYFRAy0I36jFsKSl28E36dzqhrvk9T1WH/CxAHOfIFw+Ogor93Oi+wnar
	 483QZlk0qeXXkaVQtY7VdzCow9PTJvZHUymog4TIs/QtH83xkZFHSGrdtjTodTxKno
	 E9M7jm+NpixTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD373C79F9F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876863369.8615.6229947722076101750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603f0ea2ccb3272ba1891c3ecc6ac24381b15cd89435fcc29274f99bd364d69e
Date: Mon, 07 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788768633
