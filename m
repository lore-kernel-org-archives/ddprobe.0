Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1889B17BA3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727984754; cv=none; b=RCZFTr8J6Ch925p0jxWCSihymTTInkO9yOq0wgdEPjcbwfAeMM38TMH9yqONXpAnSwXm68POvjKDT2E1JZIvDPlB/18XWPGndxu5j4DCOdqpTP4MUvzLUTbNUUYetVjuJ6PhKQJbtfXBjb/XJuno3hE0jcZNEzQk+xO0qOBUZug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727984754; c=relaxed/simple;
	bh=f4RAGI/Ebp0WWWyxn42CzW48/AMjVDLQb0Rv5rai55Y=;
	h=To:Subject:From:Message-Id:Date; b=I81c3VwEMqpK4w9o31RHw44pXjYZ/sZQ37k0YVDR4XLJGglqhrchWI7kK85Uz+s+u+Dbh9iQ+D3j58AdRtqL1169j+odX6cdy2z9X0jT7kLkCzB6qImGoydxskoEY4llLqvtzY+Y3rFfRbOogjaaXWeAZLEq5teHxrdlaAw2/UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYoha0w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYoha0w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68ADC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727984753;
	bh=f4RAGI/Ebp0WWWyxn42CzW48/AMjVDLQb0Rv5rai55Y=;
	h=To:Subject:From:Date:From;
	b=oYoha0w+cyp8Cod47amN5VSBamKDwrRq3T+TB+B21lYEf83I/jV++oRSXG+iuHEYU
	 MIbQ6+PzfWMoLk2/VD33HFjIR3+ijU7nn4jGYKgqVcM/yfWN9nH67/hXwXMJvAuLxJ
	 XoaDESB0eCHk3myjILOOmAupQl1laM+yrPW4+rHlyQf0Lvv3z2Np/VxsV7piHb5vHv
	 GOd+7AiHcm102px+8zU+2AR2nhxgostXvkqPMkFnwmp5/D0ddo1agHAFWFgjNg12ve
	 ZRbboEmVmZE/1J6D0yle08tNSfAB0gfrlKB0ldvTasvL8ojPva0KNXZdMXUafGQqrX
	 cXVQY3zMeEGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D2CF34B9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798475360.17777.12545642065641433577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be2912fcfc5e2d49a85ebee3eb1d4978b9b45ea4bb5b3fd6f5dc7bb0e08c217
Date: Thu, 03 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727984753
