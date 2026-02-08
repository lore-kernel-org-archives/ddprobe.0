Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238EC81AA8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770588234; cv=none; b=PBlmvi+RVLqoYEiUvGl2xVsW3Z7UhQBWkOxAsmYEndecffN6/Se1lOiVzQUc5RoEg9KDCiTlpxvEx9maEYRZkUZZver/5X5jIYxir/lbXfjks6EURBmKYy7QFy8pl3jV5q0rZ3jDyt1JiTxn6rJ1rntgDiZZsPsF40sqg8I6jBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770588234; c=relaxed/simple;
	bh=UyXfcEHjD6p01oJ6fBdHb9IZG2uYZMaG2FA2mKCzyQo=;
	h=To:Subject:From:Message-Id:Date; b=NgXUG5ownm4OcE/YqaHckqGoCkGQkHG+tr5NqCNhlfNReo4mbwjy/S3beHi5Shoh3Q4BQfFiIBy3NTe7QxzGZrcZydZijZvL6gBeGh4hk08UUpHWdJSL3hbnyXNNgQd+/Ron+Puye9NGPXiC0gi869k9WMkDM9FtAfFw9HXcze4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP82zi29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP82zi29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AE7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770588233;
	bh=UyXfcEHjD6p01oJ6fBdHb9IZG2uYZMaG2FA2mKCzyQo=;
	h=To:Subject:From:Date:From;
	b=TP82zi29F1ZUP7HvoL6ImS224UHR8OrTZr2iABi4Y++BFRY4R6q3jXYbgC4gjfM6G
	 p2+1tvhdIY7+5Qh8Fzp55FLBAZzpiDDBVC/BJUT7KW5FzjUUN3pkG8R0fKf20Kg2wY
	 r9gPp1ZXlsQOZKh9uiurHgvTS/1IbKmNA7IDYA5OVRdUY6TuAkwv9in+HfXKeOXTkX
	 9fIZhLza0klkrkv5foA746hDDD3Rmr+bdSvx0x9Egs380GkSGdIfz637sly17e1vc/
	 kpwjs+iUxd22Ly6MWrjLa0GjQM9NDOlT34A2UHeECb+31wxTA2XATWZUaJT4gIZPYm
	 0shrL9ICv+cbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9BFEF06E8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058823360.3143.8984167781416902373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa7e0987b30517561bb2cf6a03871a01a4f33968f1efe1af847449a41e91753
Date: Sun, 08 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770588233
