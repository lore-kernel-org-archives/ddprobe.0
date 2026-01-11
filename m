Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0903BAD24
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768098234; cv=none; b=THJG5Fd9jjOfr7xOSjb1/dgNmYj4X11Z+6W4UdYRYIPlocq+5tURcFpNgPFnt8ueymlWzCWmGVfUBMZW9/PJJR5aC09b143XcTBeHXfT2aVKA64zYbf4y44nFRFSMv5Tcn8Tyny4IuF1Rm384FQTJOweaMkga4QWBKZskNEfkH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768098234; c=relaxed/simple;
	bh=/hbtZ5GfV0K8floSdnsk+eSmwYKwJxqczn2wh87TBRY=;
	h=To:Subject:From:Message-Id:Date; b=eLApSsiJvxCAmC9D8RqJrm5v2RZhCYnLgXWhDbRn33WqUELQ7XLUiZ7d7uqrk0NPEcO+T9KfvZtGXa//SX9Nn3NmYUXMrUS/97oizIEHUG/X2E2Mmay/5hYSR5wyQw6mnNQoCAJUHPXUn1CkEkgfyEajr2bHx0FCn9+q1VPpWIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIgp/zVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIgp/zVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768098233;
	bh=/hbtZ5GfV0K8floSdnsk+eSmwYKwJxqczn2wh87TBRY=;
	h=To:Subject:From:Date:From;
	b=FIgp/zVj0nTcqoBn0nFojXYkCc+oJMbl9LmRaaI+8Pmx451JlCeWSeL0WfwJ5gv+b
	 Ocap5R1rIMn8An/UmwrWy7JU9rGNfb62U3Zot63iaEnrj2dGsjv8xsaEYo5PYnL1w1
	 w9iBsa06R46zoD3Z2zl7Ogm7w2qXhq4sxalqHjiwMeyEcT7IryVMKConj4FIwM7cZF
	 QsmzBcdn/BivBOfq3ugZU2bHPvmUJqtamAYJPbieHnIXSDZIJpdbjVFXioppJiMZH7
	 HYhWYya9zlauSRIdpWP/BYw+CuGeD2PuNk/kd6BTiplYgTyqCqeLFUwFu/Ki1WzMgS
	 AbWnZLkzgLhWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A6D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809823358.1183.18126026488236475421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586edb82b75d02761be8c29a10895c477e934c4446976c26d07dacf7aed87bf7
Date: Sun, 11 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768098233
