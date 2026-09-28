Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5004F85B3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790632234; cv=none; b=oE7z1z6lzdp4bq8N+HcfeQBv2oY+sMBu6/mWDrX+mupMncLVd6f+OZtiZJqBsKA36U2qX6sRy2EpdaS8fyQbj7kl1+UnpQrDGB2/8EWIS40bqPp5FuK+Mfv3L1vkrNvPVLf7GddT4DLw8AIhW1Hn/rnLZOEVv4tONNmyxCUvMsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790632234; c=relaxed/simple;
	bh=7+9++sJ7OctaYtKk3RLpJVHYNhJw0n7vaU3PHMs4YAE=;
	h=To:Subject:From:Message-Id:Date; b=RoF9ToKTVirQHQ/1l6hRsvprYVUeJu5gaWVorjrbFGNjvWnLL5w/WpZ8U3yNJk5gAdkn6lgMIqhKymeRq42j7fmUUtPaaKfPgRNlP+Lb9bdQvvrGVcoHxg4W1RCkDSRbYgTlBNnnBFkchdaCMIkE5uVCnSu5DGo9Z6ckR60bLXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGIVi4qG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGIVi4qG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C87C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790632233;
	bh=7+9++sJ7OctaYtKk3RLpJVHYNhJw0n7vaU3PHMs4YAE=;
	h=To:Subject:From:Date:From;
	b=LGIVi4qGbeu9tKyat3G7pz19o2IJrIgY6Yy9az3UwZefKlKoe296MqT4JMDL8n7vd
	 pzPkUnFisPPaRWP2zYlFtZvV0Afo6zlJGjipaJSfPPh9D60u6c7AmWKn7HIec0lDvn
	 YETws4YzpI9RzbLvBqDP90cE/UHUcYwqxE8iUkvGAdzuio+qHMUD4ovnUSBJa2yVpq
	 dTCIIUlWURSCGjrfHeTcO0hfl5x3UN3F9lqtdsKBP6JS5zY1HeOeBqIb+fmBcLlXXT
	 +6ZMVKHNHVMmaVdn+nymI1bTwtahvHWV/TE0KpYc0HNo92hDWPcidu4/aV5EG1VqKN
	 kdX2dhSTFtADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDACA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063223370.27098.15082680480861466101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a910a69a6449867e658acaf96939d60d21f13d9b232f27922cc19cead1742e
Date: Mon, 28 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790632233
