Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFF43090F5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781375194; cv=none; b=fbHlcwsu+4yIdebNH5kfZu8QpwjBkiQHSeZfTxGinZYQSRPT1HAqwDN7M+kp/DTForZx8lsjn5eBM6cDkpwuanOZAcIKCivglEP1K2kSD9OeW8qgIW2yFuNPVmLE+xlij2pwcm7KvcpWv3iNEGSNJbKxLpJKIx/YtpSlVLujU/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781375194; c=relaxed/simple;
	bh=TjMRc6tYFrmPZ2YRxDxo3EA8QE50IT1vCD2kPLFWGzw=;
	h=To:Subject:From:Message-Id:Date; b=sRJBBP76Ua4UFg32IBeoEol2Zseq7hvt6067FhwjPLnJZ5a+1atzf6uZxb9vLRtQwbGCiyz5n1m6QYZ5ou9DrnMgU/W45Xvv1O779PxsG1iNKdXixPIGp0IaiXxnvPHvzWdNTuqjEQEE+kKQn0sQQE6WkzHOYbMgRqvFJlmVvGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgKK2Cwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgKK2Cwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2358C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781375193;
	bh=TjMRc6tYFrmPZ2YRxDxo3EA8QE50IT1vCD2kPLFWGzw=;
	h=To:Subject:From:Date:From;
	b=JgKK2CwurQVNGtaUjwmBi3oFs7FeLhN1eZulnUn8FEJHq2I1f5zKWWcT8y/GuSx8q
	 3pTdZEQWG1wUmoVYDvtmA2XNOBulVuAfsRjxyaBR1sOQY3lNruSfgsayDgAZOc84lB
	 hQNaFZoflcuyEL/ZM9WxTc4A695bLj/aezCgXdtZ6R+7ahB1NZp368W5/NtwOe7lcy
	 Zc+yfAQOyn2vrzqjizbQepCOHtLEZlbrTZMkL51dbvh62D5QCaXd5pFSdeaxStS94T
	 dyguqUMcsCeHkuzixoPGI7oZKqe+WVPz3HPSs4UydA0cM7rijciddG3Bwvd+LAE+Yg
	 iM44PV65iYRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A722DCD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137519367.3662.1902504616235779831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1b0c1d8a39f787448624d2f5b3aaf2c41dd146c04a85e7173b2cb485338172
Date: Sat, 13 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781375193
