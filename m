Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D5F375ADE
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789115434; cv=none; b=oaz9t0dRrvHio/n9YQ6vXDO39IYnyJYPQAdF1HO+OFZUMzqwQ3omyO/NuevD3I/rXtHFQeI6bz1FCz8lAhnPqdmb2Im5S+lMVeaEFyjb7WJovphF37wIlykXh3SRsmegiabZfEZGIyZxWL9zQQNXksvPDHI8Qf4K1jlB6q+1CkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789115434; c=relaxed/simple;
	bh=MpkBD/bUso2bNJkYc7EZg2T/6hGjbPxu8WoDu/q3tmY=;
	h=To:Subject:From:Message-Id:Date; b=FD1Wr8NwIB//Fcyhm8kwzJcifR5FrlAZUbbetWsUkICKXtB8FJBM3jtwhDPqT+3kl0oyDw8L0XqKIm8PVBp8QW5v3i9j6vlD/TLAkhzXcCob7KSTSIgY7Nk4wUWSWSBd8rtyAZUH9iSZtBBaNiH3RZLG2zDYPEOaqWzBofXdgOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A72MT9BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A72MT9BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51E2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789115433;
	bh=MpkBD/bUso2bNJkYc7EZg2T/6hGjbPxu8WoDu/q3tmY=;
	h=To:Subject:From:Date:From;
	b=A72MT9BFXfltQ0gs5YJNU/wXcSD86Yq4XsmcD49mM7LYgsfxGIY+2SpE4CRjgrF5i
	 0s0+hmG8ZbpbxqBdSo5sAF/w5Rr4FuMd4W98mAQ4Hez3fF17NiPK8iQd4Mv5EHGuZL
	 28YLRyoPakuCqGBPsTJoGXb5lMRJ8xL71sBY6GpxWGNkd6t5+2qa488EnWDlAMEiZT
	 gSs1q5eCTVpk8v37CVdCWvENZCanXlGrLFi8LkeB19FW+YbJ46igUHdDhQ6MMm8X4L
	 pgmxWH/TM1K7ZRvHopatFXwfkFkBFqn9+brVMpbdC6nI95QwXbpKHI7MKwsG3LMZlQ
	 GGU9Z6ij2izDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3313C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911543372.2629.6533991877970895333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004723c1ffdf89dacd4f51f6b64a15a044a931b0bacc8c91f29a62f3d9e38894
Date: Fri, 11 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789115433
