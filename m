Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB13BB48
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745728795; cv=none; b=Frb+7E50hYF+wkbRFPO3H201wO+W+CWJCZmJ6gkhKjWsg+iTL1ibido7WRgkiNMS6iFX1XUPc4nrl6UEjCSPFbAej32pvGWPIImxaSNTnCLqA7v/txFhoig/8bMdfPPNnQ2lBW3osCpOt9NDxd+VysabCaMRf9jp2eZ33bIhYOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745728795; c=relaxed/simple;
	bh=O8QOMeSFjpgMKw8Vh6gIx/lUPxiEUupn5pLWKqUMASM=;
	h=To:Subject:From:Message-Id:Date; b=JnArxDrrHgeayhnjHK5KVpfxJvQYBMaNPkwy7HUYNKBs9hBNzZQeSpuJbDxqj6OrdWwFZqslEd7SQnN49WZ3MjgrjyjmxhjP2qG8xRPrSl3DruoidnRztDe6kWvmjqFTtc9pWXzGTn8pLlKicmSqxXGoCDGYTqZI5igfHW6pCbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVAJYSU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVAJYSU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F903C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745728793;
	bh=O8QOMeSFjpgMKw8Vh6gIx/lUPxiEUupn5pLWKqUMASM=;
	h=To:Subject:From:Date:From;
	b=SVAJYSU/bHTMOUrWvO3/wPVGEttQ0cQp5b9rNMEvLsqDHH9rnGtQFCbOtK6BBEEST
	 MBiUNL9XgEdJx7BmOTHmgGy1u/lQWe7Eshb6HQTSDgcH/CFDoQeeN8rkeQ+Qva5U7Z
	 B4sCL00opVuyGnnl0RsWFO5Iq7G/sObT5V1MnqwfH7+bS95XIpHKjTkLCvXHnbHjqr
	 QKU75cusOlpQlB7LDP0b0IdJhvkRaDjT0/Pk+acOchSTvACDWdMrhf6uKihEoGrxLz
	 okLXEis63kfLI2+pN0NpDSscerDp5wkfDzIC15B2VjM5F/U41vmzf8LmBfLwZrLUYd
	 mqJgEmPG1M1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC56C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572879357.9273.13992920821348839783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced61aaccc5bc81cc3d545261e9e4deef9aa2d4da2026fa128ba7c1dd2cef8c9
Date: Sun, 27 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745728793
