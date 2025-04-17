Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E3A2580D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744914593; cv=none; b=sGeETvQeV5J0U1PWA78ai3JPEaixs/FAYRrqrMpsg+y6bFIb2Q3QGs001DB8uM2w/CId5ZRmXwD7rrIbAn2ie2M7PVvx9KzVICsaW9sP6vF6lBfVfopwvCuLw8cDqhmEAVE0QT8UeMtO1Ew0gyUA0OduEl8u/5hbGPaYdF3CbSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744914593; c=relaxed/simple;
	bh=eP/1eOTrBqWC0wfoSy9ZCLHvrsYJsJNpnZLVJINDVMw=;
	h=To:Subject:From:Message-Id:Date; b=YBtF+OzqDTyPm4FE44+JpJtYs9IimYpbmqcIvzWb4w5d8gWZaIvnI2Xg/Bt+0sroQmft686x/3OYH3Pv/ahYotuhH54ch45nJ749ZEFyZl1UlGoZs77PqPQCEQgPdmooklyqV2qTf0bWhkECv38t4cT0TR5AIIqdXIA+Oy9YzDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Otbf8d1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Otbf8d1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D5AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744914593;
	bh=eP/1eOTrBqWC0wfoSy9ZCLHvrsYJsJNpnZLVJINDVMw=;
	h=To:Subject:From:Date:From;
	b=Otbf8d1JMngdSo9kvhmJRD4jWXEksEbVn8wh0ALnoqrBtdH0PPQLX7IyHQDClBYfF
	 tr4lHReL0ClYwdWaX1owlgnlYaBg6ynrfVjY1JfREMYih/IfophizhvRnXdZz1XQkB
	 e3TJDycFFYRUBhvgRY7OEiIpUN61DjK4J44u4FWtYXJyy7JqjCgplF/ZPF20IHf6IS
	 N+YtWYgca2UO86wECSHpdYirqyvH852uWc+kyEM70P80LixElOCBzBvMPmj1jqzliM
	 iZfc2Dl4yitIBIM8Hfb1rq+VnnzMcIe2ZHz7acHUvVQhwQkBHOifT9Xgl77KWEz16L
	 tHrSingzIIPLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9307EC369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491459359.6041.10260689193590267877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d30d84f5190611ff75ff135cc5ef17be969d8e81e058ea77be09696cd3ec6f2
Date: Thu, 17 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744914593
