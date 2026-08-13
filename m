Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7018C3932D8
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786638634; cv=none; b=Y8g8cZNTBCaV4qg339rORVlR/ZCmr5Nch8XhPk7f+aJbbfjLOA/+GsSCV7zecYXtl6BapbaZ/NXj2CtX9sJU6pgMEMMeoWqjdQHi5arzqHAUWXvH9PAwe8+hCdhpOq/6htHynnKV832qsQ7CoY9vK1LZgs3buuwW2mvxLL32D8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786638634; c=relaxed/simple;
	bh=mfbtsquSFkJfjLX13Txc3SyJbvgccOtxYiL0ghXWwWY=;
	h=To:Subject:From:Message-Id:Date; b=ooQWXyk4EEVYOz5W8RRTiPTQFtyuLP6BS19ONNMkInS0UchACTX5a/jUsoB6k92mLgxKhdzxVlqdoEuIg6+a49EsWxcooMeE/GZ0fpmZ0ZlF1rbTyV3P3GJA0r1rtpTrWvSid6Y9XacT3/9uQcqtEOkNqqAtCU9TJ7Rpt8q3qLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN+I11/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN+I11/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAABEC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786638633;
	bh=mfbtsquSFkJfjLX13Txc3SyJbvgccOtxYiL0ghXWwWY=;
	h=To:Subject:From:Date:From;
	b=dN+I11/Xf08VCnk584BKpv/wYeVAMCxQIZl6dLluy0bFwYlC+mOrZb9ZNi5UNdyrF
	 xuPKBb6HIfEGafxxmo97RiDQ4U6cqlVft2IM+BgGRderYIYsTKT1GbONXZ/I76k5bG
	 uZ0uJERg/C2TU2I7qdIhKfXbmNrmfmBdAdKXlMRjgaHTwCt4aetUrGtGu7NUIlLoXh
	 XLpxyoeHj644pH/eocuAUcLKtHxqsUQUzQcc9UrlGDLJxZobz6Dl2xemlQ2MLUU58J
	 hIU2Ggkvn9HVxqw75AoI/uZP9EYVHeGp2Ntkim73JTw+znOr1sW+p1fEqCUUo82tv7
	 wsAo24wLwzc6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C27C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663863368.27086.1601400702574423810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbbe27aa0f5089dfd109dd99438ab3f6a620536970299d126ea717fa7025dce
Date: Thu, 13 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786638633
