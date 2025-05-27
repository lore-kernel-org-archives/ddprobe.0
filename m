Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362B7189B80
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748369994; cv=none; b=D2kC67sBesmcZ61Ya9GAc1F0mUf8YZmmmeywYklapNPBHjwvfg6q1hQZDgJEMeOZZCAogX4qkWVHhCIGnb5wyfHXVNuZhxSBumNQBp4HCiKG7ROMbqNNdg1LUkNTJbQf720ajXIQZBcz626XWzOTXJa6tGgiQu94G27tqt4trIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748369994; c=relaxed/simple;
	bh=mLQ3lnyoLEEg5m/jzF6ulW3fMg0DckY346poAdrmMpo=;
	h=To:Subject:From:Message-Id:Date; b=irVBYLbqLPGda1aFjXgO18ak/TH4rtouCjgg1mpgx/o5WVCmvk8tdwJ6s7RfDLCYrSpYiZhSyQRK0h/bXgI0hC4QmWZ2YTV8/c8EZ+mx4XTI77auHz0WMToKBHyrHMObQlwbc6NW+dVB4EfbGqF9ZFnhWlzSeklhnLU2ECMLDe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYX5Gcs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYX5Gcs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748369993;
	bh=mLQ3lnyoLEEg5m/jzF6ulW3fMg0DckY346poAdrmMpo=;
	h=To:Subject:From:Date:From;
	b=LYX5Gcs8rb443+YsHDHYsVmSpzUDQKvMhAISIbF9fU4Wy+uMzKLyUv9uZ2731rWdK
	 MjS29xve7hIBi8L+TPPDMnwJNgRa+BJKrQNYHlRNF3j9LwbKtPVbiReb1RaPtG2Mjw
	 k/UdgdORTtao9AY3LYWE1ibP0uMBDYa7jSLywWJ8Rl2/telRRvpbSbTHEL79iEIbYR
	 vtSmHNTryCzw6Wti45MJEfKbPRmhwEgKQ6+/Rov89eCwuLovU5sVSWA038RHKGukUL
	 7pe7EjmNWOiNjrb4Q+84MrsfIxJr/MxLmkeJpROF2cEj5FJ85Soymw4EyQJMLY45ge
	 mU6k3lL4fetIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7CC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836999358.9379.2712736169575923534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17e580600e0f565dffb192e8e00ccd0c2de73ad29d4451c6b8a71ed4a10c9b0
Date: Tue, 27 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748369993
