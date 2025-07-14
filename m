Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A12F246BD3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752503994; cv=none; b=dm5qur50siyJJUhLyzeAajyZFjhzQ8pxZJIht/Q9lIW9Z3RMvnPE4XtWI7PcxMMu+1mmQP387bcSmH6GIJJEpUwghjP5ZwkI/dWUoz2TB+pxZKcXD5wsENyXbDNj7OeyM2AeDnQyvNmjo8f45FLtQpilDoNWhD6+XpdWsQ61WNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752503994; c=relaxed/simple;
	bh=Vwev179ooGPFN9LtkfFEq2bUqr/FvIY59YIAu9RdgzY=;
	h=To:Subject:From:Message-Id:Date; b=vAQHIRmoQ66wTZdsIAlwJRsfpqVcx9KoH//L0a+NafGTuiEd+7waJdvnY8DbDwJppgeMVDCigP/mp6Ym4c2wiLsldA99IbPnuESRiEB4tfEcwO/ZtGQYR1+0KrTywPpTOHVBoGmktF9or7QRGjNorhHJHvzXE9KLjobUTw7Fk1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWm3UN04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWm3UN04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1847C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752503993;
	bh=Vwev179ooGPFN9LtkfFEq2bUqr/FvIY59YIAu9RdgzY=;
	h=To:Subject:From:Date:From;
	b=RWm3UN04jqB8UA0rdJBXTWr8EEGz2ur69XGM5GIi3COxmmKobhIxiMZ/8mtQ4ArL4
	 8BV6k3xs1XLZvUQu2QwY3hptQ8W9iU1E6ZVUgLwyl04e6I04I0OpO5FCOUmI6vnFCf
	 5XR57/+bIr7oFI9tBmx1JElp7gcA3UWMA5ySC1ztLPR9MZCaExe0RCcEQxCqPKYbEs
	 j9pPpagM9p6PE1PmzxZTllt7z4LHRZ3Gd0E5dNsnV9xcmoh0b+axD2DY8NrDtSJatD
	 NQSeVavulbU1/9NDgMAEdF1cQF0n2ZGs+TexD5nzr0egANfit3AqWTeXrrInslpgUx
	 8yfKXhU/GkMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48CC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250399357.5410.12172550348773081676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944e876f9e77a7281b345985df9425c92191287a101844a30b66c45c7d3895db
Date: Mon, 14 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752503993
