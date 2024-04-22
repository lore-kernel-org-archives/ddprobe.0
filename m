Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C4515218D
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713807023; cv=none; b=lM5tdfEfgGQlkw1K3nnTd4vkmiin+24GwjflGhtctnGB2DRjHY68QX7ZitKqjpGGcHocOIjvcP9qYruXcQn2VCsQCxq1zVYTfBYcrI9462LB7Au1u/Rm8IKFFeq1TcTLrJXMC3i3rCl7WzmSGso3XhYqMKkUKA6RJzIo/5nHsn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713807023; c=relaxed/simple;
	bh=ZrKUhACW1cekjhRCwAIE/EBtQSHnQkGewuMJIQBcELg=;
	h=To:Subject:From:Message-Id:Date; b=Mx3K0wMXySJESjWDych6V07gRnY9KnLTb0PYbTc8cMQdl1rOFF+lLI1STVH7D58hFisaY6A9cOQkAb+0LjS9l8eS8pNqWiJ/QZLm8P/Rv613D/UmE8irMrbYkCFcGnJFCx6BWOvZjB7d/Fs6wey1KRv+NhFrMEWjDV2pYCQyPiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brPZNfSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brPZNfSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE64BC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713807022;
	bh=ZrKUhACW1cekjhRCwAIE/EBtQSHnQkGewuMJIQBcELg=;
	h=To:Subject:From:Date:From;
	b=brPZNfSG3KIlLuWX1KtfN2tMjjzwOTSe0BY1KJsarvkDLROTq+xXEWPXm575DOvDj
	 /CrrBqkkoWvt1HHX+NB6BWlohVszNqM2qwP4IHu6x0wQUIp2a4OsSmOPd8GvI4zYQ3
	 BMFMzBpqbxRCMB3L0yMjeRUZF211d4pHYwThfCd9J+sM96QZ69F+I3Mgkq+wb92yfD
	 JFJQoQ5iqMxZvVlJuK8WNA0LcsSHAutO/n5Ifjz4a6OZefoV338qHht8Ol1KXm8f9W
	 GO+NDovJUEJ0P9eLHi1DCra/VHMlMYXszRPU+RGBYF3Dh8Ln9FeuKh9k6p/R1GyONv
	 Y7L6U7LmviDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1B5C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171380702281.14071.12057967069957892702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e557b8a2f4045b0e8f5d5d230fd06b261189e216099d2cfeab7375a8794f50b8
Date: Mon, 22 Apr 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713807022
