Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6231F8EEC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754415594; cv=none; b=kMI3N6VfwQkVEm7NNi4hr6Teq56ZONPUot0x3E+1ZWXStbbxvkKN+0m+uakoheiKDvkzwdt4Hsmcj/UOto1k+9bt5UpG89BHC4RcSbNTYtfZ4UKB4/ecO4A91LihzPmRyNWyq1lGuHC0NAArVYtTyBhubf33S6PeKbNXnFh2TWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754415594; c=relaxed/simple;
	bh=K2E0I6No8QCx+K2nfbxEpBgiK3zU0lh8PS9yDOS/DGk=;
	h=To:Subject:From:Message-Id:Date; b=qQuF+Xwbs1vz9Kt6C8s0PrBSZCB+sbDuQWpWqpbXJf95FzeGTrZeBwDiNt9y2bw36yWpCYeGVuxgSV5ayI0j/gA5XSUUIWewrls6OQnwmFoo45LBiPk61HhL8rNZwYjLg9Iu06AlagLi1r7AlGEy4X7VaeiMxQM0rXHWdgT/hxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hb5L7wye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hb5L7wye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A671FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754415593;
	bh=K2E0I6No8QCx+K2nfbxEpBgiK3zU0lh8PS9yDOS/DGk=;
	h=To:Subject:From:Date:From;
	b=Hb5L7wyeG9S+/7vjJY2HVm6wCxcOfveYAbNTwzuE+Cp7shju5VP09YhpwG2TeqJ4B
	 9LAVKN/iY29mhfbxOXOTKdTU5ETUpE1K4VEbkM0SOoeMYQQNJRd0uhm9s+Uz/sqcqm
	 Zf4C7E0/zXP+3iIFoSDFgsHuBa0iOKB61Op8iFjvZONqo5LL+lPE2bemSQmeghf8wJ
	 p+mVVHfBUYHKjO36HbD8bRFkug5T1y3nunYthmPMQcIDbH1fb0/WGos0dGMKa0h30O
	 aIvoi4VAm+bBYMdJY8YMLBbDvE616OywvXYTzB3F/dzHpBDzQc+VPnRH+flR7G3AqP
	 U3KYwedqy05Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D6C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441559357.23543.8546907090577113003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6cee7254c4960f7c0afca09b12bdef8372aab763cecf3f6f1f4a73bab40f47
Date: Tue, 05 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754415593
