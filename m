Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFFD10E3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766761434; cv=none; b=YdsMrVgjPcNzLksDeTrwEqGXarqTsw/05ee4yLhMRlRO+QypbQWgV9Y3jIikZathzVsY2tqpJsFxG6Oj890GdCvKD1nMLeHK+dNixkJBFk1s1tAJxvCFMukrPztsIJqTw6B2tXe8rjP4dvIdAktvVVwia/1ewFjPeK7gs9UsBLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766761434; c=relaxed/simple;
	bh=zbd1HboOpUuqno9sn0S0gHU3I28moEtD5AmvwyJI3ug=;
	h=To:Subject:From:Message-Id:Date; b=ehJE+SUX8L+DQcTJMWqUBtTrPQQUNmOfKhae5ABGGjYM8ZFArnZSulbP0ug1pZqVZ4KSv/lDs70dajnwgiSDljnmZYf7asVuIqF/eA9o0wG+AVfdPXj9OWc31+nb6jtPM+lsHIaydPlLOo1prwbg3mkwhUsjuX9aACt3j5zQnJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aM040klv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aM040klv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD128C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766761433;
	bh=zbd1HboOpUuqno9sn0S0gHU3I28moEtD5AmvwyJI3ug=;
	h=To:Subject:From:Date:From;
	b=aM040klvqVuqrIKnx8bjapLEF5Q1VqPU9oSqGb+Jliu+VOb0ZCCrrTSJRbgXhozc2
	 FAJyftTUyoA07JQ1YGMA8Dz+nWdyNMH5bs2+fwRxHmG8jMV6A2KhiRlnkTOFLjp76R
	 uGT25e2tmhno/DS8GuqIOLQonP5PVe2y5423bsU/0FloU4+xi7ABhIS3x8tBrWIMFp
	 GZ5Lv1pVtBV3k7ZEfVLm/+sil+Ym4tIlbDAtAJB1RLwFc0f2gR6BLup3RZ7JXQU0Q+
	 AAu0+4ak8E4C+RSTcLZZ+Plq9v6HgHP0DAUmT3yBPhRLTNZ91Jyy4NuXHy1d/O3Pw9
	 3Lr/oHkNs93MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B3FE8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676143359.19654.86150097309048607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6493137e84831a6a3431bfd7ca529c43c475b7cc491d4a0ea98904ffd638926
Date: Fri, 26 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766761433
