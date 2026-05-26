Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E47C3FBEC7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802354; cv=none; b=LfzVbGtghAosNWDnKkhZmXCKiYQTxL7fTqBteY4wsNZlzvjSsQa6xzLgL2AhrSq+yEWFVGCCwIK6KXwb+rWOBuJ+6bsPas4clHX5XpkmwXqrCbS5M5IcUliivafO31dhxLQ232kAoil4RcDIA+q7J4nlmoxnIsxDR64b6k8jIYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802354; c=relaxed/simple;
	bh=6Wu6uiWnlSITjrvFYazesvr5by0+eQxeVyb4VnACgNc=;
	h=To:Subject:From:Message-Id:Date; b=VeE7dvl9opBEbHDyGa09kBfdLgfARZj9aOL0aRrLVGZjhvc6AZzdwnZ8GyYgvvvG8jAyxR+exf+Q20kvBTJ26tA8fpSzvhkk/IgFtiftStLDuZUViDXV91dMBTDlgR9kc4J9YXkx9KSIOp3eqTR7Kc4A0rQFUc3yUrOF+WsB+0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drYK/qrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drYK/qrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0997C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779802353;
	bh=6Wu6uiWnlSITjrvFYazesvr5by0+eQxeVyb4VnACgNc=;
	h=To:Subject:From:Date:From;
	b=drYK/qrmnoh28zPol7vq2NQ+z7ftgDqUX2uGZMhS8vJe6XJuu8vUlf5ZZaNsMCcfN
	 1JkYkz3MtOB7jZwgDUGyelzXpS99t3OUaeLN2yVlq1ruSGXfuaKXyoYH9xzkO1CKo/
	 hdmXY3iz2a0xfn3mpXF3vrNCXUPniT02dpR3mF5rWtnk66iPhG5gl1L3JJf5Qf/qaM
	 WoKYJ09K5qclJ8YWU8ER+XGcdOBW+tAYHYx3eydsqcMbuM9fWt71vTfp8gVXoe/qpQ
	 SdKVKR9sJ5K60gaqcL458/dXqM0SAwvIrIPM3tpt2TNcBpXwOI85y1XeqNOVYVtt5p
	 l7BHpGEhvEvRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FCECD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980235374.20743.2782896284446764107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94f76933cc47fc5364f63946ff601109b53cc8355c808e2d43960b0e85554d4
Date: Tue, 26 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779802353
