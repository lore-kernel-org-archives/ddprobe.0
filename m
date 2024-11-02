Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BBA153814
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730591154; cv=none; b=r94EIMj4O4eZeIucpgJpvAYnlgOjliKZBufN3bjb+DtYNjmm3fs+pneoUkO5B5g/I1m9ohW7UQRDmuOAbSfVVeUsXH/iqpQh6/GYZ2zpqPeyQbRBoawaxJQsGMWp6hb11zQFqkhKHI7QFjATuVZqd7ewydUPFeVy2frEevo9l8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730591154; c=relaxed/simple;
	bh=C5M2d+/naUTcZYUKtDWKU0hFenHH+PhyFUyb4iH/4vk=;
	h=To:Subject:From:Message-Id:Date; b=tmFOSFQ7QDrjp3UUYEI4CKCXN9jydg5UnnrF3SHYm+rSNiieQCK8aCkzLH/dfb3Zkst331dmBJ37EVmU0SLEuZ7lllL38mJF2hsqS3m2+d3wxtcOIdOds6ksLdNpIMeVQifc47s6L+mXcfIsJIYlQYiBPBm9rSiMpdghhx3QzFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuoCczYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuoCczYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA41C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730591153;
	bh=C5M2d+/naUTcZYUKtDWKU0hFenHH+PhyFUyb4iH/4vk=;
	h=To:Subject:From:Date:From;
	b=XuoCczYKBFTeJWwDiGf2k3aCKC1pTSyM/moVEfqoSf5B6OHFvlRKlQvDxmSQsp2Hu
	 qgYkVvo7uqnmeV2orEstWkOQ1mXt5FbvNNzvjpEt0pAVnhmPdVWRdRPDGSZhBb9POJ
	 U8f8PZpOa1G0+0jK1OFtn3A6vE+ScBYhR+fzs6gZxwnPMff7D3xxWOvQPm5OKnLc7i
	 NbR+q3Wkmwi0buI/j9HonZN4ldJ7cZoXZq0jmp5PNLH0bXdsJiU6BgIHsZjcj1Dkis
	 yLNeyu1o6pxAczlvgo02EzroIooEQ1YkXfHtXSfpcjjdecmu7GtFS8rJgHox1iTFgW
	 mQIXbW4RsMyGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44AFE67819
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173059115363.23843.16509912732185465218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c5a54b3e6b1ef9dbb48df5e90c1397e8edaada154484caeb86bcd2a8882c29
Date: Sat, 02 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730591153
