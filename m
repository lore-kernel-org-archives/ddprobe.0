Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA281DF732
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736192754; cv=none; b=mdUmQ75Kl8gwAbL2AwUA+XWLVy7g22/swtJKSqV+5XdgaWC+uTmygqXo/ZlVQjHtpaiGiYsWXltHr9pRdnDgllxP2/tDepclGIrG685a6ViK/DvL0cjYuzywO5Wrc6Z0psgx9dPqvHGVopQnse7RXmX79Ch1yiuvZq59z6W7Xfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736192754; c=relaxed/simple;
	bh=Pnnn92jLKp7gyr88BM7BRqXZthv4HpW7MtgLW37cGfc=;
	h=To:Subject:From:Message-Id:Date; b=XpVLCzw3Q65iCT3587tKRdnioTZ8lJtqTbUrRhFrMTASLRAZl1rw5ct+0BRCpHLNhtRmb/BwHDrWd8rXYna5Vm0lIHrLFu3/6KE99g+iUmPKaPclInzx4Zu4U7VLy4hDE1oQflSayIkQJ+kem8KqRS4emmUqJKQAjrIZ2wpJtfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/l7/TL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/l7/TL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D2DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736192753;
	bh=Pnnn92jLKp7gyr88BM7BRqXZthv4HpW7MtgLW37cGfc=;
	h=To:Subject:From:Date:From;
	b=P/l7/TL5Rugx0EcuPmLe9CemeBo+wAq2QQhj/KBPS2J41MHOz/7JwGqzf3U6hmRg+
	 8VTzqVhmOTUaaAAGZ015gLtV5mIn2mnoTl1oymBkdn/JLncA1rYQUF/56bIBnGvxGh
	 P1HEPVkoFpz+rZc82Cgar0SpgFAnrPxWwgQ4q5SgByB4riKhkygqpQX94NRFb+zo0K
	 fbJ4aTa+YQOjL5jsiFmsx6O+l6I4A72SUXGI5fuFkhNa0yvkCESE9MBzbQ0wQuGxOr
	 O3ibLVLZt6FyJ1Wp6jDKhe6oUenh02NOaPZeks7RwdF75QnElFJmeDbE4GBSB33cBb
	 pUiQXcXPDy2SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E884E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619275357.10814.8567243917538595939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045f5f29b205173e0227e78a62b3a170357657ec7d10f64d873cbabeacdf4697
Date: Mon, 06 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736192753
