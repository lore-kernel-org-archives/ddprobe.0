Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6C33A9D95
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790652634; cv=none; b=OGn6GS5srkvbjWKf59TbqulQgYZeD+/rJPqamdF9RF/0WIeSZfShayXVgkn4SmxvW/VqrXkAiFDsKFtKXgLqENyWzfRKJr4JVqFN7kNTE3cvcZ1xlu2E30iv5DUicZXeFZMQzO4lCa21UbbID8a7bU70FrYQ3O6Eir9WxZFERYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790652634; c=relaxed/simple;
	bh=OS3QQjWgYtT17ej0P0OFz0WvBs40GpRv6j/IB7k1234=;
	h=To:Subject:From:Message-Id:Date; b=K8k8mdRE2r17JjqDuC2wIXhYZbvy3QvHX0jJ1Gwk0BZDz7YRR7Buj6aCz7W7HH/2nXHdpe38xT1+vIiHpKCuFTgXSc/Ff4UzniWDqmcv0u4vnFI0+ZTNS3gFZW+VSUQ8L0U/GdPIBeL2c2bPExrxv7TpxQNpgwUiSGQNp4YJsfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs8JxYbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs8JxYbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D140EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790652633;
	bh=OS3QQjWgYtT17ej0P0OFz0WvBs40GpRv6j/IB7k1234=;
	h=To:Subject:From:Date:From;
	b=Rs8JxYbIm8L3ThSgGX3j1xx/unzB8ce75m68077p/AvgEOjPCP9Lc6+Xyqn4eAbpx
	 9wBlj2jGmkwoa7dTp/Z0r372vTNIXAlpyLTYNwby9P3vDRPUASa4MZEmfRAsf4ncDq
	 TixmAG+oL3y0Nzj+gHRIoNO8mTzjk//9hB/NV7An5ufdZz9AOXeVuJTxWhZHzNbkX3
	 cOMGsEzKivGySo2CPhMfRlql+avfp1pFB21YvZaBNKHLA8nAUrWWkXmv2y8na536SD
	 gf5dYIc/uN5O9X+6diMsgTUe/LIyVHbvisH3ADpXMf6TxuErKASXg6L54PWvPD3HAl
	 UFoUnDsuEd1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB3CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065263368.8670.1578681030794050605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd308b35b5837d39fd264db0e05563916cc8787445ee776ea63e3fb87dbb6629
Date: Tue, 29 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790652633
