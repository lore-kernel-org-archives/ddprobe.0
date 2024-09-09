Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF3C210EC
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725926154; cv=none; b=syvIQg9aJnJsW8KoOT9FSA7g78cBHTD1ZyCrIlv8BNmxWOC4m97+GxlTM7Vh5PoadTNXt2S4lSKRi0ui33GS428buSilKhsa19VvO6LLJyRgHDOH8UxXBbhVja3cz7XQjVZzp5QUCa5PYwiv7moOHWN9bsCdytHGzzvvunZRO+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725926154; c=relaxed/simple;
	bh=RJ3q1jJo3+vWR9latT4Qli+WObi/dYqaLulrZ6ES0qE=;
	h=To:Subject:From:Message-Id:Date; b=Y/uG2WKaqZ3c22WMzqe7StZgUD+UeZdENM7l20U0GExMP/9pHlqkyiO+OfsGMFh/3pTWE34AJigDayOgPy74eQijJXlLbbfjJOwzT/IMUMnaxLOSn9fYLdb2vBx+LxVGtERFQTL/keSkPRlpUvVleB2NR9jtqJmWGPv5Yiqz6jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd8+8NRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd8+8NRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DB8C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725926153;
	bh=RJ3q1jJo3+vWR9latT4Qli+WObi/dYqaLulrZ6ES0qE=;
	h=To:Subject:From:Date:From;
	b=Sd8+8NRzmLXDrpWqQqDHc0/970mLMVu8XMme0e8ELokp6SQJ3J5X8+Z3/4hvEYTud
	 sFPYxT3/qqqb3/9MaNTthLWOhpnk5ng60eVHPTHvsBSDGTybB8WMviGkf5zaeGUbvR
	 RHZQqE592GEqXxxeK9O70FgAaM1/evV+lKTtSA2uoj2nS59QXC5o/qpFSo530FXjOc
	 ExefWVEU3xOH49VWs12RKck9L+fNqTXTWTrZljsZCswW5S8Ga5fAiyOq+hnFQCi8Kj
	 ZO3zH3DhlN+gaxOfwYK1AAq+hhvaNDMRs0PLzfTkOva0VGyy6SHIzDb5M1ldMLgshX
	 AUF0WaiFxtJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A32DECE58E
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172592615362.19760.1123992055808880376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ed34fd5eda0687a666110a2e9faa16e10156894dd61abe72fc8ec003f9b475
Date: Mon, 09 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725926153
