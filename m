Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B6A4248D2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790664034; cv=none; b=XULcHpKJscLTgW6MXPCvg1TBiVVuRAB20JTBSUWcexwPptQyqIYW35wPw4hJLZMu4p4K63PksMz8JJg/RmYSDZm/t3HeU58+1A9Vd7iJbv2nMJQ/J6kP7a4FUmImoFCAf2eylNLBMDoVniA4VqXMRF3QpdhScnmPrPtQcPRAG6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790664034; c=relaxed/simple;
	bh=Gy+Net4XSrTyCTKoo/MaYGDGGmJ0RmEd/SQFGIeG1A4=;
	h=To:Subject:From:Message-Id:Date; b=C7+cbVmmE/jxG7WBdy0tpkdWGoioh5k4RM1VnTYUbzuVuKcCbGxmR0q2/lXmr905+ZPl0y5e4YB1kQAJKdLsGbytRN6HwAnkR7v+B0UfNQvcrmN6sZUEFGl4/Tb3uOvqn85+EWlR1w4ZfPJLAFrR/M0xEEgdoPm6IYmwzmg5oNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWKXA7lT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWKXA7lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB79C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790664033;
	bh=Gy+Net4XSrTyCTKoo/MaYGDGGmJ0RmEd/SQFGIeG1A4=;
	h=To:Subject:From:Date:From;
	b=WWKXA7lTdQiAIrA/mbf4Ykutl9l5kply9y4I0Ag02ypgVE5+uA9apFYzIasxBJqf7
	 d14s14RMQ1tW7fDHs9Vw3Qvi3uKWt+2ST9lhxg+wjUaYdc9/cBmDbG4B03ogRROpTt
	 EGxZTvh7FNqC9HzmW4k4r7wnzPcBetkxHIh7HsDIsuDZem2cij5T2+2NaaHLcSCgS0
	 dIuWH0dB6eAQENm+4IzZM39ldGR0Fxuxl+8D+XgKGGC4eclnuzzrKBXXvTU8tLeW2j
	 e6UmncKHrntwcc/Ofl9EJuEUuYIeq7s15LY712plnQxudSnU6+w3QkzKKRjVj4KU/i
	 vPfJ3Vt5SGQ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC45C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066403369.5209.2949317310271391377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f585121c29be8935280db9bbbacca8055ddeb046402d08c94d2ae0df424d56
Date: Tue, 29 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790664033
