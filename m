Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0393F4A02
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756360794; cv=none; b=t9/ohrcho1zMwcAA+1EE60R/8J17azYCkE44Q8AOS6CHS/xCawnW+5n9sFpaiL3eW5EesJYyYpPgxGgfCiFgElA7ZexMRpPTDJWDnc/uDnP9vMNy5T2bINofDLHVwDsNxt8rBcBTHppDHUwH+dmVzhH6NnkkYZU6X1gv9MAn9lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756360794; c=relaxed/simple;
	bh=t+owKMzx7vnQz1AXNbC2yRRr4mxZNJWCJAJvzO1U5e8=;
	h=To:Subject:From:Message-Id:Date; b=jEsVx9rmAdHtc7mIHNQl0BSFGSwEXCmZCqE+aYEfsCZDS07ZrTsfUDUFNNg9VSe1TIIg8az4rFMkd4mmkMHPkzLip3TNO04kydOxktCAQOxsIWD4sCrdlhZkyYQK/ErsyjWgMTHClu+LR9iYSLzxeeu/mWXj+47DsxqzpGnJT/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfzQeN3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfzQeN3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA0FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756360793;
	bh=t+owKMzx7vnQz1AXNbC2yRRr4mxZNJWCJAJvzO1U5e8=;
	h=To:Subject:From:Date:From;
	b=qfzQeN3m4RAQlJAgQHfHm9HcodzSaBoee5yNrgwUj4qiO3D4J1kRZyal5/Hdhxa8H
	 3lm4TSOB4PMD8rSNAzDDTjA8zZzf2ZH77nDWOCe/yR1UeCrMUYDA/TcKOXPkWJUStw
	 g9bdtIfezS/JqN0K88sriIeWEWXYqFCwJQlDNl7vreH4GbQDkucBptPjfBXARLwylL
	 YE3ep/+jeS+Vk86H+QrLExJrkrRXfghrbQq7zlLc/taPkmDskWvnGW/Mf8+Dzpuela
	 CUfef/n/7DHycFwsQ4mhuD/NVRyku2FBEPs+vtKy+VxwwIoJ0ZP5QzSgb2LE/HCy9Q
	 xehXOkwKrtpZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAD8CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636079357.20964.4586729492619736614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28367fb6cc2146bb9fb83cfd8d52c3a608aed5c590bfebed9de16306d8510bf3
Date: Thu, 28 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756360793
