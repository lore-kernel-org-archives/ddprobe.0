Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E3127E04C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762252794; cv=none; b=Xe/laQU2NcSb2LRjahEBxON8WLJP02IKIhqg/xkuvq5ZH5bhIuX4LVuxJ1UIyQhCztAItI6tWI6W1STkA97G/CQfXsQXsomF/Yu286+2AJN1hwIXiepiw+xXuanwvjPi6sYjn6VAWv2pZFkkJOAYS+2mRDNh1p9YU+V2hWPLX6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762252794; c=relaxed/simple;
	bh=+u1IGDNAnkESkjCO2IRhS1ISa739kLcC6ThEYbR3Cqk=;
	h=To:Subject:From:Message-Id:Date; b=QjnuFYJ5XThGm/QBjLdCkSKiyyAC5g3SkxsInmCxPr3GOdDaT48pDncaIQGKWJ92qwgxUCLqgyOs5U+ClKAGNqYXjjt49KYHPSc6XqUmlriP8dh2/80OO3CW5TGbnTbrfucshiMD9kZ5OjObWzMUkb62mwn3qP7CcmOV7DEloR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezPTr0cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezPTr0cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762252793;
	bh=+u1IGDNAnkESkjCO2IRhS1ISa739kLcC6ThEYbR3Cqk=;
	h=To:Subject:From:Date:From;
	b=ezPTr0cs11TvLahQ7jgOSB4Jk9Bstvr96OG8A4rWzcPWMP4BlZQY24GNa+A9lFk/c
	 NfPwubVeliUaanZWuXG1oBnZO7XaLML2IZNAkPyTUa2v7nxk+UcfOe8ujxlxJnDR3Q
	 HX4ckWA5l+Ej/7ZtAheQh5mW19kTTBJU7ZNOj4Sb1PjmScuJSHCnyfaysMraniXBuf
	 zBRfNwlSD9HguGli7Mv7wqPj+DJLAuqY8527t5Po05lDK9/ufNwyOks1X33VtE9FQ/
	 +zqTxRILdKxTKwS/gVHZoUvS2cfckuqKQAdDHFN44fvtnI1YbzAFOmKpjnpDvLPJf1
	 pWSgkmy8rWMFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D4CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225279358.6079.10995493293430618412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4da308a18335b38dcd18a8a1bc1236dce0faa0beafc2f4b5b4a87d7a86cb1e5
Date: Tue, 04 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762252793
