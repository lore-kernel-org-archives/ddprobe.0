Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6A1E260C
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779938554; cv=none; b=ccbifjrp61pTbMZ3hkpTrYD1kCfmXQJ5qyVbOVEft+jjjmxDznKKjt6V8kFM5UuvkVBds9KxjaxpC+jDlSxvErU6u7YrOjg6AVzE8K1FmSYytAlSM706M9bJG8+3phAbPaNkfVWK6YZkqC3MvlOX9lDdlyONq/vWupm4z/+ZUu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779938554; c=relaxed/simple;
	bh=kUV2CXNL3EIAqLRTUP+Z3bSEbZqxXZp8VZf+TjR7m8s=;
	h=To:Subject:From:Message-Id:Date; b=rW43DaAf1HY+ZqyShIZjPEj7z61ha4GgCBHr+BHkAV3xDWp//UPzPycgIH2zKczDjel2GuIBiLyk5IFVRlZdWRdrA/xo0NGlqLa9C6frzbp9cAmRMqujD6HZQR2A2kLNQ3BgLX4fzJzmTYfZ6eW6K19nFOFfthEuA/PC3lihDXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qy8DkpL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qy8DkpL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9293C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779938553;
	bh=kUV2CXNL3EIAqLRTUP+Z3bSEbZqxXZp8VZf+TjR7m8s=;
	h=To:Subject:From:Date:From;
	b=qy8DkpL4S3sv2+DQvMPLLSw3Q/8dOW7gP3lG5U4PkyAM/d23Zn9dwvA5T6MtIXmH2
	 0YdyqWdT3uS/WirSOZXi7IQZlKz3xWaU0+vXVhhro4EUtTyaR4+ICCif6OhY63kdKy
	 XDKcsWShH2n4UHn+tJw+lXv27SlFxbe2sF8IPw+ViV6FJ9nKElzAL59ydgB6Xlx6WO
	 cTE0xnDwZvzg91HTDS3+jNUZO2reViNgbNlSzGs2+PJsIjbcENpWCM+8NExCJVtUEA
	 U1sZmsuFxNCub1K6ARFzgMY04SPLgT9c69HKdkZLwfCI/n+I+eKFySNgrB1dCNCGvJ
	 u661txTrRIY4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F32CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993855367.8053.5317740042196714712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cffd97943fe8f48b98a2a30483154a4dae74777b2e5561014fe7e5bfae01e0
Date: Thu, 28 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779938553
