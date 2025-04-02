Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48085EAF6
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743555595; cv=none; b=iqNJt+6M/Q2QUncFjkwgVxLxAXpsGr1WvcmwIedpHyI6f2z2RixAyWWy3UNzeZ0e1IeOsTrvRPbEP0xTcaBjbUNvqdvAM0Kp1MkAjZa9yWCLlFiDqlRW5guqtANkAdFf5W2rQg4tgXcXamWjnzML8QVOTHxGMafmrqndTwX5cLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743555595; c=relaxed/simple;
	bh=T5CHxtpfRF9GpKVvNVGif6BkcXCDQ2vv5Twysd1lYu4=;
	h=To:Subject:From:Message-Id:Date; b=DoRxIQOEbpn2JbZHTl9Ptw9P5exxrps9u4E3NUWXUwGLrGEK43iIqfknyAcAGNpeFHENivRgcdrk/6scinojqbZUi6d4kac3tae5e7KozBdkAnamTsIlIQSu/6WFL0tIH4H7u5cpZOpbT0Me/h9TcvbHT2ETHU1imgCHH7jdPvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liHZxwB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liHZxwB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAD1C4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743555593;
	bh=T5CHxtpfRF9GpKVvNVGif6BkcXCDQ2vv5Twysd1lYu4=;
	h=To:Subject:From:Date:From;
	b=liHZxwB5J2m4uaw977cIVB6p7DUeGPrn8k6ZDxQe75PCYpc1C4EPEzy4D4T/zbNoD
	 dZ8qk+GYnlNIyG358ecqRQaG/8ynuBYuOgJ+fuk07TJSaQRpPbjHzJa8KQ5p55mdPj
	 i3OQktxamzat8jkHsCZz8W8uDwvPZV0Y9a/RiSRtuMCPB7hcGmNPBp1RlPeQ/CTVnt
	 T4/A3UyG6eoww3lvKlksamznK2iiP7RwOIB8W0CaT44xe/FB0bdPPxqOrgnuWJ6lll
	 B8I5sUvosLnUGtPuif8bq4ZoI53766APnW1i0MR/MHQqcC1N+AwyLrJh32Mu2I2nfT
	 VDZPrb5DVt4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F90EC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355559363.6345.12356078302362140759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78be483946010618620cc56ba05f39db90ec07faeb22be5f696f740b7cb2de23
Date: Wed, 02 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743555593
