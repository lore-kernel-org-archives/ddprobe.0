Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5033D43F0A1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784383114; cv=none; b=hBS38/ieEhJ6Eq6Pfhc1QLKVxOQB1US+L+s/xxWV97tGaAIn9jw2IyQ9vYiPNqbfE96CT1Bl8z6A/lJTGcYfErVUFdBoHFUq9UjYZFUQn2YtqYOmN4rWrIJQ2WvAaftjocUaV1QS3QtRnu0l2zr9annJv62B5bDFS6YHMxebT1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784383114; c=relaxed/simple;
	bh=wZseb0MV+1dk0/X2HSpmpWfGMX8ytCvGBFRV0Mwe51s=;
	h=To:Subject:From:Message-Id:Date; b=jyntZXGEtCmCFmVlrnAFB6nIN0tLTF9w0a1Rw4cn6Jr440onA8i5GbBLqNJ0IPuT0nZ8kQU2ypAT3LamQmgsVtRCJs0asYUPAzHLA8qErTD24BfOXbeV0p9ZgxeEEQ0YjobOPjEzfLPhEf+iQXKAOtnddJjbbklOixhqkyBHRss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdP7I1dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdP7I1dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03A9C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784383113;
	bh=wZseb0MV+1dk0/X2HSpmpWfGMX8ytCvGBFRV0Mwe51s=;
	h=To:Subject:From:Date:From;
	b=LdP7I1dcV+uROVSMeXGb0DJGBwok10aqkH+lKje2+IbOQT0MoYNJr4p9rCkXVz9rs
	 /U5e8DPul0qWTconlq1hiZDYKdhNaA3MBkpYkji2h+GDZ0vmA5Hr9e71DxTvlkS8R4
	 H3P6p0ibeTiK2cFXXAdoSaJs5USom3XAe4zL+6z2MoXJncBnxHfLAkbbsQuvyIYL2P
	 QQO705CCm54YfXGKGSJQNE8EWP2CZ1ZOdBa+hj3s3+jm/9EpObitZ6C2PPIxfiCdNy
	 tUPXbl2HEwhkiXtqZv1d5mQvKXfP+K+DpZzZK+VsB6aED5heNZPNcM6nJZZf2Nqyq8
	 qAT3hikLrX35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEAFC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438311368.2963.13626523610079092344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b9e2294a49e64c46d13d92cd8c6b25e597260c8094b87f70be80bedf3d9fcb
Date: Sat, 18 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784383113
