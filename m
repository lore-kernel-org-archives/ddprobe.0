Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450C036654F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791700234; cv=none; b=TN8gpvhV5p1Yfoa8muoMz1SYisYNvsEotK/yXOsf7tCd6bw6muyGrjngC35mdiqMyRqqeGU6w+rCnoFF5Xje7KafL/Zat7WSET+fBfEuOg3kKYiukl46t+V5UQsvLjT6UjUAH5gRJN7fjajMJ8pjZPTGBM/u+erSF+uTprXE1BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791700234; c=relaxed/simple;
	bh=2TN8BVLufV7e2o0MKaWeW3i2k4RNTvESIdIyG79RwuU=;
	h=To:Subject:From:Message-Id:Date; b=YHO/XXX42LUWu16tNBFLUzqvZ2Rp63XVFyKcn/+IiWdoenrq9+TYZgJCiLdxj6V8wnQudgEiMeqR92z2XyWmqB4pSNyVaBL4yUW1NzfbsQO5JRFtjUVYEZMWr3gac/Ad5/MleNrIYSNkacNZEtJmcLux2uftQltD6c0TXyIdZe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgsgHsMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgsgHsMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6DEC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791700233;
	bh=2TN8BVLufV7e2o0MKaWeW3i2k4RNTvESIdIyG79RwuU=;
	h=To:Subject:From:Date:From;
	b=dgsgHsMn1s0aFD9z20hFFDs/NmlTpix9B7Ksm8ndAbDQbG/vpaYLxUcuZyudn/x5X
	 X1GMcf5J5Hkco1hFHYQeQU3bjST3DKka5TSPE1XkzwTTjHEc9hzzlZNLwcNsusFG1i
	 GJv4KXZbeXRSWbGrgy86YFfznpS38j1/mWzCjnmmlck1YEgV9jRJD1rXtBhCFisXov
	 H9++eVu6QR3JbORzz1JPhec8VgzgTtHtSL4DXoxSkQhoxcUhiHrAvymVIDDX0PHpTi
	 8u+GMu1nRIEesFAsuNdV5g8qUsGqZkRI57Cw6sHzkcorpTP7LhAevalfWXMsq02c1C
	 02tvzz99vPY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5CCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170023369.9099.3521460739160583359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d12ea2b52f8c814d37c3b768305e3b9e146c512e309bc44e9b6475968061775
Date: Sun, 11 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791700233
