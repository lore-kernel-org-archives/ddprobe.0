Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366533B7A8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759823394; cv=none; b=F+NTZydxnKPCRkPlQxm0MvTQj5piwYH1Fz9e9kGAfX1xdRFzdB10Xw/cTZ/rTmSVSk1WC92e2C9tQJOT1dWsfyU+QRvfusZ4QpfEl1ee1TU/nWN5RGjZE7/7UVj/Tk0Wvopg/mj7dDyzSaipqP02QfIGu07HdDak4/k6iLNTRH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759823394; c=relaxed/simple;
	bh=KCfM28RHjw1PJ+WqJ0skUJFOwubccxn9atVEQbaMpYs=;
	h=To:Subject:From:Message-Id:Date; b=o7cGHfz7t+VTQUn+r0y3oatUU3+KmR8WX7yuCutQARU9o7BTIrSrOMKY4D+8licSUwetBukfFv6QeWQmdGBYrPmQnnDFYo24mtaG5f0XlhML8qU0QVxDv4+xRV7xjnuMtpywWLT3oipMkLtepDGDcpNBZwc8tcP/mj6rKt6KTcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adIe8LwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adIe8LwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3106C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759823393;
	bh=KCfM28RHjw1PJ+WqJ0skUJFOwubccxn9atVEQbaMpYs=;
	h=To:Subject:From:Date:From;
	b=adIe8LwEQLGNepkC/NDDyxNg2BsugZ6fDw9bjVYCYrYcm/b+jsoVozC6Bkgr+JF/2
	 fWtKxkOClOF+iajjqg/RIodkMLgJ0XFFZCPBgnNrhMworovhOvxDqvYS5HGxeGOaWf
	 cHYH8hSTU2RLQ0ZgC/FkNE3dvpbpTu6vqwaeTCkPcDQBIqxdbb7t+tXhgmo5+X8Los
	 ZTS/yrY5zncz1CA1LJ1/NP0Kf8BF0rCm+gnyJG8cbJXDkCZXSU7vN23bC3Q3+hrjg6
	 WqQPnyOd0cFWAZTeLl3WTwede7p6kR8xO3YOV6Ve14BgM92BqAPk+phAbxGMyb/AWd
	 bubUDBrkO4NIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011ECCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982339358.32454.7318401975485597293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9464456acc80b7931699e77aa00e4f9639ed05e1dadf025e315b486ea751e0
Date: Tue, 07 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759823393
