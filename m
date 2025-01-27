Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5281317E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738007156; cv=none; b=VcDdOy8vOTYGkRy2swnpf9MiO5K2h5WZKiOcoSyfcdlY7hCorMpK6+CjTN2EdMmcTmRrfcwyhCR52zJGCHb1us4ueJzAbMyqg9kcYIysij/OqCCg7s0AWEiugUx9agTXckQ8z7o7fpMDnQ2hSyxqqYMPICvx0xx4iAHJc4TGS5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738007156; c=relaxed/simple;
	bh=LhbdEf7/MpZrJ5X1xOUfNMt4bWvtKM7BqZku6sgumpM=;
	h=To:Subject:From:Message-Id:Date; b=Tf8ue/bl4bfQ+GlLrvSuEduu30uVNBB1OLnp+1qrNBuk4efKT/geB6SVeocgaznlKjZrGBpQ/AoLF3mFAi/WFYbWGdLjoT5MvVilSDL8JBiE9LDDy+ULAUv5G12lIlbcI/CH8mU1XglBDd0Hh/c3yg6nzn5SrDDAQsvqvzNs90Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1ilxFqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1ilxFqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC30FC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738007153;
	bh=LhbdEf7/MpZrJ5X1xOUfNMt4bWvtKM7BqZku6sgumpM=;
	h=To:Subject:From:Date:From;
	b=f1ilxFqgOzWG13eSPsDcYFE/ywFzCxzXkUlqdQ3PyPEJzZav40/aWGNqEex1H8BUq
	 4ModvcrLNJsGKKCxTZPjIoccUOLQcSx5uZldeS11HIM1s8yA/DhOc8+R/LUGJvPYC5
	 fkWB+G24I5734/kAB0C0OFpLm2Oip1JROKMYUcIS8StbK2i8o3nEH8Qm8pZTQEz2bE
	 y/dkRImIJVJ7oRlYjJ3jDn7ogjIhrvtz9pxYFqTB1ZTpP3UqmSNFUpPj0oOTknX/3L
	 nuT0fgtHrZFI3w0DSj0I3Gkb+StxNG5Iq0GwgsmQttxNDT2KlWbkg5K4m1wjGZjtai
	 TKETfn+gxDOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A729EC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800715363.8997.9698025277659022297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73916c148c988bfc491a58935eaf326c88cc1220d367ccce37a8189c0b80c90c
Date: Mon, 27 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738007153
