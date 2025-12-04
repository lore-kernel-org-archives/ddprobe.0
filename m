Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFC6186284
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764837174; cv=none; b=mMkjJW/j3c1wFW9iSMeuthkW6lr/E5sQjh1fBASqJuAz278EE7/ZR3eifiti6fk61G1H0lIuZHAkPIapDFQfXb4DCmBweqxxp5tqhxJgAgcd53nmAyuglJmrAVqhJiR+xn54RTrVLvaZ1rnZxBQkEoE22mZ8cUcmHK+v/ZhXr1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764837174; c=relaxed/simple;
	bh=6QbiyvdgQ6heD5OVKTm3azqKApWLFXx1JHqvYfq7tTk=;
	h=To:Subject:From:Message-Id:Date; b=h7EfkSWjXk7XxaUzkUFnhu2UaS2uVHlNNU6LHbBi6OcJa626tO6riD16XrYJicWBG0HrkxKOfvJzu8YXkwHARDVVGPCKuJBWNYndxR3sW2Wi2y1X1azbhzVXV0wCX+TXWYxLCYDKHF+fKZZS9kwAxp7hhaygnPR/DhU0lnXWMSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKyupA4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKyupA4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8909C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764837173;
	bh=6QbiyvdgQ6heD5OVKTm3azqKApWLFXx1JHqvYfq7tTk=;
	h=To:Subject:From:Date:From;
	b=OKyupA4f5IAgL3cXBAzqSsFYJ044hFJfjS16qjJGiECkzUHuhgPcAZ9X4XgcVlFh4
	 U/BJVP5jRFcYrZPBt8XmnEdHw11ODAc/avQzWMeHzu7Kmsn+mllhsnhLj9x9njUSA+
	 tUJmgyQlg9WooSv3GiqE/fFBUwkNrkYemcJxW3Pv99P+5OiWIw0yxikrpVV2NHJZqR
	 EWtY9Kq3DuVmNeiwOoqfYZqUgwV1CQfcR7dDEd4k1Ci0nrFx2YTz9WOWehYoWzL1Pg
	 3chYcWlq2GaTPU/cyYjwB9KZ3mMPl6FvmQrCN+KYWCA8NHJjNgVDY5Q7XxXcNP2QFG
	 auPzdrtbKEwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE3D1D892
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483717360.992.15892648169095816806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197d070834e22be41534263e9efe9159b5c5323174ac207ea3a2a70a1377c12c
Date: Thu, 04 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764837173
