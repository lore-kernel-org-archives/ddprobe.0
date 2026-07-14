Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336BB3ECBED
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784018914; cv=none; b=fAV0zIQG+4Yt1pohoCAXrXQk8nfkAoRrpMdS3zfYhuUPi445Gtr+pZHqQGjLFY8yGrbi5gRwqIUqg0TRRTJYGYDgqDvIdnWLlRZP+hJYgXioDPJUy+Qkn9SFz9wBBHS3fCx8NxgyZk5HSRiK9XiFFLjZytUSSJ5z459RUhpXFQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784018914; c=relaxed/simple;
	bh=/8ngeNcgzoErPLJUzbxqFQpBPjsZyTR5HX2dWp6r+xk=;
	h=To:Subject:From:Message-Id:Date; b=gNeDxmWyDNdDplPgcE/XOzITTR5NAJkCC4zgM94UVerfA4STQGRjFeSShdE5MSxUVw5rNAXMkxALcNVh4d9cjrSr/S+MvTONnwOUmGbZxkYUfUpSyoXDVP+iaBP0nQJNC6A+d2iKLAasSEfurAIc2nkPVH/1i+qL3/HIVMDQURY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2D16mAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2D16mAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD52EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784018913;
	bh=/8ngeNcgzoErPLJUzbxqFQpBPjsZyTR5HX2dWp6r+xk=;
	h=To:Subject:From:Date:From;
	b=O2D16mAPvE/iWlCD3M0ADR7W1kggs1dMaocsKh24Q9mMc4i+OHxvGnV7OPJKq5mgm
	 mYd5lCDQ3j84Wfyspabx9Gwk0CWBpbb8qBKimpd5TuvH6+tJaUCAbL1U98MekIPJe0
	 Vx0vwxZKUxAFzQBqboyFfRfcdK/EQ8uyPQU9jjQHHEoPCb2JsRv2hyG/vvMAr2KUFD
	 TmP6kNzAY54HJYnENUrfMojCSBg9CfBJnmpeZXQPh150MnHWObjvAEgs3Gt4GJ3Zvj
	 25hXn1DEhsykX/BOWgrASOw+R6oVchbxv9FfwAZYGziWg1HXPLRE/s15Lb+RETWVC5
	 snLXZrGL5ksuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDC0C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401891369.24174.16749432215250666025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b943dc0f0b68dac8351d290dfad029f1a4d23b6967e66fa59eaddb3472cd2ac1
Date: Tue, 14 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784018913
