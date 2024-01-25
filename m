Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B19B17591
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706157497; cv=none; b=rtXU1+QWVc+8En4CFU+8gCtbviEW6xYgg/s/xumZdO6ZM35inYejcfMFlg6p8xcJhM7RlV5UZRmvfDJUW7z1NT77thzeTqm1YnGqRLqm9Q7RVhdv4boxITObXvq0aaMcHcjIOzyJ96SXsrZ0hbUtDCTnk/FwOWxYkQE83La91ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706157497; c=relaxed/simple;
	bh=x3y0iF/HQ2Zkvspa8R3POS6gGCkfljNchfK5wVJmQt8=;
	h=To:Subject:From:Message-Id:Date; b=bhevp89AEe3RxWZVKE0PXOfwg3SYXqKshDKKXzgIGbUJxV2tMbeiRugdxSyvFrM1rEhIJoY6qunnKADhCU4ciwOeHmwHACAvt5ik5EOa1vf45g1o4o/7e3g/R3ZzSMVDS6AL5nIVEbf1p23XPnGAADgAPVP3MWAvBmd6qiWUADQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQbLXraZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQbLXraZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8355CC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706157496;
	bh=x3y0iF/HQ2Zkvspa8R3POS6gGCkfljNchfK5wVJmQt8=;
	h=To:Subject:From:Date:From;
	b=VQbLXraZMXLUkjvBjWTRVuTJASlqwQ4S2SQeCCJZLnR2k0/lbSdqeoFgn++pKpQDR
	 5kdWjY58gdI431Xl9RApbA2E7JL4dL++Jqo9qC/p4Dch9PkcST2Cxbpu3X+Vl3qnoA
	 nO0Pn7hd6Bk9FJa3OuAGrctyw0p11zbT/v60ZseKd2RhIfqVQfG4Rv/ydsXqAXEV/g
	 XJo4Usg3AgBGTuUtE6n5dhqZ+w02tT28BYaZfKZjgvGFv1zVVzachhww3JpWFJQX7z
	 0r82bt3o4uKH2tfe/yw6mRcc4kkmqWWCIPbIj+d1wq9CUw5tJJdO9bc/PP1GmDyplh
	 hjSuRIhXdq5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64338C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615749639.16022.4858844865145615637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdc2fc2bc807355580dde96e209fddc7f00c18dfda2b4831797b140f6c5ea5a
Date: Thu, 25 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706157496
