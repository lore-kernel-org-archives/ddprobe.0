Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1652110E4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754283594; cv=none; b=ATemGMUfph8pAiZcHKIXetqx2QQnV6BkYX1ivuWnE33FjIXWlOlq4lHXEBcw9VWj5Wz3ubl88ef+qjXRusDINDeRJME4POpS/qqzkYuDfczbKdf4mQdtk2tGC842y5MNee0EZOkviJtHfeqVWtz35HzW3XCIs30+m/yQDPKKQuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754283594; c=relaxed/simple;
	bh=t0twND9W0kKoRsSsqINbq8F6gBT9nBDSoHl7HT/JKrw=;
	h=To:Subject:From:Message-Id:Date; b=qFwguy+3547+OkirGvPZZve4ZkscEmCDVgVcMMPUE2mwGZmZ7575dERVpFc1v0K7ls7AKQ4FJ6LuOmQ7bVnckeW8cP5EyXRlQOS+Mn3czk4IAQrWEFbmaOedH8pdyzrNpDENLavB1n49u+H9LLxFOk6f0ztbHT2QEemZoDwLCjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIBomcCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIBomcCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754283593;
	bh=t0twND9W0kKoRsSsqINbq8F6gBT9nBDSoHl7HT/JKrw=;
	h=To:Subject:From:Date:From;
	b=gIBomcCs2UM9kzyGgYF4xeUM50Zeb3/5PokuNWBeQqro05PYxlLUL32/s6m4aknyy
	 ZbdtwfJ+VsMdBYjCQu4n5uShVMhgo1V7Gai0knv0HzT7kkX1Dn7lUDSqIGBrGtEhD9
	 5WnVj0gKpIjO1MCYyLk0LJ92GPiYr2Yt0YKxnMfGQgskJifq8oksiOczk9pBWr4HLt
	 g2I0jzQM/eZXVq/pn5179Cg0TBpjqxOlP43zngCTa7nuIWuCCJPnX08ESzNigZKevU
	 YN/Wk6zpDWtgwKsq5m8/JE/FM7GN9IgzMDw6yJeeFN1v8pUXqgnLaeRiv+12iWcGrG
	 MIae1wpXRCX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F5C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428359357.11813.1260450392155278534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fa401488710a582b79ec746d66ee482edb8464f75b4d8b7c26348982fd1e7f
Date: Mon, 04 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754283593
