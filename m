Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D86B819
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720225523; cv=none; b=clcjRIY3X8PkAL/9M4qdG6nj3KW19HRNq5MqImWQrohRXSD8Mskp3zLLk/pMmdkEU3DSFhkedYtqAcBYUNd3I1qcQvLDxc2XC83XYZ803O6qAmS+D8LlrP21eJG9Q2EZvjUSuvr6YJt7p+1FeUzQrYvRFz92BkNmRQSATdkZiJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720225523; c=relaxed/simple;
	bh=diF1gWoJhIOMnxZPhi312OoaB3avuXnqtwld0oD4Tuo=;
	h=To:Subject:From:Message-Id:Date; b=LZwSq69P8g1yNnVwIoj0m3qsB1w+F1dvn8uVvfomeQZez8vzqzeVHln4QrxBDCMpXRif7MQrh+v2VjrxpvR6E/t0y85QMj/bVyPnXZp9Qu5YQgrznBEfwDp6N2nCzlTKxj17nHt/ydlAv3cO9SNDp3+esJsKEG4/c3GMSdwoFlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nog1GAtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nog1GAtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7ABC116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720225522;
	bh=diF1gWoJhIOMnxZPhi312OoaB3avuXnqtwld0oD4Tuo=;
	h=To:Subject:From:Date:From;
	b=Nog1GAtY8b/ikgM9aImFVa/2VclfPMmrjgU7XhQ1jQwHG1OkEbbbiaeKJQMRCkc4t
	 6as5i2OOeKW009GIbI5n6yDHGtDHXPbIl2i9PcoyYBWh1r6NoJw/eVbk9I4ao54rTR
	 RLr2WTboK1Gpfazsk9HdCqMqt92Wou3oAe2P18GaKHqIRiLAfDwLIBDTi0NabSTQ97
	 RJrfPkbLNwa7xUoKV8zztIQkRbA7cSeYRmIP/PTryzlaUnSCSHTfhIqdiuz4IpnT/E
	 IpnC187L2DxtOO/U2kKDvu1CtetcShvmcP92tdp0lnXuIIPTrDSo1ITVaUO9Y/k4jN
	 Mne282Rj1Xb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA463C3814E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022552281.18434.1374709967976163371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c3e12c775141504c262ec28438a305ec3c2e5ab3c585a39c1711b7442a12ee
Date: Sat, 06 Jul 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720225522
