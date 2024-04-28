Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713C98F59
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714347143; cv=none; b=JZi2mnnSOUNmw7gvCcEr+YfAUu7LjhPDqHsCekmN0/hBpAcVa22nuLCwMG+J50KBL1HFFqnmNQDeJutPDjYaTfzSEbnet8A93dRPLqVWjQFwTF53xJq8MKQhQXseUZr26BGHLmY4p4kYST75O+aaFpAuuKKeQV5RDg1C7cZbTUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714347143; c=relaxed/simple;
	bh=ANqu3iw1TJ2R/Y4f69SeoMTMgSAyIsSyy3AAn6C57ns=;
	h=To:Subject:From:Message-Id:Date; b=D6LEfmlhtaY9rK2kP7KvAD2NREe3kSHUG0E6ZrRScrlxjZBLzG2c4R5Px2YaYreHrM5IN+2eQtsuri+H+BbKJmUARwhPYDiT5y44DnVINNLevqaWk/ijB6D/B6HZEtvq/OvzlkzvijRsQmJh8Z1j+YWCuwAmQFBpTEVAIHGZkhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+QtGhd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+QtGhd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB5C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714347142;
	bh=ANqu3iw1TJ2R/Y4f69SeoMTMgSAyIsSyy3AAn6C57ns=;
	h=To:Subject:From:Date:From;
	b=O+QtGhd44BlypuSAQk6QIPSvOsunse+jfcWERdrETfx7kOoNCd0/aLo8ftq+tRN32
	 NK3W6CpTDfE8tno6phEiGDEdiqrZ3Q2JhursY8EnZY40e4dfJP2iPeS96Ip+y97TwO
	 kgQgUY0DoL1+kj4JvMNMkUh+BJPjci63fcY8hKWan5MHm7gg/Az/GDFXnGtQoEIQXp
	 zyPRFsGZtlO18SiT7hxKzZ2oYBBf4XlKZyyDiiNitY4CddRi3jzf/ZGp9zNft0HLa0
	 PWpNgCtTz7wKzgpaQbYhxoaEoEbfRCTDiSE1+Pk+Wbsw/OnnCx7Mt7c3oGUns7Vo3a
	 INPlFQuYlP6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB10C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434714276.14508.10201331595432755638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1685c679577aa10203788c8764b10d73ed8f287ca020ac1301f005e2a1e8589d
Date: Sun, 28 Apr 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714347142
