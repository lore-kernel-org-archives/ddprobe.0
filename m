Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273EE136988
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742806194; cv=none; b=NiEhNaPBGlV1ksj9egKTjNjJm7nFoiDW7lDQ0KPzBFP+/wC+UP4iK5jHo0w2+KSvBJi75TWrylCL7jNIEJGXcZIo9WVmobyT+fuF7jecIecr8eWEB0X58SZhgO/EHSOKvP3ZpxKN3zGBGHzL4TBU1vNJ26cp0SDzdpDLZmHd8HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742806194; c=relaxed/simple;
	bh=jvm2V7DcpAFclzUCx7buFvK2mmapkbtp/RACgRs7H64=;
	h=To:Subject:From:Message-Id:Date; b=lYAnSizzkw8ygmgoBtfXdkk54pCPPLa0ImezjySlQ9e8LD5kejLWSzG4VdgNPdvin4M4oGWVEnQooswWqH09ghy3cRrEh8ms1ucnUOkRut46YodGBvcpVOP5kxzfKmxk2s8hi5qoXjReBKylXE9st4qSkOEzhUOTXUjYmXjZ6QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPQOffFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPQOffFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742806193;
	bh=jvm2V7DcpAFclzUCx7buFvK2mmapkbtp/RACgRs7H64=;
	h=To:Subject:From:Date:From;
	b=bPQOffFu6bEQO3eMH+aewpdnE8isrfdvT0WRkW8YBehsDimiyK4267QsNL+jsHjam
	 dKip1aRyYeGyFmeMdwtUuIhukqNA4MqpUjWPob3Zrbg2NYgHzpBjwtvslLuazI70SX
	 fsTrB2LyqZ2eQq7cluvB8AVWePxF6xaayC2THqABLylVzqFxZCsHOM2SgXq5JM2M3M
	 bWL9T6DXF3uIz1Hm9HOpDeOhArq9GXRGKFWrTs7XMBCFJGRyWtJ1SDa25nPVWM8k+g
	 wafjnRmUawACq3eXdhsIzPep/MUjaS/j4M1OQCkvA6G1nvM1x8wbq6KuxZqrbDZfJv
	 16KLLBhIAqL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B44C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280619359.30776.7664471412632886239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d307ff9a6a91471a21250aa6ae598c7170ca8112e1d54fea95e1a5e185b2f3d8
Date: Mon, 24 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742806193
