Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0857B1F5F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706344097; cv=none; b=dXV4UjRDKabakCCFA9Hn4nzAiDdlrzXBjoSA0YX9moykL9513WkBPXqxAXCiEv8/T/9ULkVzlzQdxnp32M/dcF7KQTtpl17NynRtI5pFyXEk0AfA1XkfGvmpbqbRrPVeyZrA0dAXxNgs9swiJ4DVlMAvRFxNPZR4kc+RK+8z9Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706344097; c=relaxed/simple;
	bh=7dv/WXiUkxpnfUN9isdGpOoV2Uso5biQ6fU0odad5KA=;
	h=To:Subject:From:Message-Id:Date; b=CcJR1QLO0R5rnPy+CQ1quYrROvfRl16SZYd7KhYr6RIXNMgf9oSOzem8oLbYeg9tu49aypp+mbt2qG8m8ljnJwA/kdcSF1XKYY+x59Da+NPtiCzAJ9ibqlXA9pj2SxO8DS/hyfLZNwrsTp/fd6KqokNgfEDVtNMeKwBroWu7tDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSjFEuSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSjFEuSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77789C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706344096;
	bh=7dv/WXiUkxpnfUN9isdGpOoV2Uso5biQ6fU0odad5KA=;
	h=To:Subject:From:Date:From;
	b=sSjFEuSF1OA5OTNTzMHAKI6L1AEArHucQa2hBqmax0HuQAOhGb0j0YiHbB/5PhyMA
	 wJ75hv/hEiv/ZOn362xN8pU/gqVaMr0uZXTWinbjpdMkX+XGPC3Hhst1NNOEdnOkiA
	 pybu7LOxjJnGitxKZE0eWYQJhKCHWCkGRkniC5RgClWgd8X3MNVGLNT6SOsbKXdJzS
	 ao7q+EFMoWeCb1YFRSRlp+qGGnYPYnjddqrKQ67MqEuR3X9q2LTsZvp/ztcLrvghVh
	 U13z1xgCp3G8I24OyEw+cPqiZUqRzumIB18xQxJxd6YkHjRIgYYPTiU9bTF2TpOZpy
	 1MqLNg3Q1OASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC3FC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634409636.8611.8902466487678246286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2001fa3de633b7b3c0030b1fe11063ffacba09ed9d0c3326079b1eb430984772
Date: Sat, 27 Jan 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706344096
