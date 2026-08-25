Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B75B3DA5D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787666434; cv=none; b=gH2QpwfCydnLIgstLOyhcQ7jcP/n5BZHYGMEqBlECMlz0zHD0VrJWXJsgLsVW8oVURJDtm1Av1SdDH97uZXsjV9jrxE45odtY8HTB3/V+JUqJ5p19Utp6aZFWcdl0kDqIZPtgTEg1howVO/QBhOMIDkqelbre8Y/Egr8rKHYjGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787666434; c=relaxed/simple;
	bh=7Z+eBRbVv4+FjY0IT3SnvGEuiyiAFvMrUeLXvvvhUAM=;
	h=To:Subject:From:Message-Id:Date; b=AnRKefTQdw0Q1HkbKNG2aew50abx3giHBEd25wyLvnu7Ppw1ZwyCTXZMSOaXrqB0moL8KjcLdC+OwJEUvD8l0+TLa+WmjuhX8QFR8+5iK6fVoOeWm6V0NEehS7ShZ7N1EZubS81+Ny+EG1rOXA7IWBlRxyV27yAnGdRUxlq0DO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt5QKg6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt5QKg6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19D8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787666433;
	bh=7Z+eBRbVv4+FjY0IT3SnvGEuiyiAFvMrUeLXvvvhUAM=;
	h=To:Subject:From:Date:From;
	b=tt5QKg6BN2hCNC/bmdHIETOfKvB2hjy0pwgLCYqMNWGGXOBgkH5I+jcivfSjRDrRB
	 l2DP5gL6AgxeVCkAHIf9FrnfsMFr9QjmznpsCmrnxEGXJ3LBqjREU6aLk2d8hc9TWI
	 6dj56DJmv6k5EeQ5aJOzBRX1QVbvc8IEvJt2AUN46HTivlTsraJF4+Rout22bS7eLn
	 pLeMBVKxXhxq0qHDgp1zKhHg/X9NRDTXFxHHE1m3tQE+hZ12X+C9NEQX7TN0hASoIt
	 OS9NxNlhRWsgnFN8lpdWkG/VrORHlx0VlI6bBJoiJ1eC/F98fqh9yeBVqBX3ysM+fF
	 TL1zCr6h8cmAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE9C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766643369.25750.14967817401051456456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e48a5152c696e7fd4018abed2fde0488b0249f03b0943217c81b317676b522d
Date: Tue, 25 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787666433
