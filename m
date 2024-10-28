Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16AF18A922
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730097954; cv=none; b=ntKcPYj1HizC6/LidGQArWX30oSRmgCMRoeA0ZJrZ+t+bdS4JiVRBCxqytLom6TMgPbyot7OCHLk5f+ERM5U4JahzE/8IbeCkDYRlldavbY1/i0xizPe0IOO//WflNFbeZAiZW3SroW0Bw9dWg4m65U9ji378ez7ORuqMgxjLEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730097954; c=relaxed/simple;
	bh=aCwKfgmkJr9GxTMw4o1XTNy16F0dOvdwS1NYtECWL98=;
	h=To:Subject:From:Message-Id:Date; b=L9DtlUmyBIZncXwamO/r3/ukRT0hOB8T+U16HeJTTZnOdHTUg5NZ7UPxiTUSTz4aSpkkmkpU25A5RMRbvO6G9Oze0UVirFDGsJ3FqBBABwclMdva5NK3Goe/E5jmMu58p0IbXaraskMWVA1Xu7YE8w327IAwOwsZxSqeqqrQgqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSti9h7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSti9h7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E6C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730097953;
	bh=aCwKfgmkJr9GxTMw4o1XTNy16F0dOvdwS1NYtECWL98=;
	h=To:Subject:From:Date:From;
	b=OSti9h7Rocgxst9jXNorcMLOu3zBGo0Ec19c+sFPVcS10YNYbJ7BnM+9kDKvrpz83
	 zt/j5vxTgg2oUiuhgwLzp5WBqOFOqHxKEgvgRbxqhWU5rp1OaSXLkn7ijRygCihTIt
	 8+O7BILCHIBmg2aOqnY+SOlTeYJgQdRWn5v03ym6lDRildVTqLEwcNEmUyoLJXijgJ
	 B3v4X04NgcIIiQO7g6WTka6t7TocU/8TmjtvsleCPHZnnMTZyAQD0mbCtglgZDG74B
	 HmbWB9/tFihFV027gBNy02XetIVkIIq+Em6H06nGlF8Em8vhMCeu4aALTmIONPkZHP
	 4nVxQ4ZE2sGEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB4ED13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173009795362.31089.7918067866365744572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b337b158579ced3b999848a5069711b9e02e7199bc0c1b469b3144b93141c0
Date: Mon, 28 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730097953
