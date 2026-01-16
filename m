Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D990346ACF
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768539834; cv=none; b=Kz6jR6URWa4UYFH9gJYl6VcJ5Jsm6tPlc7mdfrybbsHX+sJgFu/MPjQlXiZ175e4gLt0h8JA/wSBylfX1BDuhdgoNHLItPBjf2YqU4OctcEo9aCADeemCSqwWaTPTbx68Gcs3Tix3MVQ+hyBRTGXMZK02rqsNXSG2jW3b8/1VVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768539834; c=relaxed/simple;
	bh=G6lED63KtI/h6YRz6jJKl+uZLJ1GuKqOZexWGg5lagI=;
	h=To:Subject:From:Message-Id:Date; b=VlFPZc+IlhWXeeIEXsX4IVVo1jxQHG84N72kONcFBclgIrS8r8+00IFifvTAOyeAG+Nv32Tq0xqtK3Qk+RVRA/+WqBoddvgortTsR79YrOQ0XamAWtQSXh3Z/tTSHAkRLJVx74ggOP0S0ZIrMexZuj3NjkC3zn0cgreWMkhf31M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6myTtDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6myTtDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5433C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768539833;
	bh=G6lED63KtI/h6YRz6jJKl+uZLJ1GuKqOZexWGg5lagI=;
	h=To:Subject:From:Date:From;
	b=E6myTtDTRhksnnh0SOTiyW7UYy0RaiMLJd1bG04WTgmFmp6umIHO7QNdocxBz2VaN
	 45E4BpZquWbeVzPh65yQBHFTZy3JYOU4bsQ299xenrHGtTN72bkkcxRtbAiCsma6ii
	 lMeCfig3f14Av6zAB/K1WOsFvem7P/q83OYJAgzt4X8ZFqeE1FOGcdV2pdcGpOvbGQ
	 TFddk3TmznHLGo/rtnWxRCsIzeNtwIIAcj44fIfbir2nhHQFIXHchlnBV4HsJKJj57
	 c4NNpeKXBa2vN6lLaBUR+xYNGLbZ31KEZ26C/25fQPq2RsqidYBnePkiqntl6WOpxk
	 BUwnD2nsgSozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D2D4A5F6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853983357.30964.5433297715134409035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240c0edd8b63880342559c3947f1b2de4247c14f702c63253b67b26d5f499fe5
Date: Fri, 16 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768539833
