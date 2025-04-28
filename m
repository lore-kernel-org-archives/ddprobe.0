Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E2154BF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745821195; cv=none; b=QeuEn8TZSuYfZ4Ugepb9VV84LkYO2aHFLnQ02ylsFlIpwg7GxQI99L6lZxkf8y+bqN/2asB5Oy+Spo7BpozcMPzkz8cM9Xpma39RWh9kaZirY/C4awHOXM4wxZp8h23Z2eahWWpn6pr+GcckJm0jkIlvVJMtWsPCjVnXsq3VpHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745821195; c=relaxed/simple;
	bh=8fdSJbwBwtZH5B4SGO3OqbSpZC5Uwwi6hrM7rQxGYZQ=;
	h=To:Subject:From:Message-Id:Date; b=nbjJtRp/IUjDF6Jtq0l6sw80AMrKxUvdcnpuVcrQb/LqEvx8T00GQtIT3C2cYVtVkjz9KgCjkBJIVywcptvuRgMV4BP/RBpB0yg45wiw27uLr1yS+RIYCIWjS5B9Xy78gHESjL7NtNPDqRouCsBvvXl72LruygqZYy2xiCo9vvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WITp4iT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WITp4iT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B94C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745821193;
	bh=8fdSJbwBwtZH5B4SGO3OqbSpZC5Uwwi6hrM7rQxGYZQ=;
	h=To:Subject:From:Date:From;
	b=WITp4iT2J7e9biHfk3Go4ft6b20Pn+ePLvD2urjVs74ViYhgYediyw+BSEBmT7Vgw
	 8+PuSSERh07k/8EYV6EVFN+6q0FhgPrS1sJfaGK3B6BHOvbZHGp8HrWvMNIQO2KQG2
	 8YXcGd8+GZ9JS+jouwhGU7wXpgvYFrF+ia4NpCiH+Xybv8gF9MJWvdB8k4S9i1S1tn
	 5x8fbHzWi81AGiIb8bZVW7OV5HO0HEYj2r/Kohgst7jSrKrA+CefmkqzpMzVh/179n
	 5TzoPGL8cTpPzcDAhPpHylNCdOV65kHigG1j8PtFYnyAgjmbUNV5x6S9FUBg4g9qn+
	 HFj+WTKzyhSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94328C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582119357.30925.5607710778686184505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0b5c344a238fdccea5412d5dc7253e74fc54f74a647f088d9aaacea5874252
Date: Mon, 28 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745821193
