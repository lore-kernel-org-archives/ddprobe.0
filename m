Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F1417993
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762217393; cv=none; b=QdeHJ2xZLAizXKVIrXQjka2NhzfmCY7Kh7lJi53FFT0eFIZfozbr6RcEqMQagXlAgVNc/WbWzBpAhNJHPAyDXkj7DTD2u7ceSGtnLGKgQFaVDp8hSxKymF5XoqBoxDBQanVV8z+c6AcsUeJONe6pOtn8MiUv8YrScIw5A5VxCI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762217393; c=relaxed/simple;
	bh=i74YGAPllJtUWViKxHynQkDokbyib+p6gdq0YySAX94=;
	h=To:Subject:From:Message-Id:Date; b=sGZV2y4DtFTN3Lg1rRXXi0p6gNqH1KW/jE/F1xSH/EdQeKqfucs2ZKum5NcU5P3xzSD8n5P5NsIcAd7mLvk1iO1eWlAxYj8VoCJ4hO4h850OzUtcGgeuNMKa1t2483CJeu5UWzSfkiQoeCLJfd7cHvLoRuU4sxVC04Xzo8jc/o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOb46zJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOb46zJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EBDC4CEFD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762217393;
	bh=i74YGAPllJtUWViKxHynQkDokbyib+p6gdq0YySAX94=;
	h=To:Subject:From:Date:From;
	b=pOb46zJwSy8stwmssjueswkQuuVYgqBoj41FjF4O+O4pUN+GLfioie4Dziy6yRiKU
	 ZADmCHSDpExnOVU6z3I4UoCBO/92jOs00YufEiNW1GrrO9Rs5u1EIEPhPH9hmxX6CS
	 +RM0r3rhqufhvcWa0IsRKNYymeRfqS2m5WjM6yOvC6H1RDPtnjW/oHoEjw39oVi69f
	 7c0T+mbmjAJNPD2db9Qy653XKAjk/DffDiDKUO2y0gkav22xhvt7nmLnRfzYiS3GVI
	 gXo9QqgnL0Cv/z7C9Es26kpO6JyWu3RKToSPELkEg9O/nPbUc1rRdrEJx6Ag7fKCZS
	 qjsEG+ov/GQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8ECCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221739358.22615.7119325299168722331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4909425dd75f4081d7e9373bdffd1eb1ccdf8007633472f98f14e4d5362477
Date: Tue, 04 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762217393
