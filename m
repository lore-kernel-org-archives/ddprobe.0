Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A540D3CB2D9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787687434; cv=none; b=YuZ98lAUcext0/6g9LpyFYlObFAR5tZ3shF4tsJJ2ABkhB2LOVxz7tYuJuTYdZO39HAWR2ahwHMoj0gn5a2w0JCGlEQPlhw96JH3MyxwX/fPCYE/ftJyeNZPLEn6n1NQShNEdK+5GQnnBfqfYCZgJX4PYpaKv+WaKialh6WZywI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787687434; c=relaxed/simple;
	bh=MzsGxG8K3+1vmRDuMkTrXLtTkaGIRsv2JfHBVrELNC4=;
	h=To:Subject:From:Message-Id:Date; b=I+wwjRGO7ShcwxVSWRsM51gsQEbieR0AFl7eIXywlNZdSCpxOvmHfLYoDT98zwabe+XEPszBQZNIJ87D/t4Cby5qKySdTkRzAXcXagbF7iAtX0up9zeG5bzOe/rm7neIZC4hu9FFvPiWISI0B8+Fbje83znWn8uUIl2EzqNVcbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz4GCu98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz4GCu98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB345C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787687433;
	bh=MzsGxG8K3+1vmRDuMkTrXLtTkaGIRsv2JfHBVrELNC4=;
	h=To:Subject:From:Date:From;
	b=rz4GCu98ThcQkZaxCwc0bo10KOCLybDJZY/lsNERibSJg80PChsFpGLUZZznlPg+p
	 2hVhPDrSWkizzFNtLtr3+md+0Qu/ZRWvwU5Z5Ry/tc582jyPoZCrOv9jx+ojixKGe/
	 Q3+cW6uGB8PeYcg8Cg6cToel75W4azRVwrPyFbkZvaSJeGqlm2S9k9+W6ktGRUYe6u
	 sbMz6a+tHnZVLdG5c3HvGVcl4D3KzgxVFp2WSlQUx9kmcECnmEb+0Z2jpF7OvR9pk5
	 ZQu/Ns73Gbpz1+/4V7ObWeCY1EQs+va78IeUUFWVv4jzrWbqyRl7UNGWBbkil+XqQH
	 FLk6MZJy6Drgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9FDC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768743368.22637.1674775765445095755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88765c70415772e0954b55f9f7acd1848c55d365d241d5d258fc2a1132c11674
Date: Tue, 25 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787687433
