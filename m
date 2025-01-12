Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AEA1E526
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736664954; cv=none; b=jN/PlqRSRM9YwMJXjAvh+H99vYbe6wr5mV1AXjUCacnYTvbvfbhFNpp2ETHtmFlxU/StBdAOGP6VpcGjlfAkCZP39z84cBScAuYyjgX3jQLgL95KPnL7vhd9H1TNGeGtdRqYSmx8tD9lm0ldk7ttj/dkehE4Ij+o8NH/vLSxt64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736664954; c=relaxed/simple;
	bh=FJNX9BLIBwiW9tJI5I8e92uqEqokcyc8iwPoMCx/zDw=;
	h=To:Subject:From:Message-Id:Date; b=VWPOXTYxA8pZhZhBnS+KIuEXUAnkjkZakj7J+KR9rJSvUlLbZ4w9rqqADzaouJ/whq4tK+3b/EBJyMcfakfQccHdw65vhVBC9lsSYxsRww0KwqssaagEgBw6dPr5tRBB7PSpGWQUS3YQRKcYimkWcvh+e5Z5Z/yajrEg7/jLMqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfRZwWNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfRZwWNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4DC4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736664953;
	bh=FJNX9BLIBwiW9tJI5I8e92uqEqokcyc8iwPoMCx/zDw=;
	h=To:Subject:From:Date:From;
	b=HfRZwWNAY6HmC22l3MynMhmaBwflnJ+YPF6tR7SSm63E3r8CAt+Ow2dhkeDCb+bUX
	 qvXbf9imZRweggojoABgawo8yKZYlF7tsx+3xZF0OWhLKMjjnsCBReTrQdQTY7v/pQ
	 INBR/EM/AOh0TjXs0EfnTUS5O/LX+gnxJktgWz6uuwrsGGMzAfSpAbeFZDNl0VxVJE
	 nCgBYJeLSy0C7MWcc4OlihjXk2+c3hvjI0UgG+g04I/VWbFAdd224qXJ6sWzOgtnQX
	 5zapGZjc6CEUVJXKg+OFDd6inFeMaZ9S05IjOpJ3ixckkxXb7e8MC/nFm1/hqoukuu
	 UlBkjpXiHvNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92251E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666495358.1421.7748738643461456138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0631b7e35ccd853d99363c1f672831c1fb1da24acc23edf8111c98b52e6f0a
Date: Sun, 12 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736664953
