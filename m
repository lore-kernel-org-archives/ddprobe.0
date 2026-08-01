Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1273955C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785597034; cv=none; b=nUmlTllXfskZkKCobsNONmVy6IsYf5JsJW5vnYkIBmRis+TKu/66OajYRznPnFRX+xnyKGb2E0+KW9AbCEz8ORDKfrWBDNU8pbljDS1G0Cfl2jpCyAi3zMU3K+oos9HztPSI7yt5zNmCcvHs0FT0WE6/rogM88c3hQnOk2Sef6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785597034; c=relaxed/simple;
	bh=zkyJCegWi+1cL/POCjCfIEqKhRf2+np39CmXNgOor5I=;
	h=To:Subject:From:Message-Id:Date; b=g6MS/rebnAHjfVW3756uthgu8pBSSSEjZE0UIouecM2aZe/WqY5maYmZqjHtZQx8644TVLYvl4fUvbBHPaRE4JBHtsT+5zTy5kyDiCHYgCo+pF7jNCoOTLdDqjqqYSjkvlTwMdUumc6kgcOAP4FFXuQut2EqeqxjpLFPNXz3hr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGv9U+Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGv9U+Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CB8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785597033;
	bh=zkyJCegWi+1cL/POCjCfIEqKhRf2+np39CmXNgOor5I=;
	h=To:Subject:From:Date:From;
	b=EGv9U+Qy7xHVNsT2EZ+AlFa+xrPtea43u2F5T5UyhcWEzRO5J2cPG3MaTMba6YUdP
	 Z4UhuaueoxdIE7RNAojpcSMxFClWY5QS5HImKFbwfqmTNxpaal/yFot4TAUR4vNL8s
	 VwaAAahT+lT+MsRgCMhyx8i5JbGeqi/1bUW087rv9plJm2Eydd+3Fgh3q4LppQhcZZ
	 ndWnapda5ryP/jYeLkc2ntnws8y7tm9rBUdC6N8ogkLVNnr4YiZs6FZ26zXgMCNQiK
	 qfmSAlAJ8q2TE2whzZHFmGhxYeMi7AKIbpZnkE8IE92ssQeVdCBslzIVBV7k+xCYn8
	 +IeTINFTnBNrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C9C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559703374.4785.3313141825630855983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb0da127a6123f097ab8c8f6f205153836b8e051eae00d54fa8e96b7deaf859
Date: Sat, 01 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785597033
