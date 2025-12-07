Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381581CD2C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765114374; cv=none; b=H7t5KJALOGNA/0Rtiu8iaJMM94dGPcq7QILMvMTCen7kA0dMFOpoO75dvX4IROPqIm5B0rrnaz/8tkgoFkxGbzos//0Rpd+7UG4T71G7HfYcC3y55Da4ymWmCBUc5lAKMcwK0VL2qw/Nvmc8qQAimz5Qq+h+sm/II5r1+aONL7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765114374; c=relaxed/simple;
	bh=EY+IvBLht1zcat94raZk8Taehcb8D97KlA8q3AiBGa8=;
	h=To:Subject:From:Message-Id:Date; b=oOX0y336BSHSGBy4a5QLXjc8lOZKpPaLf6f0zt0N89n7x5eCTx5cCsTFcJS+Wc2AtC1RQUSa+/oSmX9v2dmDVjc++WMw7wHrvdLqNu9gK7VaZp0/tKsNAiYUH8XiwOd8kZxDqoaDG3c2RNCWQrcoRmyqNZwpG7I4mtj/AqnsLtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=md3PNktI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="md3PNktI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C42C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765114373;
	bh=EY+IvBLht1zcat94raZk8Taehcb8D97KlA8q3AiBGa8=;
	h=To:Subject:From:Date:From;
	b=md3PNktIolzO+FrWoamsGGe/MNzInmisLzFAJMZiKLxvx+a8brqzJLJQXGzwH3K7x
	 m5ZiVIo0zEoWpxrSWOgx+XxTC4lZkwZI2U6D7jePN3N7bfG4+eWa0BCPXRbgsfhkQI
	 TmzzvAIDqn5mzeGkVvhEjN3a8PMVA2a5TS1XPD1D4C1+bNCl+ROrnbkZpX1Im9ZPiv
	 RfWmbuZlJA8nZlIJQ6O1NYBhwEgq+XmedO/6lG+Am7HGXRs2VqTgtUF8qE0XFoBxn3
	 X/OvfIXealR1QCbrEW+z4vAxrv0OCgv9Hju7Nyx2pyi5IzYaR0Ok7H3q9Dosbwna4X
	 sGsWh9Dex9t7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96456D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511437358.29828.17035358406182966893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b60137a41d2f5e6abd79cf16d8dc17108d93360f37167372d557516cafe970
Date: Sun, 07 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765114373
