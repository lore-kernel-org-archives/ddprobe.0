Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9F6146A6E
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715005943; cv=none; b=u8hsGTjbbD+J7KRctFniMBdQFpxKsu3hoPu2n2GNi0jmeAAmtw+Mhg7nLJ1h2G4jIHwvETc5+44Vry6WidIg8brs5GewIxeiP3j5nAUz1yHaafYUqVDKlf/IJga3zEEH7Z8M3BM2YJ9QuV+X1NHD2pR+KuPI8UdgEBJVzjl0Njk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715005943; c=relaxed/simple;
	bh=G+GTpeeao8OZu4AzDaSUlyFazHY2BDETUUFh7D5CqVc=;
	h=To:Subject:From:Message-Id:Date; b=ZwU4W9+SSirb9dNBRLYBXAES72CPb4M3V242UqF7ukeOJ0L16WwiOHg8x+DaHLAtg0Uu/ixmMKNIhjBG0rJQkSN0rFblqNGeh/rK/xPV7fxbu9D7g9vzzxyJD1B5nPEnoGU7MBksspg0PHfAk+pb/k0DbrPM2OzxVt0Ivcz9ARo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZJKUtzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZJKUtzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9565C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715005942;
	bh=G+GTpeeao8OZu4AzDaSUlyFazHY2BDETUUFh7D5CqVc=;
	h=To:Subject:From:Date:From;
	b=SZJKUtzO1xWgDRQrS5fGSqP6M27avZ6mBZNzPQH9ew3MimgVm6GNOK4tPkwf2vf+O
	 OKO75WCK0yxhrdUquz8gXF3Jl7TmAiXZdXM846BCel1GiZ3TgFf57j0J0H/5vMtSmJ
	 qlsplb1B+6AX+2pZhWuLa/wZH1jgfT8jI0yO9+/cyjecE2157Fb5ApyC0OqwX6DoU+
	 C3/0XMh8/pGZuO5QN9+5ZgE7X8BKUMBzoEFmzsJIesndx/6eOa9I9xMsxFeYx46mEd
	 zCT/oBZKFLaMX32ei7cpoIGY8TJYFJ1mQnMOqMGC3nYBPQCHCveIAW95Fu01w8D665
	 dt2ADXwNiqYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA778C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500594275.18395.17927956094663092673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ef42365bd493646849a9cdd73e6b7b14e699ad3c804003fc57cc3399e97e86
Date: Mon, 06 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715005942
