Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2093D17F7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707017297; cv=none; b=lk7oleSA9QHrQA6IeYmCqmQ2wxygppaSlZzS4PiwjH618JITXjrIZZgB/I/TqDeyMwX1VTOOHP2YGMD9S3hC7eYuUFOzTiUFIDxgmXlDoaNpLthwrRMBnUlUkMeNlLjDei58sdaV7Vnh/2rR5873h4bjNASZMyc9XdYbztKBCKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707017297; c=relaxed/simple;
	bh=9yfV58QNcAUJoj65modPvuzfsUbE/A5x0tLzzsUkM/g=;
	h=To:Subject:From:Message-Id:Date; b=edW/xMJqDhyayHe7hgbWV3UKUcKB0wahhBtN/a8soszx2m6hU3Q6ZpigOytEHuyHWsbEF8zIxfG6lEcxtWMDW9X1q+4mI2Ji+ud27LMfJTcyOmqAiW44eSooCO0C6Y6TA4oQ7tZkjdNgwUQxHPunFCO2mPG4skXGY6ZKF9lfmFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImwzGpy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImwzGpy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80523C43390
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707017296;
	bh=9yfV58QNcAUJoj65modPvuzfsUbE/A5x0tLzzsUkM/g=;
	h=To:Subject:From:Date:From;
	b=ImwzGpy+rrqumdf7KXoRY1buks/6u5r3VUXPjScPoxHQX/WrMPsWNLfO+SdBOpBJ5
	 2s3Fvn5+6nRu+J52PhYZovujzl3/q5t//CEZofHf3y9ueBFkkYm36FOw5OA1nwizox
	 Oye6QTy77GpqSa6xeSaHBSIPOEBMNvd/hWNQ7V3VskW+AmVaKsXDNRk8cn/SsnVCjo
	 86vLRAF/1nr6Y6nd38WyMyV/YgTPpxgLb/Evh3cgBUWNHdc5ejWAXtyXqhkA5szYoT
	 mkihB77Xc1G5MMFk/Mg9erGFd/zbIPTWLW5UyNHsDIwO/0tTXa0l7OtkR5p77ligx8
	 0eumInoOyr7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61261C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701729638.30801.9507231387919064582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf738357479e981366bd885b84f808a97209ce0cccd1d2a2b09634d144d4ca6
Date: Sun, 04 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707017296
