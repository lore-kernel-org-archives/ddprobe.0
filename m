Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DC714C586
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715599943; cv=none; b=geUTdAU+v4GtDM4CkK4N5FPqPXl1c+C0IdMlxrzsGyfbvgvKsKFYjZ7ni7aHc4lADpDr3Kisar40Ua5bZLC4pjd7x82LpipdoIlj7SgiRX24TsXNhNNDzevaqSMPFy/5ZJMafR3eHLzgITvHQFE2KxyPSQg6Te6L40qMS0e1Uxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715599943; c=relaxed/simple;
	bh=MVdsRRR7JbOWOe9SfsObg3nyTK9qsrlnZ+97G1yBdkY=;
	h=To:Subject:From:Message-Id:Date; b=Xar71jlxJZrCeJLx3J82+V1gI7cIf/IDucPlr6/MGboXGqY4KzKM3WoCBbaFNB782Q9f5AIAqliNaN6QaYM7qjVX2qbT97N6bLAAQ3f60l3rdescJ4mBPnbEF955OuAW5jcQOYB8K2qQ6MecjSsHm75UNEK1SoumT2p/Hdn+Ox0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLxCspXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLxCspXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C2CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715599942;
	bh=MVdsRRR7JbOWOe9SfsObg3nyTK9qsrlnZ+97G1yBdkY=;
	h=To:Subject:From:Date:From;
	b=iLxCspXG4G7N5jDCH7ULpERV/zNFwslcQ3KadqZ8pF4v2CeIiRC/1rEeDss8AYBxG
	 eMpTIzkvjTm5gSQgkzxcUGgcQKJ0SX0O9xRrdHm4mYXmYVdTbqDqdUT3cIAW5AR46B
	 VE1dOg5KadHvEm6wpXI+AsDLD+Y0ycl8G/jL8NB9LzDvUI68YrQHX+tHXfRa+sfzAy
	 +AvXmfmww++uwshojzXESbHAst6dleoVEq1GDHBwU9jC5hsYhcxk0RERS801+e2jFU
	 Nxw9PyzAduvy8qK+focz8kzFbQPtgIxNURb1Wb/nC8plzDH72TYdIE38+BmlUEzmUd
	 5ThF5vYtBdlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC444C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171559994276.7944.18282616163663158383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf05760a180ae814d728d84170adda07600680c2254e413b34fa0f781133b01
Date: Mon, 13 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715599942
