Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55962418346
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786650034; cv=none; b=O91ZYr4VLK5TwFTKsBG/AqI6Pg1l7UKMtXgj8RCmDTC6ciDpY22B/SOs/9ZL46YVhuMug30O6XdWwzSfLYYxfKCFRjDGuuiwiMGDAoKJgq6hXLuiwc+pXKAGpqsFkc7oF26HJ1CIoE6PHNL6J/jcMDugHCWWkRDMRBIJWSHfDn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786650034; c=relaxed/simple;
	bh=BZU09hUD0AeRQZmxqc2CEE9fBFEsiCuTPjTWtKgrOT8=;
	h=To:Subject:From:Message-Id:Date; b=NtNZncBvtYNUYLXmqKQqXG87NtA5gGufms7EmtLqzklzRz7M51PsRoxC68XSlx6YS1MHITS8mss/aeiZiyEBb43bW1ouGpdMGnivV1SAxuqdWULYvkOOS7ujdd3epdE1Lo/zQO/qY5Z8uVr0s7NIiqKYfMi+r1PgVxR0MseXZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3T/W9gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3T/W9gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2230C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786650033;
	bh=BZU09hUD0AeRQZmxqc2CEE9fBFEsiCuTPjTWtKgrOT8=;
	h=To:Subject:From:Date:From;
	b=k3T/W9gzlWfmzcmEz/jr0UraMscDIhpia6sO+RBA7BUgRkHI7zDt5tKdafrMG/kJT
	 15QPWETu1ErYkWoTYZsUaxiZqK24ix1vKVMj8choGCAdyzQYfcdY/19JOxD0GyN04l
	 1s1Lh2c8GZAfERGHXKK7SwhuXoDwd7pEZWSd0t69oCDkW5Oj2QfRYczPoXmJqgw5N8
	 712r1uCLqGDyFWibAo4hUkcSmtpG60ftKQ6S1Wp6rbqTE0cEFDgyNLIZb+b4/8i5Yo
	 jGvlox+imuCzOe+8xQUQw8fip6vzaC8KoBfuM92txzh70Jf/aWbMl5LpT/oMSkm0IQ
	 8sEmHsH0LR2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF81C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665003369.19892.16237929835405529709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f436a1dff5c57b78215b9181eddf870459ce1ce1778377f11a62e77269447c2a
Date: Thu, 13 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786650033
