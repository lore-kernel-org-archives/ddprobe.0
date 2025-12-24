Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D241C3BF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766540034; cv=none; b=p+/c5t6ApMSipaaU6amPcG6IvGwf/KV4WEwcO7ZlR+ynEzApkRI8BlTAiSh6l6QTzUb5d529BidzesP//wpG5LqPVMX7Bj/wFIUGBe2FWEgJ8yZkAGz4Ghey3jKJNaYqKMq0VWofn0F7n7PYu5k9pFtc7jLBqV8HueWqsZRx79s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766540034; c=relaxed/simple;
	bh=vLykawvYIHl++8GaAohz6w43LMPBNMB1f935LjbpDug=;
	h=To:Subject:From:Message-Id:Date; b=MQhxmqmssR8TKRb8N9R/qxO+TKliIPAViujCzklapTwOB7WNLELOQkvjl+10TcCo57dJ/tkkabrKuKtpqy/t/go5ZZPB9pTfepvbDI8eIaRSLopjAXBgGErJq+iQZJ1Uqo0HYSvgcfu1MRRMlDouwyaWcYQ9CSd0NjYheHC+7vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVqZ9Mg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVqZ9Mg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43AFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766540033;
	bh=vLykawvYIHl++8GaAohz6w43LMPBNMB1f935LjbpDug=;
	h=To:Subject:From:Date:From;
	b=WVqZ9Mg6sB4FnxCrRuMKzutY5l6kymHD0iypOAnmNX1ipqcsG3rbjKGc9K5QKAf/6
	 3I5IGpv78s4t6F2xwZWLrKOnpvrVcWP4fHtGP//ll+5IYFzjGnFyUPdyOcvAFN05iO
	 xP5yJ/tQBU9jz1U4p26GzAkY+lk/XEAILfw4xVD4h6OjDVmYVd+0ib4dNDQlIZfNjZ
	 TdCXDO0P1iIgtmhsXRHN6Sa/bw8cGSMGy1gVjW+P/qPvMfLP1Msgp/TRztLjCeZAZB
	 ORBb6C0RSM8ahIf1WoSLfQtUcw+0thMa4/x2bTyuG2BrGuEfwa8Q4y8zMB8vBDOCnh
	 tMKbQnAIAtgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F38E74904
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654003358.1971.13149581765136681265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e64aa430c177f46496c1e29f04688ff5f602cac998b646f5875e3f89084567
Date: Wed, 24 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766540033
