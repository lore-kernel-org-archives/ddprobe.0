Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA0248CFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724087154; cv=none; b=hCNlsg1AzL6iXcltsgKL0QWVeIuZ6IvjBD1leM5g2n9qVv6atUzceQBoumTwuRwafG4O3igFdJCwsjqZ2a8+/CfMddRa1M47SpC5m7s1npYXR9N7ns/AXzu4Sa1TOmbWW7z93QFhLUTi95SuMhKUMHIQOefe5L5hrVymLZNu1QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724087154; c=relaxed/simple;
	bh=0ctO9IQzk428k6DwAL8EOqm8Nkakkj8D1aEngpVGTbc=;
	h=To:Subject:From:Message-Id:Date; b=bBqlBDtI0OU/ox8cssil9FMm5egCn//TdTnqiPVN7ZIWQblA/NAQEAHVoyEQj2qeGQy1hM0NyO701E5uAI+Zqs4ICayDFcGhKMVbMET2HjEnqQJJsh7ipENEWzc54dzbkAs/9CUrq+mqzXfrq5Kdn9rT2NfGZHPCEOCbNNGRZRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrN9nfBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrN9nfBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9658C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087153;
	bh=0ctO9IQzk428k6DwAL8EOqm8Nkakkj8D1aEngpVGTbc=;
	h=To:Subject:From:Date:From;
	b=HrN9nfBsWlszAruSqerGBksJVc7iPVvQ16hEB9wtYUXPxc77Olp3XnYmkJCI1Cfy1
	 P5/DXHw105doC0aZcRBSZ5w52PX9VCuxMNobgGhBVlDi/sE77PKMUXZEioYG4KIweN
	 jplR+8aoYg7nQPU2Q5S+LPKr+GYhQbDZVDlZuZxPXEZy2eJdggtKQR5QITvVGpvNga
	 boLa6UBS5wIwgNWnSHE04jXBE9ybqpRrgLhhrTUSuHcD5oeOgmrBznCFxUiKJC30MF
	 yVMgEgLyHoej5T91ZADbfI4eRC3QuF8H8NKR1lBiAzwuifdGvJbCciDwU2fvPWD5xY
	 6ncDbgnsL9D4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FE0C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408715363.17524.16438298558641621673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278dbfd95eec9470794d22b1436b68f4e9d75292714bde979919a82e26e1bcd4
Date: Mon, 19 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724087153
