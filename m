Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5437A155316
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719387803; cv=none; b=j1hdiSna+o/Zg/D9H4CPhMUHiQbLYePvW4u+roZqg6A9rh9Qc/zo8WjIgOjhKY7pQSnRYy+9qNeM7ZM61J3/4sV9bwWDBYnJFfnHdIj6AMLNML5L2WEEepiiUvTSn6NTqyK++YnyWvhklm7OcoeoCkyzZi3hzEIS+nikPSIJz9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719387803; c=relaxed/simple;
	bh=R4t7Qcy3qvguksM7QGPLrbzYYUF9YbcrHCHAjhwMdd4=;
	h=To:Subject:From:Message-Id:Date; b=d7JxOQrwtyWiApIKdi4tj8VuouBrCJ4pokUyW0922NAoK+OXBoQyTU/w74tpffeATMrUcyWvntRzCvnEa7eeI//mtKhcXlQVxmS5J4/DbFoa+AsEFF8lsutE5FrS+hh5+H8N+HslNYRSntujPkvdjw/PYUVEbF8OFT4gh/OlNS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHRCDRaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHRCDRaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0310C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719387802;
	bh=R4t7Qcy3qvguksM7QGPLrbzYYUF9YbcrHCHAjhwMdd4=;
	h=To:Subject:From:Date:From;
	b=AHRCDRawAqF8vc1suI1BvyjBEtPIHPAQsqAHBWt1UXyDWw7TliLSHD3Mc1Eb4/MLl
	 Lzzc54I55LkAiQoUMdsS79Jv6OUnNgIF1urkhiNYRgBEw46BOB5e9a8ubZg8HzYapu
	 jUPH6GoT7cj5a2e6gqT8PzrXaLtsGA3Cv72hNlGsqHdFoaq9REogk79NNL6AAK9y/i
	 bEsq5bSwp3CyZlWSLQ/fmdeQnbe2dW1gu2hUiNBJWWNPzj1PMQB/cFh+RV3kT2JckE
	 F0juJtcwjQNStUYKConvL+lvJuCG4o9sl2qkCisor6LN6gdRohJhRdfmZ3VNacQf8N
	 msBKYL/hhkIUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C042CC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938780277.5482.9140986340347895390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4aad77de1eaa4cd57fd3e435a5b5f872c9948cfc336659d70a1c9155ccdf800
Date: Wed, 26 Jun 2024 07:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719387802
