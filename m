Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21596134A6
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707271697; cv=none; b=X5a6VulJzPCUgMZzGTTkZgwGVp9602fdVN5mhLjy3I7s20BsFp7Br8CujH/O7X0JOAjuwcMfEsoskqMdxrXrThOXPABKilexcmqGN2KuGXfnaXIPg0uh6sARG7dwKVj+NRM2IHOP/gT7vir6fQSn5gYY6ZqlP9H+UqZUgtQEPgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707271697; c=relaxed/simple;
	bh=4fwvdfzIHX2IfxAg98R3Sc8JgjIkDPtQiOEra7Bzkww=;
	h=To:Subject:From:Message-Id:Date; b=p2mPesWa/W4kLmKVGSHkmkC8eLlff1UJkdDc4lo8ETunWJFmznhJAgeP9APjXGbofHvcEK6CngBVkEbjod7da24+7eNF69r0OjyEOSxxC0U5wQw+gcHSknQVdd7HDgkhtr5qMHDCSsRfwZaQJqeYBlAgRBBXAlqisCWdYpW+N94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYLvlHgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYLvlHgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CD91C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707271696;
	bh=4fwvdfzIHX2IfxAg98R3Sc8JgjIkDPtQiOEra7Bzkww=;
	h=To:Subject:From:Date:From;
	b=tYLvlHgSx2jn6hf0UGWGfRR7h8Bxm9zHfxqEp2RIztKvJPyarovKCunvEFllJUDB8
	 sfoUTlFi3BQWufaMmuiPH67xdLXbpMKg5XaOeJxIXJIVdkRsC0LAsVO4USCbKZUhZh
	 LShwb4UlCa+aRp4e5PaLwbDIRd/7HiN3oHNU/eq7s+3AMZPXIe0JV0y//6jY/mG7no
	 BjuLA18gKS7iMV/etZIbTkIdzHnPj0JHtxCTPlR+V3yT4MvMnxbdUu2G7s1Z0E047G
	 6QP/F2UGTvBdMy8px8wIurhd4TFIrHnwli0OkqAXuStQKvle6ugr/q3zCSjfsXPd15
	 WlssqQWdWsf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69778C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170727169640.23692.862639656231691609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae317b01cc98c6af738aa55a7ca20e9c32860a32b6e2ae1786a1204bb173786b
Date: Wed, 07 Feb 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707271696
