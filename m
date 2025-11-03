Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2196722FE0E
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762157394; cv=none; b=Yo/ZKwlPf9ry+QXkZOKooYseE0Jt/GVBJqYtmdOFIn7riFzDy4bafntMsaazm3qccRxo3hl2kr8zsOJsdtDNf52lIfM0J/Y7s3XbV7atwhMiMVZ20Hlq88hG/Awm5DsbC9E/pfSaGU0yosspFqnGH1ZGdWGYXsx/r+/CCjz7Gcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762157394; c=relaxed/simple;
	bh=5qFzd0lcC+qA+ExN6BzeH+TkluvlvSxYVpNxXvwCY2A=;
	h=To:Subject:From:Message-Id:Date; b=miWIIsLBrzf9t6J6AVY1FQy5djk1pl62AfYEuTyWdk2CFuTPsbQ0sT6hkR+4ewqCFS8KM4wQX76eP0Zeq8lrPZT2Vqnapcqvych36uFaY95eMptGel77RLQXrxYU+wMxaLteMSKIG4csGQdHvIPOqlzq0CJXX4Xt1o0Du50MAhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA4ik+x2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA4ik+x2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762157393;
	bh=5qFzd0lcC+qA+ExN6BzeH+TkluvlvSxYVpNxXvwCY2A=;
	h=To:Subject:From:Date:From;
	b=hA4ik+x2zyIsxRwJzS0w7kaiGz/yt3+YVd6KSwy/JhfvNuYIhZcSFA9q9ALLroXHP
	 ZDYvSlHseCtwaHrS2zlu+q/yuM7TBXJfqJDxYOUkRm4O+CYseLroXvD/AXNAp4vAlV
	 8pJrgvPriEaNlbhT6ILuAHmBYUnMG2Pm5IMMpiQ4CW+U0UQmX+QSNkEoDYyNyLeiWJ
	 XKjXC1KrZ96ZPeTc8umY4Y81KlEGuA85k3sAwlWpTntdpP34MYJHlFHCzdRx3elQaQ
	 fONpGjt/dZ7doSWbhEg5pQsXKaSrhL0GFj6x9A4E/3auhE8N5jRFPkAO0fLWSbF3s7
	 YtFwoWh/smTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F7CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215739358.31307.9117921621726456974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f270f581a584e757b9088195d7e170966ffad3039094996e97747a0b9e1580
Date: Mon, 03 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762157393
