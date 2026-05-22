Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466FF37CD4D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779453154; cv=none; b=KYvDSeRKyFyWew5Ld3V3ULeM6GuoK6EyxmSqTeU0DakAhmj3Hp21pet6JxNy9pgf8Sd85DdZLNry6adQCuAVUWR9qDgXvx8EgGOjxNCWPaV+22FG3eOxo0IPNvthwTUgn67xGHAiR6N65gtwyvwypaSX0lgVDKjKzQFGBlr4DAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779453154; c=relaxed/simple;
	bh=5WFeqfmMa4R3xb6TVKvN6IoMMk6sIECdPzfTKMomxXU=;
	h=To:Subject:From:Message-Id:Date; b=Nh5wvHGecJqd+LhTtuLOODfoZZV0QuRRSEBkSsEVSsOcU8fGQcCNZnHnzFlYIX/UWT3mbXUZdgSjodeBEvwK5v72VNgegQfGx/zV0ah+sgXI+2wyHYv2pXrCBHTFnbyzWPkNKfzEd5TTmqVM+tIlvDf+gpEQA2GdI3NOY+5gDbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm88XPAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm88XPAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE808C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779453153;
	bh=5WFeqfmMa4R3xb6TVKvN6IoMMk6sIECdPzfTKMomxXU=;
	h=To:Subject:From:Date:From;
	b=tm88XPAIBcMCTfUvmyrB+I0f62D3cg6EoywEdfwsHYaaRqvzMiWW71vjPD5A9WLk9
	 t+zges1CYQHJLzCbw5ihkQlwfPTZPK7nNTQedtjwnhuCN9NauJYxa06ftEVRkrFf+e
	 IBT/Nq8+fapzskcgyGJJ+hgYOohihrZRJ4kbq0oJY4P99VfvTfXWfkqcssNAbvLjjx
	 BFH7zT+1zq0zAln+8u69EzyqDhzZGFOUDPPICW+jPAp3ttzTyc3Cr6xMk/odxdmQ0w
	 wnt4VeMO0hRmraapiHFfHyRfBzYjf858gKtsIqXedCzxPrMMYO2kC2Apzf8jYdNFxq
	 49ZqEL4GdK4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF9CCD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945315370.25741.15297023697627245815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994bf0e95265a3425e4c2c3af9eef9b1d6d88d14ea562e72765606e936995dff
Date: Fri, 22 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779453153
