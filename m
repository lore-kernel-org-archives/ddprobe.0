Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2725F1E4AB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766379834; cv=none; b=ueJnWy3CZNdAmmKRPxV6j1z9iIfBIdIYNroye8KDHAKCj000g6O7ni38QKBfFkemVICuTx9vOBLmz+f1+94/uXEA4wukP1HuyCkgWODQXDWAWt8DJuBrqQYArWfb2x+MXHVHDflRKotrVeaYfnJvWmERZMPqzI5qgAj7DcGYCAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766379834; c=relaxed/simple;
	bh=9Vvq3auMfB5ah/2+AclGgok5D8tbQSB0lw4BpkK6qW4=;
	h=To:Subject:From:Message-Id:Date; b=VtM/75kRt3ZR1U/7T633pOmXHbyajTfPu7yGvQcGtgAMoVpRB7sGxhHnZGTLXg4uF6MGqt1z+i/sTNv9FoNi4H/9YsQcvu5tLyJMGWgXuCy716W/xVQd9C9HEUUN2mQSYFe66yIzENEFRRHfyPIsYNTKiyZ6PbhHdYxFMZKxDiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rahjMMsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rahjMMsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F2AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766379833;
	bh=9Vvq3auMfB5ah/2+AclGgok5D8tbQSB0lw4BpkK6qW4=;
	h=To:Subject:From:Date:From;
	b=rahjMMsPltPxWYfvVcRp1TIWrG/UN8qOV5h+AnUGbmjvy/mQC4aAqBfF6wqBo1p4s
	 bpg6OxaPuXav2gg1ztALWEdO4hEFmRfC5O42N0H69s2NcOKETdULQRycWX3QHixTP+
	 qc23LcKmtVHSODYykfpx1vTwSDw2fG7DSvo0ly+UkZEWYvb/5sFNUPM146BkRC8m+9
	 edIXHQFZ72Jj9YJsVmEv6uNKecLP+pk5oEvAQT4o/wP4fLDCuMXB8aDVax6YxNWHPc
	 Z0JtMngnfuv9MTW9aAs7hH1PLSQIzrmEMmW18sl8XmaTor7Y8od/Dj6SFYc0T55n+D
	 3ta0klfQQ4CRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922BBE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637983357.27644.13221305831984812910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaad9ad23c7ccb96c909b5729745f24844ab10d90bdef71530574fe69c28fc4a
Date: Mon, 22 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766379833
