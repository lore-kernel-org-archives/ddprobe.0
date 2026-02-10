Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063114A0BC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731634; cv=none; b=pg1QtCGxpCI7QFyNFwXuW1feqCy59/slf8dXQKk5KgqPhejVyh8RwnOiDfBpyTE8+zNbKRkrmgXC+K9QkYA9R1K/VTB81AdfcmK0Ey7RI6/26MvRoDShNsIbeSkJ9AwrQr9Nq/a6rCkM5mWfT3B2OxXRJF/iZ+W7jZ9RvdEorGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731634; c=relaxed/simple;
	bh=ABNYZfRmXrjVdSWm/nriJez0CYCaSoPLR3spoR76Jwc=;
	h=To:Subject:From:Message-Id:Date; b=LQ/1XhIKXyVnb8n3MK7DSeOEnx1dAsLRZVuGGAdT7kntkJjihp41ACB37YrHkF5yweuYgiKG5qwTNWpLIJ4PqnVzQ+ZKAKkmo3sB7eVjUpynXPKuJlp4QfIbeqKUJaJhf+GI2ncExFPpW21NizKtRX8gW840mXEIE39mhpeFb7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJm6b9V8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJm6b9V8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8912C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770731633;
	bh=ABNYZfRmXrjVdSWm/nriJez0CYCaSoPLR3spoR76Jwc=;
	h=To:Subject:From:Date:From;
	b=YJm6b9V87igCo9qC6YGAcNv4jPetr71/+ILT2Z5iwnOSIGVzE5iOC8/L4u7Yz1xMr
	 aht9yTFQ1Xq3PzxscEBdHsB5z62HZpxj2opPaPBepWmFFDx7chKQIXqTDfftSYmZxD
	 W4PXAytL3gxnPcVCBt89zpX7c10ykS/W8Z5HQ3piOwzapHA7+rjwvO5P7PWzfxGmX9
	 qUiITKWU0P3r6OpHSpNxCJc0obKgfq7QQiE/Mhp4NDqhmCm9XRQJLAIudbwnwiUOTF
	 OeujUW39aqfAzEe/bkImuCOZ/FyY4QtScOdRnax1dhvXwEij0E5YRRq8VtduYB447G
	 pFyyqtL3B1+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94693EA8118
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073163359.19869.5959778166317167090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4859c4bb69175e4b6c0bdeb636223c6777f146f596dc3115a22ecc7c9de03b05
Date: Tue, 10 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770731633
