Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B248315D3E
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764240774; cv=none; b=quio6dbCReRCQpIShnwknSk55ET7v/Nb+W3MeSJyJUrogeEducPWmlz6lvOl9kk3JfdVqLKpJW+T9Cq+W898thDmTsW6ESyBsf/v4BMoSmQ6CnoUmdaS4EGdf8ki4Yagh7LEtXlvowRQwvPX2u+zsnUkCdNx32KhhXnYb7a3MVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764240774; c=relaxed/simple;
	bh=BDSkunHyAYlXPCjOwaj9i30SrwubdaYz8MqDazo8oTs=;
	h=To:Subject:From:Message-Id:Date; b=ZKXAOIjlcPFZgldlK9YI/WmYijawjIUjIrDi+J5lzI6AFpPcnTfwWpA0iFAnBdsNTZYABr9rta/LJ1gAcA9uJOaAA0hXJam3pxM80JghEA5/4ooMenssxftR7WUvAGRp86WkPZe57c/FHFtiNrzJ6G6suYvUhr5PffXkj8+tglI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbrYGORC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbrYGORC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBEC116D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764240773;
	bh=BDSkunHyAYlXPCjOwaj9i30SrwubdaYz8MqDazo8oTs=;
	h=To:Subject:From:Date:From;
	b=AbrYGORCDNalkMe25hO25Ag3rMBnEMq6PJrJOATgT+SUtuDn6WsykICFKzqE3EI6r
	 VuHd8mD9NOz5FLZtElVQKvSns2q8P++NsMoxHRGOJRjv0ISuiNWm9kxz/5Rqe+L7oS
	 wicGkumZz9IEHvWCR8uyfEcn+cEHWKEo4bcX+XNA1SZst4t3e2R+SqMf4FDjxQcpKD
	 GMBmTEcV/BQTF2JxZsNwd2HYp8zBWi5vVHn0AfgEfJ3iiyKz+9OIbmG3SC6mFJ7zyu
	 mSLEuauamDVqB1JPZq3+IKObjpErOz1eGzncUIdx/g7ZChRMsN34OYWbUb53NSqoer
	 MEA3xCmyckxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E7D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424077359.19707.17547704111726378561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cb18707798b65208ea0233b624abf2bc0a39141cb54186d2647589522a3d80
Date: Thu, 27 Nov 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764240773
