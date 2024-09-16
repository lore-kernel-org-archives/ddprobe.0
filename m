Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493A85258
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726524954; cv=none; b=lNx2fWBRhqWhezabE9hw1QF4WI223aAHAVCrpS9JR6AwgphNEVIHZl6a0tzqca6EXmn6/qAx/qgEUuyykw3SSpMuwwkV0+dldUfqVcks7b3HTcbHIaEx4g9nHbFL0s/U7da3+39ZudT5//kstph96vwAAn4BPNXpACEE4MVGMR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726524954; c=relaxed/simple;
	bh=Ct9Wy7rHYw5m7rnowWexOGW3fttWZRwcvb9uY6qYNGY=;
	h=To:Subject:From:Message-Id:Date; b=CvfcWmhfsljtqpCF/uTVkLB+IN0h7xVmSkw6Gd/Y7iCNq33dnSrFd6cIXO+oq2fUVGfQPKX2uPTU0c8NSEQGaPjISItu37bLgbYEPP3/hWFJMZ16sN2q2MhPzmnkfEsa56Kh+5CqbZ7jIcRTqgTFL9kv+OFxNMp3AEBaK37KJbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3qGaIta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3qGaIta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB74C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726524953;
	bh=Ct9Wy7rHYw5m7rnowWexOGW3fttWZRwcvb9uY6qYNGY=;
	h=To:Subject:From:Date:From;
	b=X3qGaItarU+ABMXRWjufBLX3+zP4LD64dw66AWfQq/a+C5OHGo4mf2htCP+8FcE3F
	 T+wQgyqoaSGEE0Bm0YKWH4e6JvrPkYwaho8a1I9TlhppiXs2gW1I3PNWBq6B5vtBoI
	 9TNQlwn8CEBz1wkwxiCgoHN00YXugHG3kgY6/5i7j6x8DprwDRodDqkLRttdH83hc9
	 TvZ2oq8vHy12sBFKZPnNiIZsl/WnvXso4m9VW2AAlbT1PcLTlxnDTS3/sKkKUV11Bx
	 7sbYQM6xjpur38zG3vmddGI8alKNvOlyj1i4v8atHlBmse7BUn0JLVN6CIUAN5g/Tz
	 isZgyikGi9tQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FD3C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652495361.3137.10865751638852514843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afdf4ab82e07d522780add47a51439765fef33f7a8e008e5420da339f85ebbb
Date: Mon, 16 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726524953
