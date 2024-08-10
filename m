Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7763D969
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723321554; cv=none; b=fqRdK/LXAGlz+k4Ajl36gSqLAeZt8IJszCkCeYqwAntDUkyjfBP0WkTvSOBFt4y8PK7VJ84EyuypEpIzPllYOki4iwi5Ja4CNa0MqBLyeFU9HxxRO/zyh0WamjRepT7aafxcbwQgkRw9vGW9TV1S4/VV5kLs1zHCfjB84WDqDCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723321554; c=relaxed/simple;
	bh=EidzNUS7mqYVCd82iP1wJzgMbARz83GHzdSH4Esfsj4=;
	h=To:Subject:From:Message-Id:Date; b=gTX1rWi6c64WEabhHhua7HbfGQ297EgYVEcwNHG+/ntj03s7VpXKpSrxs6srNfTDA6uRhcZlOmU+9VJPWzO90e1zm3dVhW7B/07//OepoafQeGxLGffuRoI7X+W2IifSsTj30UqHfCjkfzVfgaj4Bf7qwo+aH6jW5YtJ+lKIu/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtDxy6lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtDxy6lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9350C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723321553;
	bh=EidzNUS7mqYVCd82iP1wJzgMbARz83GHzdSH4Esfsj4=;
	h=To:Subject:From:Date:From;
	b=VtDxy6ltqhaifxuDG5NpvETo0FWlMn2QnsR7P2BDffuiDsT0m5HSHrt5ON+ppErNb
	 q/fq9pX0vmwbc8ARlGxlQYHZuwy+tWzyX5/1+W36RLv/3HgiY1HPqWo4LTIHfCQszt
	 7F0iPwqscJ8+Ar/7cY6kHeuN/pw/GsLHgj+vqiAQHzoZCkXqh21/YRJkCSzs9MCa+Y
	 5E96KXXl4oSr0fos4Nk0UWBQqsROCWPDcwlYabvmUhOXkMUCNy6IrmX3JtqNS5xKgp
	 Jak8tPtpz3w8RZH9CreaBdyB5Z4durT3WSrS9PgVnh9czkIDE7t/k47GZDMo6DWv8q
	 4Kq6yE+vAWzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E9C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332155360.26391.9307608404278310124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2846945d82fddd0d1d7854fed5f95def03defeb03da94cbf654682f85381d199
Date: Sat, 10 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723321553
