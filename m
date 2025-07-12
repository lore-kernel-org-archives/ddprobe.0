Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E964D22A808
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752358194; cv=none; b=OJrt+GFoqmmhbKj2Kp4y7DkKlXM7jxV2JZ6f37Rkc3tsgkU+YqZiPC+nHWRBO1P+CKE4dQenVhLjbNhX+KtE78ZBKw4DZ6xIZv45lEldDIaOYBLFntHvo59EVon32k5zEHjmP79+ZVE6JhsQnAHKIEWa1ojRnjslmcbL64/amf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752358194; c=relaxed/simple;
	bh=LDHIOTlQm/WkgbECpPJE9EZhwOiKDmrlZ+Z8Jtm16I8=;
	h=To:Subject:From:Message-Id:Date; b=sfD75ltZDccVMXLFA2nJkRG4pZwKPLfFAZ7a7JNh398S9aPkS6+4PEhl5HP3ZwUapt6RXwFtVDKZjTsecljcr/4reekp97GGmgEiB8oUCHah2BqAlfoxxynje4ov4VhwTPPTad1CmRM/D76Qn3xv3wHOhjlZbkhfBY+1IPDeYXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEKRLSwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEKRLSwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECAC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752358193;
	bh=LDHIOTlQm/WkgbECpPJE9EZhwOiKDmrlZ+Z8Jtm16I8=;
	h=To:Subject:From:Date:From;
	b=XEKRLSwTXHziEC4Up/MC8LalskuZb+8sSWMfH5ZnEAXFLSufRBqG4bDJk8LVlTX3k
	 cBx8XM9L6WORKjpC46AuGbheJFMvBzya+5lwqIEW5FfkNj7H3hXyGbKDU4qgIcYHYV
	 iWYqpACU202E8WTGUcytYGp49U6BGp3gMayoXfY6LYEu4lhBzgTCliP44Ur0vjN5rP
	 yVzcfwJUlyriMABQM9veDw1UjCxQ2ndWL1ZoJMvZ0uqgV+Xs+dWc+CktEHHA0hnhnc
	 gnqoAZCK23XgLOPQFCMzITlqVW/LyCtbexdhOublhndwgpJfxPElx4SPgGf0WYlLX5
	 92f+ehk9Cgkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC7C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235819357.23307.11974872370390753092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fd8c36cebf96f69355bfbfdf393ebd70d1dc0fe5ee4c8da230ef68be76b707
Date: Sat, 12 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752358193
