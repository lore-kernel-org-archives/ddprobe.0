Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438FE2628D
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787892634; cv=none; b=kuXZUE0Jhw31nVghA5/0v2sPcVJXW5JsuDDIT5Wr+6gvcxBK70MAizysLI0JyaA4K9/nIGfSjJ8MBNB7VQ/SgkZcqUAopXDO/RY9PB4+/NmxsqByBTUR4nyjrt8ok8kx2T0hvH28RmIYeK7LMjZfZDmtBdItJ/yShDukNmbpPFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787892634; c=relaxed/simple;
	bh=ZhU5sedRFS2efGRvHE9feqQUOYXDQjSliWF7uPZAjLY=;
	h=To:Subject:From:Message-Id:Date; b=dr671aVFf+o+AtRVn4Zoz6pW/8HZwrbB0b0xGKFYgpzMq5OSE3okrd9g2QykrIIVZjwZXiGWui8vXRsqI6TshURH0oxPhMcn2kZ+UgT4N63BaZtf6/oXQxc+n9KHrf1MOSTUs0JUUllRfThF/kNAoNhCRUpnyEW4B/u6xrd4/wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN36mA8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN36mA8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D403AC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787892633;
	bh=ZhU5sedRFS2efGRvHE9feqQUOYXDQjSliWF7uPZAjLY=;
	h=To:Subject:From:Date:From;
	b=TN36mA8hzUocA6zshewBrzD7H6q0ADsT2xEV9OUUf+hBFHqeq10h1A3W7h7owefsX
	 8l6ko1sEiRYOk/DIuuAJDga1RHLrmomHYngGq71+GxhhBDx0RscaGC6wTRKurJG2rp
	 qnOj4hi7E70f2VQzjrdDhq1qdYn1PgOct1OtqIalUbmC1zOpkksVC2cnHhZREswfS0
	 7HX9bduHWteBLb9ukvsjuvk7sJj1+ejPf0XokRhH5j9JVyEkqNsvPerbE900uXZol1
	 UFOFZnac/vjwv8kld2jUu7EDnQ7eU+7gmSNTfpeG+lz6b/B9QFHlk666K433qfQycS
	 0nRGsBPuxzG8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BE0C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789263368.30694.12269085157970581871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57be97afc6d5c60880d02029f0106e17ad0b2ec191d815f27f03249b020feeb
Date: Fri, 28 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787892633
