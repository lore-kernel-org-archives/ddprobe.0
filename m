Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABFE302742
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763436714; cv=none; b=p34gnMrCdwioj2PD9WibbvtpFT6irP3O3FI478DOH7IgMy1kloJSssoh/nRSxeneJt7USzIaNTruS7yFuPN3SGwNjOVaxzXIsnYZY/xHDbH40sonx5veRQl8CS8ODwiEuLindpLMpzwYExKrNOCr0nozC1j1FBVpGfSC+sZifBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763436714; c=relaxed/simple;
	bh=zyyjsgMqXjXIlHxewivl9Rhgjwzr0NzutWQ9rX9pqmk=;
	h=To:Subject:From:Message-Id:Date; b=DaXNcQYhnUDn3c75RawkQpTTuBfk/QsUzGdjRSBvyIhrkpciaJkHYXXoHiXkUxwLrn1bqrFeUA23crWI9tLpCxwOw7D3OoMMtx3ryTO8HA550vAN6II7v3YiD4Q0TsUw/DyzPHmxtPuAYJY7dcOYJ5iypm1n7Ov6jcF8ULHXebQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIc0pkTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIc0pkTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99EFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763436714;
	bh=zyyjsgMqXjXIlHxewivl9Rhgjwzr0NzutWQ9rX9pqmk=;
	h=To:Subject:From:Date:From;
	b=aIc0pkTKW2zhHNpE2g1uow0viGbVjiG7cZLUUlji4owRGuVLppC9WlqO5h4luFhsm
	 9QR2zXbbBKRfG8NC0KqNIvJ0BLl8yeJlQWSpdPscXvs63KkAYNzth+TuTeI5o7eyVS
	 gjtS52sWf7ooV8x4tk2Cf08djNrAyWX8es1bJ7lcI/zYI/KqK6v0ezPTBsVdKwd3j/
	 nVtjQVQR5+0PEJMc1Lyv6hkcVLmHJBa4J7gX4u5w2b84vtR9vCbhI/zRk80nImVH6O
	 77Sl2N2/F3iWuXEPBZBIHZPK0Ilf1F1ao/pE+r1sw+JkUw7g+IRt9xOhCIRCQwWKkN
	 6vj1XlwgeItOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E0CED240
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343671357.4101.16874085921376988135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e6a28313b8de0c6f89674093178586cf96bdd706ef6ff9129a8f5671c22389
Date: Tue, 18 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763436713
