Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292F933469C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764175374; cv=none; b=uoBHA7JEbSUuFvmD0Fu4zeSaftJcWRhWVd2dunU7VyMKjL5agl2YvO7Fa59blU8ruKNeAFCb6+H0Ho4Q+k4JYE6vfRzYAJ4TT57aR52ebUTi0TJwY/NOHi7OVAYSGcMoTDUezPBnAH69Yx5IqU6VtFjWmNoIHInimJ+cmofx87o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764175374; c=relaxed/simple;
	bh=8Ot8G4yOCy0NFaCxrfINd0Oo9pe4kE1ay5OkoJSjlTQ=;
	h=To:Subject:From:Message-Id:Date; b=V/jDrnYr9Ta70/6Dekgw9u8bRSnGvF8JQcdCYkUl8cQrO5PeNS4oS1MmbL/n1zmJfqQJhmi9mtOB/yt4q7MZ9F3PwAg4KgvxAR2G3vZWtaKrBBJYCJnv0Odn//NBKwAWOK6DO83ltLEzbElE1kMBNHozaRU1Bkh7m6LDJMq10iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYSdOVrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYSdOVrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61EEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764175373;
	bh=8Ot8G4yOCy0NFaCxrfINd0Oo9pe4kE1ay5OkoJSjlTQ=;
	h=To:Subject:From:Date:From;
	b=MYSdOVrl+Oi/9bQ/xmehg6GVOFu8JBQDCs+Mm/cIzmrqAeEOoNzAS/TRtobDvbg3E
	 UmY1TwbF7987Mz9kBWykkCyvaQMf0IWsJ8dA24RX3qkoH1wms7Bg2XE7tobZWYIR8Q
	 UGFZlD2oszWRN0z8IC1QIt6HSuPh3/Q1Ldvfqdh2JSsQHm/s58IuFDYkVHh8JAHxi4
	 VwKLb0pmQefbz8LtBXToy/ALJIBbeHzXbJM2fiYa/uLlCg3xXxbe7YnhWY2Tdx5I06
	 tCz7Hrd9E7G7pNuuKhqQHuZBkNgg/WpSMfDm4XVzIwMLlG+A7KlRgoKoP7nsZQ1N5y
	 cdz3XrWbprBfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CED11186
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417537359.3241.4299466030132918073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbd23527b3d05a3662a851e31f7b6eeb5c848f1ac287828cc93f5da5a966c6b
Date: Wed, 26 Nov 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764175373
