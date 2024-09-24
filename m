Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC3713AD0F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727213154; cv=none; b=lYrUTusCvHBncZ3JzfW7UzJFWsPXLJgIB6yBFFEAD9KexBWRHJevy6Kwz2KdC6d1mUqunUbiR5Fw0PvuGby70SIpKnTltwmkQ+QyzFeTeiY2txDljXo7V5FwiTJiTC3yOOMuXOakMdgW5EsWBi0A3KV2TDht0qYOi0EPxsb3HMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727213154; c=relaxed/simple;
	bh=9LcVqgbFt9yMV274EFSDKphTH+Wwnne5pUGU0xlsHvo=;
	h=To:Subject:From:Message-Id:Date; b=uV4HS2G3Gkru/d6snEOVr4h96jCK4Ok03I2KGFDi5gqNQ3+X1+djQ9lClNkB6aVgmSo7x8INsOwVzz8jmZIsNmKMkJA/rFmjSoBpqxGg7FFa3luxLtZFKDVlPXaJsOQ5/Y+1/z36s3i+66Emq4E58sL8sc5mZGFDb0trHnB7Dbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUj4dwG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUj4dwG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71F5C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727213153;
	bh=9LcVqgbFt9yMV274EFSDKphTH+Wwnne5pUGU0xlsHvo=;
	h=To:Subject:From:Date:From;
	b=JUj4dwG45zQnseuVfN22uqieF9L7NHZdvKgxr/zpJ+Dw3bnoGwOk+xujF3Z0ONpGE
	 ph8iN3SJa6oZ1ZSeZwB5FviIUBrvLHX71VvnJ/x14Owkn4DV9PktQqYjeRmLwGX6sk
	 Xtdv+8Mvi895uK5XiI5visMCON+QXU6PHHzEbeWb+25JoU4dShZgUT21f66GFtSJ7Z
	 DJubccYjSPPDK3gPB1INja2715XrjzO3/QMDZBYqcEhP37Ilv3N4QXb47sQfjqwwJ7
	 0H7QO2I47OpGn0NjUQMcXsrtlmmHhJKfc9yJXPkjbkPtbsyLgp/hWFdnncl1HEDTTJ
	 fhFQJZgJIOigQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D0ECF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721315358.32232.753133406373990871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c88aade3599b8a3b0ad91b568ff47cff2b9ffeff208ce3bf2334ad21cdddf2b
Date: Tue, 24 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727213153
