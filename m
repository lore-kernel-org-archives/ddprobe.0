Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565C2222C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754636395; cv=none; b=IIvt7+KQl0E3ZAaLY1e+/U0Q+rRsPvnP/4fbHKAI/1JKQFQSQgtr3IqksOTpM4+Q43Oh9Mr4xNtndh9zkdGMv36CwnkCJ6y+7GeYBxbGXxYc4Lfulz/5KUrBNVuLRLn6inSbv2Wpczn2Orkbr/09w5yJlIb2vZCx2ZXa5VkVBv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754636395; c=relaxed/simple;
	bh=Cck2JyzAvfTJ8xEKZWul5Egn30Y8xLWzkjRgdZBBSBQ=;
	h=To:Subject:From:Message-Id:Date; b=mAfgUE6KAce984kqfmZi707rCW+MbKb/y8xm1teXyBTmTjsJwQXM7owcpFiB4cIIwJ2SABcLqvp0uJdEVTAx7+sDdH3lmsxo5UEZsAVj7daUh4YRYbe5xn7UCR2DL4cwe4KgU7CH/gHGAuhl5B7lNNwGOHGDq80bz1eXtuY6ujc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uggqZAho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uggqZAho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB30C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754636393;
	bh=Cck2JyzAvfTJ8xEKZWul5Egn30Y8xLWzkjRgdZBBSBQ=;
	h=To:Subject:From:Date:From;
	b=uggqZAho/Wj8re87o0Xbx8FZnctcfBCxakrNyFG4Qll/qeS9mWQkgrQM6ksn7Z9w8
	 yiTJXyE6dOqOx1VFyW0MD+Hrx0hgsF+aPuUiXxokXPLY0O330x/Lljd0eEQUyiKdfH
	 qnEUtW/BPQ4zoLAYpyVOzjTyrMX1FiyUZtAfZwbMmVDfFq5BlFXNPSfYWGEUW118rV
	 yoL95UaWOdPFfPtNSWl7Vy1zMzdNeoNzOvQAkPYfrXeE5CPX7olAoVH2yIScpIqHu5
	 It5l2bV8wPytW6+BvB/kFR4vJBY+L4o+M1NRKLBWMuhbQiobzav58J8xoiT6H7rvbj
	 DP22vFaQ6FN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED3C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463639357.9724.5784872259734079886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031ac91de1b53c1d239dd71be43d6691baad0b6d36d4e5688f81895bdb85dd18
Date: Fri, 08 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754636393
