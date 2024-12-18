Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30103192B94
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734566154; cv=none; b=pcL3rtCltxwLSWnuMfx/gNK/JI7hzR6M1D1fST3ulPYcgH3VkFPt++4NO5NGPrZgkDm01j2rtMgeuX88BU8MIwfn0S6iUpMntstPXAcSATaOucvsWSzpMHoqP/Oqv6dgC5iGMNYi9nKOAewq2E3Rowbnk39Y2qYmU0LSFuo/680=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734566154; c=relaxed/simple;
	bh=RKNr2eW/uQRgmGA9WV/PM5jmquDZb39RTZlqg/WDWQo=;
	h=To:Subject:From:Message-Id:Date; b=owiqI57DkCypbA+j6nfZx31ydQhTJXzKBW9bh+TMxnQuzRvTdgKO1ZyTToigGPOyoeQe3TeOm0+mIbceVbpLIC5nFgcWxdOFlnQ3L3g3WTaGepcUP+SGifdQfgCvDZsv+WQASHDvAa5M3gKH3iYL1ePjGPnVCO4I/H0MphANNCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7BuVMJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7BuVMJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20C9C4CED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734566153;
	bh=RKNr2eW/uQRgmGA9WV/PM5jmquDZb39RTZlqg/WDWQo=;
	h=To:Subject:From:Date:From;
	b=H7BuVMJR4tcUarCjrDLVGRz3nWKgss0ewqfiBPjRJ10cAG/N66M0RA2xfyj+Mvnkh
	 dk0fhuWGW0jZCo4Nf3GF6k1H94XnCpsVijsv+B6PeSEijcAFnhjO8wGTi7LIDIwFf7
	 WuyVGyaeTfw2lU4Kh/MpcYUU+saClOO9YVums0PGJvkgAeeQIxbhoXddy9GHQw5LC1
	 P0PNw1CrAAxvd8vljKrMkvgnG3RGwYTPm2jNzUyt2NiOGgCi58YnNlrBZSTE/JRLs4
	 0kljz9M/gM5/clDYgVPxRPUTPM4RO0jzU1Rmvn5sEr8J1xZ/fGAshr1XZvyAn4r+rU
	 uhGEol/ELXh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E21BE7718B
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173456615363.10063.950144102092537532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c6d3cf2ff1bbe365a537412033dd4e926282527e533d338e3fc5d4dca2da87
Date: Wed, 18 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734566153
