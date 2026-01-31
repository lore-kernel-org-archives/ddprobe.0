Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167652D8764
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769835234; cv=none; b=Vx7mQW+4ASPNvd1lmd+Xl6XwPtLcHiDY/2ulM45Swb6kid3Voqwe0a890wS8fs5BDCGL9gRpxU5X3noxCo9zdZGPswV9zUHDDEzX/eBmzXmoFyc18TJyqXkqfKGKRSrVFcIIj8JLsYrWRgQkU6xNMtJmlfbPzYi9EqcXMi2tjcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769835234; c=relaxed/simple;
	bh=yDFgLoD4JhX4FtYh2Vx6eRGCpP/LaEGr2a2DBCpiHQc=;
	h=To:Subject:From:Message-Id:Date; b=R4PTNKFcmQPjhwzOCm8mz+KhozgeOZEM4cbGWQexQfkTWeg03h/NB15TumpMr5d6T42m3UAZ/meUtBnTnSRBHi/rGdCSZJyiq+sO3E78cnk5fmFPeey2YE+BlFpsutMDRMrmQc4lEghHqd/SS9vf/ZS2rG6gKkPr1VUqFWc5CuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mxcbi1c4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mxcbi1c4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6782C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769835233;
	bh=yDFgLoD4JhX4FtYh2Vx6eRGCpP/LaEGr2a2DBCpiHQc=;
	h=To:Subject:From:Date:From;
	b=Mxcbi1c4b9DVpi9JXLQ0AXHMyMGya2KArBH+tFZNWWp2h1oN3dR1pBzmoXhfZJu/H
	 UgX1nDdvOI+F3QikcvsuoJNarieUTifekNxwDeSYzYVCM7yOek3FIgFFMSP4qwAUUy
	 9lhWLtTgnwLQdgqxvEQCFBWbvrOulVT+07KY6LodQC0775okW8CRkdeHo/2r/EIPR4
	 AW4PIrky9ohf2uv7HmutNXV2G3aWSH37Fct5lBK2yvHSpwRkaOFwPOtwOrCejtu90P
	 qVHZnQTnC5NLP6sLLQYZ6TLxAiyLm0LAjNGa1u2fN/qCl4Z9BI5ep+M+9gVDSRG4Hz
	 ORnyeLJuSNAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C6E6BF22
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983523358.28542.2291987781001385755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa573dade319fd60c8a8f8468b8b5b4ab97cd7d57d8cf6c898ccc91ac582a48
Date: Sat, 31 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769835233
