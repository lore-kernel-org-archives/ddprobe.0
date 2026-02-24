Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1121FF23
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771893894; cv=none; b=IG/8hI7eIie6xoAppoyB5kc6opEjgVXDsoB2asE1ohnlxVc2xL+SFuseX+k8QisWGXDUVo+/hd/LtvJPCQYbyWujLzf/irgOTXCF7d3TcGIhhCmNLyOQdZaWioTD727DiHubj76re7TxrbKdqstZSsfoWPAfEDkGh8jH5tnSCLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771893894; c=relaxed/simple;
	bh=MPFmsgsEhZ59YSAIPSg0a35pN9q3iTss+3sHByWA7hU=;
	h=To:Subject:From:Message-Id:Date; b=UiC89ErQ4QCMc+2Xv7FQH8ZeJ8ZvYS0+ubvQh69O+AOkGCDTYniHhSB74OkDykhq7lLkQLOJvOZFvYSErW4ar3DqzVcK20HY0zuZieYQUZcRkJax69Zbm+OZ8IAiAGiTQMJQsc6jQQFF2VWF005kgcL0z/Uq5GCbEbvYLKNs41o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRYeqWIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRYeqWIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0B3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771893893;
	bh=MPFmsgsEhZ59YSAIPSg0a35pN9q3iTss+3sHByWA7hU=;
	h=To:Subject:From:Date:From;
	b=aRYeqWIiZ4VI8tzywZOT3SLQBdnQzWBVKLE0VtLmsriBU0rj4XBJRmtheWhFk8SRZ
	 dXLWyyyAFIu89sZfQqpikVAjVL48DPO/Fowypp7aciI/DzFSSoEIer9IQkYgd1F9oE
	 nK7e4uVH9TQuxuAp4SajEhLo/n10hZrrg49VZFkZls0cMGCLBjcrlE2WVt++sX02fF
	 sxbdSXFw9ZEyd3XovDfTAFz8Is81GN8NmVg/PyJYx1QpOHWdNmPYBvOQNJKAiT1cPN
	 Fygw5ru9g+APEZlOEXec/msQANbT0SOlemsm4bWpEK37E6tu2WNEwpCjlw5ZL2Jftk
	 EVWNhwLOfXd5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C4EEEC2B8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189389359.18065.443056583248437132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbdfbe333712d6fa9456b8d40859e97006284e9696f239e34a85bacc7205a15
Date: Tue, 24 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771893893
