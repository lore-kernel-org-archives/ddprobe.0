Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6E02EB854
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755610194; cv=none; b=NAlFC4ZsCfF6KSKapC0pieVZRiBIZQUeEXVAJWEKmi2NzqcIrZ566cxy5/sgknFB4+OTN+TgKnnoaVtz3GJsWg3f0mVQl8pts4qRf1DE0l4Z/227uRZSI8RrkbP+RrnhqrjMHbaRPRmS9ttEA6+VepnQkO8HgJf1pzzpd0j4cEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755610194; c=relaxed/simple;
	bh=iNPN3mPGZQRQw4XanuqoZaMTTFASnVTOaRFk4PjFI0s=;
	h=To:Subject:From:Message-Id:Date; b=glNGwpM8QVTrfulPenZv8ShIKQ2fNDmROl1nI6yIal+dms2a3tAqv/yK+vL4+ZCkcLjpbCdTBBOMnPeREFOccSi2hlb7xeZVbyYxr+XDhV6VeJnvZkxychGeurTfMrW+Hy27IPce5Fe8/IDl+qKMoQbAWgGwKo7Tip30cUeSw+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6fSFiN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6fSFiN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F980C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755610193;
	bh=iNPN3mPGZQRQw4XanuqoZaMTTFASnVTOaRFk4PjFI0s=;
	h=To:Subject:From:Date:From;
	b=Q6fSFiN/WBCGM5KVcnsDhsp2fwacFhi4nKcHyT8uTTNXu+V4D9BIQPFi6/8KAilj+
	 qYpY/EF66llyksnavDvzW7u8nx+c6RuUArEILxGRadjNw4F6CBSqyQpyEFdLdUwfUO
	 5bF7X0M0Vl4jCNuhIrPEBrv9Dcobz08cWl4fv82pJ1cKkhVERdedQpCoEimhwZ9cJY
	 Ad4OWdD/zgWy/8w2aZtOKROi3iAt1tbGk65erYrcSL27Kfbrk+aW79uPHIT8p445aI
	 0a7xSdKSpbw5LX6wwTgIMnlcWNx7pjIWMQzG3WxLEwqTOv0RU61xBGeKYA3OjLSaKR
	 K24LcXx//wxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31FCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561019357.3054.11666939644290545354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8e1c9db27eacdd72e577feda403354d658be6e77e8344950ad3ded01e8b33d
Date: Tue, 19 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755610193
