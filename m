Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E157221714
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761806394; cv=none; b=QFIaKpwO4HoodA7Ng5pzLtpk4CqHG14vEB/5ck7QvVOmo4zRQMIwapFPxX8NukuNdOgfdhWs+jUnojjj6HWquIZZrT/QU854LvJcCd46w+kL7piFMAYpqrYukCadI/LQZOlyaMICmNqQ9T+KKbBVtUHaLwWyBeE3d0A/B9yypnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761806394; c=relaxed/simple;
	bh=w3TJ/Y9caXZsdHLBfGxYUY2HCP7xsFzlISNN1VqHOYY=;
	h=To:Subject:From:Message-Id:Date; b=YT3S9L+F1QyZ8JkDp4AsfpYKGcYu48ql5+LsB28E+E5yKFwHwm0palxXXyshyaniWERX/1ueC0bS6A52lzZKGd0Q6E9/Jt3qJsvuF+poLDge+BT6TN++tZY8FQR/SFI32pAj7kn1ARLk/enZrOw2TAbd45YPLxYHJZxIG76mouI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mracHIlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mracHIlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6958C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761806393;
	bh=w3TJ/Y9caXZsdHLBfGxYUY2HCP7xsFzlISNN1VqHOYY=;
	h=To:Subject:From:Date:From;
	b=mracHIlJhp69E6bPpOPhi3P2vDvRMSqw0TbxmJWBza+9yIIo2hh0MOr1N3cEe4qgH
	 AopKzvSTWVCmP0c/DPMh4YoITUkQsVpGnl27VP8a3cpJyNAHYqMZNVXqDKYzkOMzBl
	 4zuDpMb55DrasPzNcSBWxeBTHiW3qFVWfdyiMANCxsggVaewsMUja7rIqhyhB95ZPN
	 0Uxs1ujUCs4J13kdWyiO0K3TT5eSPcu3HbTievnxhmyNk261au2oB2h0JJiCeBUKBf
	 Q4uIzjPc0D5F3xPFYcA+klnRkkwAXwsGTuePBD7gzTJOw97FN85YO5llJZ0r0YYMvp
	 SOlFvJNH2JgHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF9CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180639358.28596.2050577181675673979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90227f044383092968c4aca4406c7b6474bb106191a34919a20aeed05c69cbb
Date: Thu, 30 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761806393
