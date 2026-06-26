Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B813AD510
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782512914; cv=none; b=jjR91wm5PK8DQ4v5LWtsJQ4bUx/3M5r2GVGW/1xugDIkfrmHyK3x4Ps+CoU7ULcR7tKlKzeP8tofjOXTMahr9Nnsx23RqI++ou1e/A8O7JIngRfUswd+T47xq0zDdYDwGaGMb03j0/sbPd0O1s+Up4BdE/roOtapiG5Ln+UkmbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782512914; c=relaxed/simple;
	bh=7BEW5B1BcZsNUe6lRDlGewjQZ/Kl8wh01rdZrvWXhIc=;
	h=To:Subject:From:Message-Id:Date; b=pYDON9i5Ez7S52D4+J3mroCMWElhT4FwXUzPilvr7c1wRFmCLit5A2/I5hPLWgTRshw3TDdHlQ9LcHnlEUtMDSkp3GbDuUrPH0ntE7JvoubNB3t3tPBs4zxx6u1Bq7a/2878tb6f/pmB5CONXtJdI7TobIRRHfF8JIy0DSa5jtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqJe2BxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqJe2BxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D8C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782512913;
	bh=7BEW5B1BcZsNUe6lRDlGewjQZ/Kl8wh01rdZrvWXhIc=;
	h=To:Subject:From:Date:From;
	b=NqJe2BxWtUSLKKMvzk3rt2wq7+0cicyfkDj3S6lXKk1ByZU1Sq1eaqsJK487trGgi
	 lV+XyiWWJghVp26nL3PFlt5qta8efqfrbC2IZR1/YPDGGWuNbrMEMlQSbpj1I8nnUs
	 /nVC0QX+EKmQnbEgTc8wnaKyqt1JPhMXI1S9y59KHdKM5CGolyzrsjLAQz9Oon276A
	 hRsxdAsAOd/I+3JozsGxbtUBEaT/uwfLI0tcCzikn8+Fb6kOminMKEFAT6YISyZD8q
	 70qNWgJ6HubQJ9bAL8O2O/5soUBwnheIwPFfH+UGF0dpLSLI6nw6DXFjZkia51WVkv
	 gT5HmLac3cz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD632C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251291370.18696.11351740310141193365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501104b01f18350f970c8b45d5303428f0d290096820ac7a46abd7045d4ab529
Date: Fri, 26 Jun 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782512913
