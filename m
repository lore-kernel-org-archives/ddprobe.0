Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06E1C84B2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741157934; cv=none; b=fXurlJdWVW1WPek7dnwS/zQVZI8fHLnSwhP7eh3C/sOpZfHFl+A/aQRkK4WbTViFnxiXGmms7sJnBIzA68eWw113Y7Zi5Ug399Etm4Or90DJ/B3pyp8uAV0mDgdBClg9Y/h2CoJtwSZcwN+9zxovyP66qGYCsfF6HblkZ9FGwdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741157934; c=relaxed/simple;
	bh=RZjDXbYbKAmAWgX1N64DtT/E+JvtiwKlUyUPSF1BKAc=;
	h=To:Subject:From:Message-Id:Date; b=NXQDZeRgtUKS4+EOSsD8ar2N2DvbryUol0FLqUu/Xq/e0AIt8kkoAVd5fYKVarbK0ATDhVJ9bDjtCB7ofrAwau9aduZqhPu2PhCH0MNqKtIdc44k896MhBGdcSd/jR3Su80d9/GUi7rzJC714quD94xds66CgSjulkXbF9AMTJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFUJXWlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFUJXWlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9123C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741157933;
	bh=RZjDXbYbKAmAWgX1N64DtT/E+JvtiwKlUyUPSF1BKAc=;
	h=To:Subject:From:Date:From;
	b=UFUJXWlTcOc1FeRrWa+DBu+Yy6Qc0Wj1n77v2AahX9rL4mckcgO5O+slE+eevMNk2
	 h/f45VDpfuz1rviZqOL7o5Ze5eMB8qNh6Rey2CCdqw+4cvNJlZ2mhpDCk9kFdC0srG
	 VQiQklwep8mGM0zgimYV2HZSdT7e76ntn6ZQdZjDfv+wqhRn8jMMjMnbQXYPoc+kFN
	 hxNHMqntqZnf8iRy5y9m+fxZ563tBmamkDniyxAURiaWuyiqQUQCLi4qi5MUlc06bF
	 kyf1jGd4n526cKE52IFnc42ai9cwrKkKnP7IQGEQyrLpToMaAbZRr+8iCS8r3XKYmK
	 2/CdiRPFHsAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16CCC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115793363.29194.10882470916218905633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3891196869fffef39bb90fa566493cb0eb90074aa16c363abd61cce2adbc76a2
Date: Wed, 05 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741157933
