Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDED3F787F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791643234; cv=none; b=ll59FRQ5a/7502DdBKjkJevH+NUVuLIucu7Pz3LqmVHd+uAZr3B2AaRgs8v20aL3zxjtZkzFMKGSX35x5ao6SUuMypuFabz3sS6INkXfIv1U3cpg6gmnigOdNWAvLqvFBv8pATB+71GZxW8kOfjvILbV5wug9wb+bQRm738vrqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791643234; c=relaxed/simple;
	bh=ZXsbeOXYGiDjXkEvR9UvM3Mt+8WvO3HSuiOyHlRA0gc=;
	h=To:Subject:From:Message-Id:Date; b=Q70odBtfRhCQItP06JlGXNkp9iuPCAMPLZGuuVX7eMerI97GeMNm+9PX6BDivxJkgbY6hQUSMVzHLc0Bo9hBUEnGNL2r/Ava3GPMRJnNefU56TU97FTWcWEEguKPPDquZbV64CX3iH/sWCuWlM8za9N5sfLwwhonNdsSGNY9h9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qg5Om8H1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qg5Om8H1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BE4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791643233;
	bh=ZXsbeOXYGiDjXkEvR9UvM3Mt+8WvO3HSuiOyHlRA0gc=;
	h=To:Subject:From:Date:From;
	b=qg5Om8H1ywHcPvRCAYrwJ+Z36M9GsxmjMdHy7WZHWODrLqy0ACebqa00Gc44p4Njq
	 3vGhudIe1bTB839bs5ZUB1wK+GasLCtkw9pai199POhs3wZn+fGFTWspllIM7+EPyK
	 cg/C5SKGKy2dKqvuGzkcqSRTAU1HhNRruP+Xb4ccG6lLiMdt/KhoI6QJLyKJifgEHb
	 qY8O2FeNfkPpq0V/hO5KjLJj56Yh6zGMPCoSnU2tGVXz+DvfOtpV1va2t0jjBK+rjE
	 a6eaGQBg8ep1iDoOnIU4mlvuJ1P6IH3j/wBX+skpg4lp1sTswJ8mJBFdI8ivPaixbv
	 NxU8xl+d7UD8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7EACA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164323368.10611.11772101863254229263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346b3df99944544c15b016db87f840e11377a6ffef42979f3dcba33490453575
Date: Sat, 10 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791643233
