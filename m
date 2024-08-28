Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C694962E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724837154; cv=none; b=oqWvgjdwm0qnGdEQpiJMsKLo1FH9e0TQAIrT7LiB0ez97AWnwI8zMArVmy6nDXNwTzBs1ECBPWHbGw9Lb//eAwMSjpSEs+ZxcUJf4AhroPRqIy+PB5E0eEm1RFmM+b6JHyLsPCVzH8DJrFTwp6gqJDcj51fyRmX7T7mIp8G8KQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724837154; c=relaxed/simple;
	bh=jsppotQ1K9QV8G8LZcOYbFVdr3oQ/uqjXvl+m9lymME=;
	h=To:Subject:From:Message-Id:Date; b=i0yBXS4875a8x2aF4UM7jgkxFbBtaLlF/Luydn4opivEC7UzmBNN1CNNdgfQ8hPMFBvs7ys1paI6DFlCARLX1lw9sXKUtjNPMn/0U6HvsvyjVHtMPnUZxEnRZ1EPiWtdEiG6a0WT7b205383mcjtiXJMWU9Z0P6PJJ7+gn5cPB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO66amAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO66amAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D9FC90DE7
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724837153;
	bh=jsppotQ1K9QV8G8LZcOYbFVdr3oQ/uqjXvl+m9lymME=;
	h=To:Subject:From:Date:From;
	b=vO66amAMQunDy1z7l6NlhEwRTPcalB27ME8FfvpIztpJAvCwGiB1u4zkKCtNLAPkg
	 Mo7eGJsMezG9F8+CGK+h2umCKNarHOb5Gvfm0OZUm1s3HzQTx57vOBlmmaj2i913M5
	 xDcpiX1t1rRiFPlxXReK/WfBsqRVjJj4COVZiXjjvtuMkEjgTk5Zrn/XG46TF2zIPp
	 YlPgsCdgbwTRYRDFhO9babbmBh8giMIpH64hZ0XUzsRybKjACA4sP6uAC1StjyJ+OF
	 9I+e5XzkyqUlTbtTxSGr+Bi7PWGfE+/5i8ZA2diNS5P+20NMm4wRkYm3/nOnwpjXYS
	 AdVDKee4OuQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF85C54757
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483715362.11701.16849984169683015243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40350f8ded468b03b286e1449e0f81c517cc5e7f394abe35da6b8cd619bfb2d
Date: Wed, 28 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724837153
