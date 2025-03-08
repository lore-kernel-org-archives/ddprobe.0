Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DFA1392
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741418334; cv=none; b=JMw7jid8Dk1CIQxcl9jje0Kgrboec3rOJomRYfnZttDeZQyBow+IG/lHQzmtc8H050UXATheCEAkE6T34KAesuAIWaHOjZkqNOGjZ9SGqK0L0CvC5xg70wgXLksAWcoTh5IZ+t5X3mY+/1cxmKg46pFSRHD/XqeCeLdSJuUqWOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741418334; c=relaxed/simple;
	bh=vyqRhpyutohLEHpnC1ZLAQEvWFEpz0wn1Aeb06mVOCY=;
	h=To:Subject:From:Message-Id:Date; b=oF2k7jmv3F8zZUtnDHn+aZYGGjOHHJA9uD1BhB5fbWX5TnY5KiIL0y7rmx+nKGzpStabux7glFX3ANOE8sCshD794YLuB8Y43mR0vbl2613t5nKsCGX0AL5yOidabx3rIZpCf7r+w7UCdYFQuKa0rFx3BKFIqDwMLgrcoF7qHBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBj26WEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBj26WEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B37C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741418333;
	bh=vyqRhpyutohLEHpnC1ZLAQEvWFEpz0wn1Aeb06mVOCY=;
	h=To:Subject:From:Date:From;
	b=SBj26WEgG8mBN2EnEF5iuNgfsN8fv8XN3wmwHGnYNvdJFKyr8UbmZJuIg0AhlzZ0b
	 NS9CEFmKAuf0K8/6AU5fl1Xv8LfRQ9N5VxFYpATTInZ6ZbeVmb6Ll/+wsYZK53EVMg
	 ZuV0cPzf5HHADRJEZtcNyRl73jl4aFesuzc0VM4qsZSmXtWlngVC8fb5VjC/ONO3Ro
	 gVJdRMFdSQd7r3en8zR5SjULWiAn+YUyudszIiBfw/dqb7NNM1UYocitbV3IeGR9rZ
	 Rj+5546yIv5F5RSMUSrNVAR/WjMlDjrTlU62NtLXZplZiW3ArncP3ABDxb5gGwJrXA
	 LDjh2MiaVLZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9807DC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141833361.30471.2870882131052023117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c8657cbbed1fc3bfe404eeea88b68b5f9f65d83c78953dc2acead48e89a9d8
Date: Sat, 08 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741418333
