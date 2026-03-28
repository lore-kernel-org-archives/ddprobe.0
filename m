Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A71E2DECC6
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774700694; cv=none; b=ivt6/VNmy1JJZx0dxyEqUpuDEhZsVBeENpoqygTtHd0EVwXVTQ2ZEz8BD+exVe0h5/1XML805k7GAMZLgVdcqdDSiw40mbhIhErjjYIut0hvBmne/oD08kyMu1fforNJMAdbfCYVZcZNz/QSaN/jhcx4oQsMvnvnEzRl8WUe9PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774700694; c=relaxed/simple;
	bh=71nbzQE12bfl24s9Rom8eZAvlJv91WsA6sitDB9Wq8w=;
	h=To:Subject:From:Message-Id:Date; b=Vzc13dVJnCn93JsKyxNroJi+00XlJ8eHZbDm2C1prnRxxTimYt2MXixhUIzb1iGVrlsAhjOksf7XXDglKJe5h1oJzXnHIGrt6Fvp5GURQ080Rb+MWvTzOLaGpcq8ALC1whvJse4/c/fPVmxQ+ZXca9Y2qmF+jedDGu6GLDOWgek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXeVHMFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXeVHMFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C84C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774700693;
	bh=71nbzQE12bfl24s9Rom8eZAvlJv91WsA6sitDB9Wq8w=;
	h=To:Subject:From:Date:From;
	b=LXeVHMFnlR05/NncVxLCR+uzDOYR+KJsSncBr/GMmBjW+g/YDOsmbY/40cdvrKpVb
	 kVwUdkcbMxms3dNhXTmafuAMBA+MYAMNDqGOeuihuVWUXjmP1b3NMslK0L28suYmnS
	 ICXW2KHM0rpxTbuG8/dUuVjl3mghoZAY2lUDqa1ItvUCpQYuyQRQLIBZf6Drht8hgt
	 x3uNL5YtE2dkE+3QNp+nFy/9UoPt7bMKsUa2IhUpfogs6UO2IisBeskgTZSfELDl7o
	 KVwsckFL1f0Cw76q6YmhR/m1Eul0Atjwiwqp7yl/aWRlia1AJBAd0uGV347GZshAc3
	 sN2ahgoqyoMqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D310F3DD9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470069358.13217.6195699206007805323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1154f50c202901180b7ba2e863dc6d1b6e6de05af3610d58346c4b73d01cc42
Date: Sat, 28 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774700693
