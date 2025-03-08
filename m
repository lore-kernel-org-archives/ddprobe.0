Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E7717C77
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741475934; cv=none; b=E1bWtpoSLmeXrSoDxX7kLG7xxlXs4UQIEBFTbqy6kR/ho+eVVS6sY/YdgN3ASgNMDO/cacgfRiVW3I0nG6m6b6cW06vKPm4TD/g9Adq/ar+uJjiGc6R3ISB6v3Gc9gT5Ugd2CIcvADZuJOoDtgaB7eXR88l5O/qZFOHguUoTX3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741475934; c=relaxed/simple;
	bh=hQRRxL1gf6Jo98LgdKfnlHYDIcT4MKnYj+tVVs8poBI=;
	h=To:Subject:From:Message-Id:Date; b=TH5P9lII5lDChGlDturF1FD3WMNhx//osG84/SMdxqf0rC8ZP7pJn19s3MtIxcI3eBvsgKy3KZOF0D5Fl8LT5+phJlOfMWb0QynuJiGsDSIRfuTNm0J+z7C115HuirHPHHngZuNiuoVt81hLqfqDnKweS6jTbn1EAZ66Vvbm0ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPilgSHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPilgSHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E0C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741475933;
	bh=hQRRxL1gf6Jo98LgdKfnlHYDIcT4MKnYj+tVVs8poBI=;
	h=To:Subject:From:Date:From;
	b=WPilgSHTBTMHFdqnDqor7yNpD854g7wW7+77+8AWku+SjyoaLSpqQ3dXI2KkeGa9n
	 q1RUNNhHl/QJc0ZYZobF1QyrFZd4mHQZSi0wYqS23PaHbuXEA6FLhsndtJshIjxLI7
	 loPxoNgZ7Bow/nBRVrWCLRtFI1gu0f6CK4L8gxzlhAcOgMz4ycCQYg7tbhPingt8yz
	 EHUJXYCLyJYc/nbiatnfO1m0fWigdtbDZfQy/1bA05TWJF04Lyj3G01e7z2GfXBqBz
	 iGoq0Q6GADgyk7TMLooscbtB/I/70jElywN524aeoQnnTXbpMlbAsFnr26eaE536aR
	 izLxKzBkztguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147593358.1453.14889430951252350854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caebe5aa8915e7bb5876cc7df30a8561d5e19ee8a3e456ad78204593339ed57f
Date: Sat, 08 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741475933
