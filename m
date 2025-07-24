Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190CA23C4E9
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753352394; cv=none; b=jgdI+PT9Ogf1sNtZN3FNXyBNNoRYgugMH5wfPOyul08Cz1RFA9grPqrszvgL9v2v08jzs/5cXvIoUWRv2L801R4zRhe7RStyZs2REqN4/edFlHEN3IITm6Z6wBR5UuCXy3id3ZwhWtRC3ZBsyNaTQkSSjWbCU42oPD9VlsWMYtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753352394; c=relaxed/simple;
	bh=8MhmmqJ5vCnuNVMTxIHfUMvYrdnwq3eoHEekJ33QeLE=;
	h=To:Subject:From:Message-Id:Date; b=ZiwjNasSW1GaiaG4/HNyls7f9BlFmP5SmBbNsfJrXRwt1THe6g3+kOcQf/O0JMMY60o5Rzfonuk1HvyoWT5S/i3GAeFH+Tz9IbkiZ2WV5FIdBOku1dvV8dkWk4znNGxgvH9iZqCRSAzr6RHwYOTHnCJ7LGTDqdd5FUHfgKR2iKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yq1sIC8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yq1sIC8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDFDC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753352393;
	bh=8MhmmqJ5vCnuNVMTxIHfUMvYrdnwq3eoHEekJ33QeLE=;
	h=To:Subject:From:Date:From;
	b=Yq1sIC8HtpzjKvX88GikRPrLb8FA6sSLjdfoVC9lzres9hfT4dYt6HGU4RU3WyCpw
	 xTeCfvmfa1yrU/ZzoBVT/KGUkF+vV9ATqGeD2rgEYpS643AjkVlzLPoUOcVq999n4Y
	 Uq0aLVsViPA+98szCWKeEgQHsZsy3M4PBOhy4QsVwTg/sLRufbTcT4ScGfAMRusZZc
	 4YkQU04xhqftX41ImLhYRTAbhhSltli7CPhSV4vDjLhkmnKoHaknxpT9a4m+0qz0h0
	 68uhAYFO1cihvkj9r7pmxIR0W3fX8dtPNfPQ/V9ca94dn388y4WoxPuTRSPuZD3Fx8
	 RAq1dxcJ9AfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A8C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335239357.2026.108699149919612646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd735e599d55e464c71bf3879ad054598d3f6bf63b8faef2acb763bc552c097
Date: Thu, 24 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753352393
