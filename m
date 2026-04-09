Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C8F3AA503
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775726134; cv=none; b=FeicEBOtCK6OSSD+OtaOGQifOiCmrBpZE6wgTq3ZxCDJHeS8+nGov37hOnkJVkIMGL667+1xs7nuhh0mF9EIDBgrlrBK48u1vIRT74qtkjeSO7/PQhE3YJYNvVohqwaKW2oemIwxCdrkXg7OLbMB7KsjiNhNQLyTH9GJIKHjvik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775726134; c=relaxed/simple;
	bh=0X8kVxIdb0509ja3F09uUQSFhTTTNPc8E5GaU5A293k=;
	h=To:Subject:From:Message-Id:Date; b=RKq2pXHJf8q7CFhQRD8lfmjguXwi5Bzu8rJ56lIhcPKXMXoXjtoiBl1OGlnZ4DrTXX6EnwSicPnC/0vUGQvIptQ29Z97BdBUo9OLBmQ5A1SG9BLvcb4osOYiR30na5/dgnxSYOmurexfSYSYemAcegCW8gaPa7AZnm0KDJ8kKzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn1D4QZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn1D4QZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A74C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775726133;
	bh=0X8kVxIdb0509ja3F09uUQSFhTTTNPc8E5GaU5A293k=;
	h=To:Subject:From:Date:From;
	b=jn1D4QZ93kSio90wIIhMX9nN9dRtR+L6yOltjpUz6EPd+kLrlOtSme9QKtnE8/0g4
	 f+Nka4x2mqATWHj1UGCKlhx2RYpHx9GmUwqaHm10bW1Dn6zhUXYDMpJ71V2jt6AugB
	 5beZJUN0GAAqEiGt9/GMJw13TeCS5gN0Yu3GqzD/UORzyX6VOMCZX+5o5uxU09oYs8
	 u+H+Fjh6VKQFtqHnTpS+62Pvq4ThQqUtzAghhdX0Mrm8ItIaiy4ETasTH4XXNUgHzc
	 pMiaAvuV0A+COtT//ONIAeMt6IkZbA3RkpiBIHblgyxT9zScw+6heD3N6pnlINi9no
	 g8KwQyf0HV1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37BCE9DE6E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572613372.18520.16184948861162353262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750bbb715c83e64e550f718bb7f0ae9f9fb212d8e094ce598f9573c5e867ceca
Date: Thu, 09 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775726133
