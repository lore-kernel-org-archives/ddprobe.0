Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D583A9009
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768902234; cv=none; b=NR+5Rzfii5xRgQ56GI3Whd89Gon9le/Ax/PGSVQ8WyIfxSAKpq595xeHmiBj3A+vSgRuY2QW3/k/B60SI/NB4OYT5GAUyx6m0/Yd4iA52PpLVUYnVpLXtZa3pGx85x44EaD4D96DXIbyrtJtZmbwlLAbU316N62bZ8a8kuib/74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768902234; c=relaxed/simple;
	bh=bqk3qwTJRdrv+KiKUNHAjuZAOm4Qw7bgzClyLnY0GxQ=;
	h=To:Subject:From:Message-Id:Date; b=RRmsn8dhlCnsTFiJ+VK8JGXBNilzuxemWGjk1BrZIKi9L7eWUtB+9ZcZ8m3kzHQxUcHtWUqP8Sa322am/e/VrW2vp6Mej3hdB1UcONmso6voPaHpyajDOK2Gx6CkjaLtE4Oej9JOr2DSj9PRWUXP/rf1sas75aZUXlKfnyG0m4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a60IJcQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a60IJcQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE549C19424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768902233;
	bh=bqk3qwTJRdrv+KiKUNHAjuZAOm4Qw7bgzClyLnY0GxQ=;
	h=To:Subject:From:Date:From;
	b=a60IJcQrBLk7xdsjnJ7HqGeoA4K8gwhQx9Rod5l6CXvNDrzuKxdRn2KySGKlTeL1P
	 HT6FZ55X3fTQswEOtyHJAK/H3aOiMNWgtMC6nS5Fcggg5AW4AYQ3IXieT+/uMnu72I
	 UIvVfFKqp8kaF2oSUTfsJdLWRW9Z4dvRhTxT6XcYhzKqgeabxoF85RHzIvwtivx61d
	 CUs79/Rb1BCS/KIJE2pOU0MjSA2efdyR9itFNl6JZPf7JL3AZyI9XFDat/gCcpfIa7
	 hpvIFLtQHk6GgCiTj/B1XoWOycBAAESCP9Tfw7EPIHyRPVJ37CNjHtQORx3hTY335y
	 LRIlIj6IPXFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1B4D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890223363.19025.4775209461726177842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929115058238eece80771cc7def1a7fc5d4da7309e89cedb708f04b0cdc12aa9
Date: Tue, 20 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768902233
