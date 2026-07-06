Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0DE399369
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783376314; cv=none; b=koY+DQ5MsySl2BRDhKvxWIHxQCQV5wWyGeLRQ8zsrH9xFkGraGKq8ZL+iB062d5dO2BF6MR7olGFa7X/ik1snd1XWwRORfrMP6qwYXlggL5jLcqBSGqAyXraPmajQQ17BkYyARllFatUMRXOJDMGyf/AG4G8q6qBJ0TLa8NUyZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783376314; c=relaxed/simple;
	bh=xcDTuW5Qdqv2czUqX7NShjKAv+HyksrQw3WsOqTkAUM=;
	h=To:Subject:From:Message-Id:Date; b=iltpJuaGuD8wlm/5m+eWroEiY2LVTijzeXbxFepd3uX9qEmcZtvcZj5a7iJ21dcsZ7zyLxo+rovq9454Uj37fmAxT5mK7pKLWGMzLxHhra4FmjMgSff5UuPtIl0b4YBuYwE3qLgA9TVzqtWmPVBv+EC7BALZ4+YawK2dHhBEjow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu4W9oUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu4W9oUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE516C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783376313;
	bh=xcDTuW5Qdqv2czUqX7NShjKAv+HyksrQw3WsOqTkAUM=;
	h=To:Subject:From:Date:From;
	b=Pu4W9oUIgAaYphjybQCxseQsCypz/oP3+zlaUpWM6PkE49G6Nc3z2ZOf9UM/eN+Ki
	 AyvQM9V3pabPFPzKEbCz28F412/xTxN0PTAagOGY1snqlrW1sqLkhvaHmFkXnEZQ6G
	 B/MuS+LArS/E+KIc62yWGkVTprMKQG0uM2E0AP/4Cru7znqYegvLsfUpnrf6xp748F
	 OnhPjBpFH+hY6dLhBAAagTYyPlmDdzEaNJnS4F68xHdcWHEulOBq7jkKg/hYXQ+Xnb
	 IpyEMjVzc/9geHDyqDyjyumZDGFC6asC360ug1Y7R4bE/hL5Ii2rpWTusk7lVT3FRg
	 pOpEcO5b+U1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC35CC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337631368.14154.3157164709362573887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cddd3d3c9e993b6ba76961de10e876e5e536ed104f95b6323f69aad45439920
Date: Mon, 06 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783376313
