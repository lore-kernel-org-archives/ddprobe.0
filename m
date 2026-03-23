Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCA022F01
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774236894; cv=none; b=MARLKYvF6aKrhU+h5DAYAW4coFesREzS1v8JGl2qWkysun8IRUXUsJKptVuJ2aWRW/FKtxa+9MG46QWNcwSu/516sc1E8NTi07SlrUSF/pnhInXa4wcPOx3xRfzUcXaHD8H0H2gvo24ZELth2gOyma03tNsHiZuX2zvtL+L40dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774236894; c=relaxed/simple;
	bh=SpZN6CeuPgEzG3j19zpdeZn5HT7P2oxHtv+ooOyNTFc=;
	h=To:Subject:From:Message-Id:Date; b=t35x7T+A31AAtLr2F1cpZNzvlGPL4nB2iDBzwkLNfTIOOovDuIJ+ITOCS5FqOkOqMqfxZGbcK4tJdttlhQdSJht8vqT0Dsy1K56YAIlOl12PfrVbgnHArI5iS4+YZc0bUC49BK3LM/wZGZjzhQZjQZDHW0Dl1UZ3DkGwZTJyC0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT7DbeRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT7DbeRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774236893;
	bh=SpZN6CeuPgEzG3j19zpdeZn5HT7P2oxHtv+ooOyNTFc=;
	h=To:Subject:From:Date:From;
	b=sT7DbeRUvIqS11yK1oNnNjzdTdddsafPmCmRrlQvezSNzjBzFLG1GP0iEXCtkhgfe
	 WDA4wjeiHnVMXoCwWwe09U0jLsrTgpC0s0JJLwmonDtzD0BC9DuiKq2S8pdYwPBRyf
	 n6oUQmkTN6OFucl8OMC2PkCgKsWZBNoYq0PF2P7iYbcNm7KLw++ohnp69zEdC34YP9
	 KzdQXvggbKzC9L/LADFgPZtIl3gG63DdxonRcth1itVMUbXsiOpzkMnkrj+MwucasT
	 tBuixFu2zPRkXUqXw39IvL/dH7lyRPJOIuhVu4CuD9Z5q12GLI5B35yKLWvu8AX2Sg
	 i2eNbYMn37CvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90884D58CCC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423689358.26623.17896242261530903313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43054b3ded6a43ac9e18e645ad942ccfe228b900c6971c23aafe46ee9d319f2
Date: Mon, 23 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774236893
