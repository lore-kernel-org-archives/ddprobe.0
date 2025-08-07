Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D0C2AD32
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754552394; cv=none; b=dsyaM2EAcoTABzkmmC04BQNNDvU0S94pXwS6Ixb7DuJU6kXt60jRRLJD72l3W8lKeDewjwZf870HuyBqF9TOp4cE3LyyrQm4OsbQ1JnOp934I6K/sfUzJJyTZFEtbbejGflJ7N7a2rI7dmEYQOQXsoLHpwIbA63DjSF/C2eEgIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754552394; c=relaxed/simple;
	bh=YVfvnrolYzHFxlX0RovD2t4tL//To81U6aA2mqmbs1c=;
	h=To:Subject:From:Message-Id:Date; b=Lz8dnGqO9ZMQnjgZkkesNByZGCA8WSSL9wtDjiv89GfHFTG1QaG1rvghOyYSQwxiiVfCiR4Qi47Tnjbd1h+dnGInUAd+b0UGO8BZcvbKul9LWgmT8ZXRr2yoXv0yhvaVgv22vnsy5Cf0HAtH19eWDkiH9E1NuUktcjcfUZxBHY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLXHYj7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLXHYj7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754552393;
	bh=YVfvnrolYzHFxlX0RovD2t4tL//To81U6aA2mqmbs1c=;
	h=To:Subject:From:Date:From;
	b=XLXHYj7PDAHNxOA65NHaPGb5m0nhozXoLJGcxX9amaU3HgIeTGIRAKnie7Jh6Do9l
	 LYtZgyVI5ZdpiXpcsHsqe53RZ3VD4XxD8yJ2dDIalt6LiX+TlVTVP0WgFj7GYwPgXn
	 8nZZGIhmKcud2dm9zYC0Wl6MDQDenksr2T83eyrpsDsZ4gjP8urfb7ubpUITneHWZR
	 NQzO8AkBHMw0wn+NzjEoUiaeha3WCpa/ln/OQcu2+PYsIPE867QP+vO7Bz0Vs20X+6
	 mGJkIMLeHiyeNR8QACjq4PjKpCa6mJ4adKhcf0GSZ9llOBnsvIcR7flRAFS9eeyubz
	 WULM4vzRpVg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF15C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455239358.19479.16153788169054181327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee8743678866bcbc5ba31ccbae1aa6ec12b1f2d47323a55381526158b2207fb
Date: Thu, 07 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754552393
