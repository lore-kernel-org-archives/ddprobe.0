Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C7463CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790383834; cv=none; b=QWC5T6W4DGvSu1CNP7ovxmS3moT0ddJe8fAVWeKRbtFfLxItnTk18xKtuTi0gjoS1r6BTcabb3WeRPT7B/x9kMBmT+Zi06k191iDI2lmyypAqm3jQpSBJv4sVe1F45I3SH8i/IqSEd1uOJF18dBk2KS7QKYF9HMzRARA/jh98N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790383834; c=relaxed/simple;
	bh=7KAfk1WQ1GwoaxlVZWmBowDFdN2A8aCFa9WAuknyniU=;
	h=To:Subject:From:Message-Id:Date; b=ogJA2a4VfYvnySQwGNMru1P+SwQNz+CD4ZAw8RIBRAlSSkwepy5sippacpe4kc7kFbkDopup5Hn8BlizOik1KuUqN3jEQyhmZVsiEFBWK9If0DjjNNGUAcHGmBGyBtFojvEp0IS0sgycNHZ2OqCx3I9lujW9jbcTolN9x5N2OAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzlLO/5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzlLO/5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CE6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790383833;
	bh=7KAfk1WQ1GwoaxlVZWmBowDFdN2A8aCFa9WAuknyniU=;
	h=To:Subject:From:Date:From;
	b=CzlLO/5SngU9mCmey6wLSUxRO92pyudBosOfM1jU1EWdeCw8/xYjc/57K93vb1dZ5
	 k+uD5bJsmxbu4GUF3JJpP9zI5rGMwk+ouaVKFAP753OhueEv9m7Gi9AhezyMYDtgS6
	 c0TS3/kTdPavK7fPHdBxah4U/r7cAUXkjr3fQtBMz7pWS/X4dZ22tEF62SsMYbxKOC
	 gL+eqdmo7nAZnaRLHVEyu/9W7pFYXzd4hIEVlqjj8PySNPl3uJaePAwu+T0ryI9eOO
	 q1Nv2gN5rtsyasO4jL2nMlqROL4cdZT3uHlcd7vbZ0XU8vOOQs7heLfNFymcXkX4f9
	 dLH/PWHfcRxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2980C9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038383369.13993.5133371620710750512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c614599db04118093fb2650be2e2108070d8a9fde69290f128ae63cfc2ec2f8
Date: Sat, 26 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790383833
