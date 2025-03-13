Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3C1EFF95
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741909134; cv=none; b=SmPHx7ebwJFmBWVikfof3qW/KbZfpWv7RcEVO3HgMHVcsiIvZqWT4be8i/O10kIdgm6ipJbCPl4XfJb5VEBSr8gy7WgCjmoprPdrBXAYWR8tvTZH/B8f8K4NHXBKkslZtNYYwiV9YtsU72UUIr6RhSsDsDB69NAb8ZFcePbvTQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741909134; c=relaxed/simple;
	bh=T0HLKfQ/1scveBxavS1WlzNL4WDOwMpysEfzdiF63Q8=;
	h=To:Subject:From:Message-Id:Date; b=MXlDyx4ZapVC3/qtjkJ8zHAjzGcBQp0R5/SOVqtrp/v65siCBHhs2oDnBSdfZpVF/J6/tOjZ0OtqkiEQk4StLoQhp+Xg30l/LeL5K4TPTYkNg8itk7YUtIWE7p96R8brrSvp+OJnyTtFJnVCRqQ1q2eKYH4BTXcIZ0R9L8gsjs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4Qrkzvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4Qrkzvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA00C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741909133;
	bh=T0HLKfQ/1scveBxavS1WlzNL4WDOwMpysEfzdiF63Q8=;
	h=To:Subject:From:Date:From;
	b=Y4Qrkzvog2w+yp3LYLor+SYSlnvEWQ5XbdY5m9xfDvkzrtRo5E3/l5NWw6lsSCSYa
	 Jn2r4G+FM7XpEwYs/HQQkzO32lM6VEzqqaIz9C3LtSMNIGVb2/TnqqmOCMAwTL8LrU
	 kVd7KWJK4Q/9awh5mwYxEdTM9iYPFKJY6lwtAMKk4MmaRfE1xo8TuEkqqHRbx0DZE8
	 PLVwWHpxJUTD/d2Z/ZzMZViA9umRihw9k09G1wq4tjCqop1VKWPt9j+UA74NOt85cj
	 b+xNcHLHLmagvQ8ticBJLumP35Djqehg1sgqVAqBHSXI+o2RU3LnFIS8hl713DLr0B
	 Mya9UgPIoWyJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997A3C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190913359.7708.17678828754588084464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfe6bc866ed59b7f6ab47e4c10e3244e061ff649cfdaa85335fd61f60a66f94
Date: Thu, 13 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741909133
