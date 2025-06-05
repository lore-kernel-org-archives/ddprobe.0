Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCCC36D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749082193; cv=none; b=fGg33Q+fAJE0GFHxmgXqDR+ogr5fQoLhvWZ+gTkDR09lxs9Umpe6CdTuuCSzZRMFOLrs0xOIh2w4nGEv55ttJRVCkJLFyCeMRUAyPTcEaoCPzsrdpXhctrGXef+hCozHGeovia0CJt/0gWzHGtq5L1kUemzpmKUnmh0k/XqUdQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749082193; c=relaxed/simple;
	bh=SiAui0kDUUNjRa4p/py4DrUR3xKfGScrfAxcMWTrruQ=;
	h=To:Subject:From:Message-Id:Date; b=P0pfHwvbPk6GCsotJh6BY/fJumFAzmMQE8nhZP7foRrpXxT385tbsD3vj/jFmek7g490nA3wQ6kCvlQ4sXyqDsMGNNnv+n3cVBH1xu1sTtfHgXeTu6ULVuzwGuLEkhkojLruA7h690XfqjlsCVdTaRRlfHEV5iiAIXtMtMLt3+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHPhnSPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHPhnSPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8498C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749082193;
	bh=SiAui0kDUUNjRa4p/py4DrUR3xKfGScrfAxcMWTrruQ=;
	h=To:Subject:From:Date:From;
	b=PHPhnSPN7of0O/GMj6dLRhGZmYr/ub7zxkTKpSCyslWQ633XF7PjnCaDoaCf5PcX6
	 C48qUUDgCMQ0+ZehSFXsdszGfTExGhmOd24BBU+pKCfli0CEPNVpShX63m7xz74nW9
	 oB6DHsDfneDbKmfeDFx25VBb5kVIrkO4vHP4u4W41v+OgXkHzKfkRo7vf0fJ9yfOEF
	 qPQTlAnwzpr3hDR7Unr4zvFjkX3/womXZOf7CohAXtypWZiRH6yXM8dhNSYh7zvjT0
	 8qHbB3yqiH5hFBMHft5pKByees15jhSKN61oSL/R0OfgWnnBDRt+VhX2TI+5tShhJK
	 bMjXHiGFN8+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92872C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908219358.25670.14868658439504010881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a8c431bc57bf35e85e7448d9c20298994d54fabad9ca77267a32847fadaf9e
Date: Thu, 05 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749082193
