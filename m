Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C962F0C78
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757345394; cv=none; b=gquzWDzk5buIefOXZbM34yH5mf4Gvm6ez3modIsEWYpHPR5vKtSfAz5xKGhAryg6pD+ejJhKi2uDuDtAfqakSHo2O/cMWuFl/LAY8xVd22rsdvX896IEew9spO1Kcmu5fklVao+hLKxy0ectGV6pmz5eE5Drlr1iJM1GBzKW7Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757345394; c=relaxed/simple;
	bh=IxXHDM4z7l8kihPu+4ei9vSXNZRPTznFJMdKb91ozkk=;
	h=To:Subject:From:Message-Id:Date; b=qKU8J3UkMdUUKNA56zb1nbI8tKDKtTVz6O/CYdD4XTk9gCC8+uby5i+Rgr8nco5sL7Ub9ylwano4i0RgRCJQjLxyps/rOgkrKqc/EKbIBT2qrcf9hey5RNGnNHvu9TaM+cuyk8hDI7UW8tCb0fC6qqvrO3YUCx1ZDTfxJvwq4uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwQowaC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwQowaC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B10C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757345393;
	bh=IxXHDM4z7l8kihPu+4ei9vSXNZRPTznFJMdKb91ozkk=;
	h=To:Subject:From:Date:From;
	b=MwQowaC5tG5u9BoBa1PlubIhb1bqiDilCbHZYCWaFtZhipL+F0NpAKPOY5On9fBLg
	 bs+Jv9DT6iI9QZC4HXkV3QuhUD5O8hv6feQh/oDBYcnPnli+UHj+IHtxlZ/SjwwuBe
	 1OoLlVKw1BZRzCfzZ6ClDriLX0f5RmhJUeVZHCB1vLI5R9I2HjlSBc4HtHavzX3B7c
	 ZEoUdCQgGD/bSBPq6zAmHokHEIKQKkVqkKd1gpGAfZTELEFpB5FcACeVesX/a69YcD
	 JgyOdu7SzX472sGbAWC8xQUBwgNIHKqavV2BZuTisekkai+jK7/Uf2aElTZKI2+JFN
	 w+oMPbOzv5RGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE1CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734539358.23830.13774741661206336410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4750f9869d3be78968c45f3739712bcb529d894f7b98b2920d43d37aaed3e9
Date: Mon, 08 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757345393
