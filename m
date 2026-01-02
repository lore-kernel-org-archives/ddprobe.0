Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50176253958
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767396834; cv=none; b=iVMhsbzHWkivooJ+nMha+geq1ujnsJY9hG8DGHwIyWylc4vFycubGbT1HWseNP1diCrXiuCbJxC+fX4NWCOS000L2akLsPq8wH4ncKUwd80qXiboNaWe1Ekg6O7rY1ncjZCITlmDzw4OXGaq9Npt+kKRKLe8jXP8LW3itFWXE2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767396834; c=relaxed/simple;
	bh=7FKfZKsVRJKCj51ow7A6eCrLhY7f3NecV3PidfsIvjo=;
	h=To:Subject:From:Message-Id:Date; b=ALmF7N6jjj3rfnpOaunH/FUWVBkQ6HQs0y9+pEVW0wMAOjWPOiSZjmKYqEOeggVvx8Hfq1Yb93rKMYTNd6LjJymkPIVq+XPl6ZDxfk+L/htR7veI80vNN+/+giUmLKoNy7p3a+8zYXqVowOZHWicLisbOXTYG3LrfCId5InjNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpTljhB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpTljhB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091FC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767396833;
	bh=7FKfZKsVRJKCj51ow7A6eCrLhY7f3NecV3PidfsIvjo=;
	h=To:Subject:From:Date:From;
	b=tpTljhB3Xgkn9Vo4EqWtEVzmPlMW1yKySQ21br4oUubTP2rQDAtQ0/mrUVnhB9p9D
	 Ar5IOPSirKvccCoRrxWziNWfPhZ6Gu0KaEyCbx31jVqWFJUjB1F6r5h5JfrT0Y0NPN
	 cU+RGA4+QKPyGpMdaGPgZygr8jRT9fSzEIoLeY8zn+GruyM81e8mxKuCfVYjqxe/hf
	 Eq8L4mut9ytKTo//Alxs+3ea/wOr/LnmkVhC+mXRLfIv9Ub/qXS06SNdgSbXdl2v5F
	 8we4rUtDct0sQhJrzUpXH3Kit+UUtDgboKcJTtpao7lrht8jncqt5VPJGIQBgNZlTM
	 HZlqKqLna2VUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BAFC6165
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739683358.8854.7958737317509891220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c1c5f5d13019a9fd7742dc6bc1fdc6ba48f377a03d5336415478d88285e55a
Date: Fri, 02 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767396833
