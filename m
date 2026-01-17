Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082DE125A9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768674234; cv=none; b=TB2JqwnNxfHERD9gQyP6Fw6uIMqv1oVfDwg6ys5kc526X2gG3VS7Bf6n1/cq0KemWiSwkPyeIbGdg9IyI0z9LzGh5ERNQxgWylCDjLHdMjgoDyQztK8YP8EPf60RbhjMzsLsoS8cmnRKN3vaVk/zIu7SWyXQzfbxKEUJmSxGgu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768674234; c=relaxed/simple;
	bh=bDshb001+qWn+Ha/slGNcpkbFEhEF9f/mPPQMYm0eiw=;
	h=To:Subject:From:Message-Id:Date; b=Myr7ULcdOrNvvWmClS5CDWs+Jv1+i5yqZ3iMciFLSK9nLZLtzt7cw/KSO8mqHrxyJmWoGlIzvxIrxrm0oLDfC+9pcnuLtvAOBQ5PN1bTyKI3NeU+zcJXyA1kKafIQ+v9V/FNYH3OkYA9txqgQaC+RaPzLkONJlMZ9Iw1YdoIdNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMWyhv++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMWyhv++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D731C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768674233;
	bh=bDshb001+qWn+Ha/slGNcpkbFEhEF9f/mPPQMYm0eiw=;
	h=To:Subject:From:Date:From;
	b=MMWyhv++SNjA5d1xB2Rbf72h6j/rMe+cypmQKbRotAFXaZM+ugUDahtiDs8NpVwg4
	 e/rbsTUVZbveqwqk4NbBiKn5goNCdqlr8UHo2gD50+0uz1pIwzwmY+R3lOgkSfu9cr
	 PNKVzKQXDZdtUPqM+6+MCsToybwa/h28IV+ApIiRmph7JJKHwvAlvgjMofs/qwYgAw
	 H422hRS/xkt9AkUaCjOcjR6TOaydwX2in/b9FYfs8MTMBKGd1HXxUn/62GNMCzIOFD
	 BpPUjmFHxlrXPLEpTkMGKHx4hh6ZwivVlxDdOO2MJohci0nrq6i6wdIGvAiQSAJTGl
	 M/EsAv2mbYnug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC75C9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867423357.6216.12965392892531849267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7b5454de12813b92e58b2e632ed67c683466add6504712b20f8716068175db
Date: Sat, 17 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768674233
