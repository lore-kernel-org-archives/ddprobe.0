Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F43A5429
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787010034; cv=none; b=UWnHmtt/Ly0Y0LIs4+3vend8yEQTBGzIucMKw+OjVkFLiOcjzM80c+Ya5TMO1F9bW5jitGNcbzF5uvo9kRuGQQPRmWcMvR9Yt81aBeUGChSVo0YydMiWgrLyz+aLfx0nFplqF6HYAlltw+HJwzJeHa0QWj3VqU9UfDFnERivQ/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787010034; c=relaxed/simple;
	bh=S+nlnbCTWW/V3BMgRuU7Tt6inigO2+IjoqmF7xvrQHQ=;
	h=To:Subject:From:Message-Id:Date; b=ki9EdrqJnO6TVbwrKD5TGihuEbhdUuLCzpPbWuTxmfHyRpockH08siU/6PPlpMeHHWYahFdpN/53/RSLI/nKR5lED2ZUaLdNsKazliVaHD30bVX5ZRHqx5oIHlRWCAvOMyeu/m/H+c77HXFYicggG/wM87KIwjl23xxRab7WxFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGpSijED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGpSijED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F46C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787010033;
	bh=S+nlnbCTWW/V3BMgRuU7Tt6inigO2+IjoqmF7xvrQHQ=;
	h=To:Subject:From:Date:From;
	b=FGpSijEDw1GcOmZTW51BiH3AAHbj5aNVphB/KilFfpohiIo8knj08mOP0Y423UZlD
	 Jh4wV+0LB4N8kIPCm8NdyRVMjoAejKXcQJM55uNT8/0eIAhylO9Xz7bNDvJHIHYGN7
	 aqvYExkuQGBpZYWybfiZDgyOjQtglRKa8qg7ryCJOd9gK9A8oD4cBpYHdTSHo5dOXs
	 ISzAOkq3hmD36CzOW/BfeLyE4Fg6qrGHWDUCIPN37CliRxvncZjJEl4zEXi9+rK/hy
	 p2xDwu4nS3HRfQ/U1Uh24zD9Ytvidb6SXFx/d+/6JXUNS+rsBnJlD3duE6VnroMBSg
	 h/MdRsdVQqq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD133C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701003368.29263.11061720093190864117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e790638db09dd77787ebf554f4966b0074a8a5914eda1734fb13d1758ecac971
Date: Mon, 17 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787010033
