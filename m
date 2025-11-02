Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461281F5EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762103394; cv=none; b=twT4kRJLMIgvNg2wjPSLBnpARBq9oCJg7ljR6gbxF60TUY88yGnlpPEjq49rc53yU3YYap+ZimJTE+ocrRimAadaw976Tv4PVcLBhjDTKc1ptX1D010yZ6Po/xpJOI3tb358lAJUG2gJ/WGF/Stuu8/MnGAhTiLuyvPdx/83wz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762103394; c=relaxed/simple;
	bh=q9KRpAD8cSgqw6vuMwF+ZI7yc2l41ibmdsvnT1YalNg=;
	h=To:Subject:From:Message-Id:Date; b=s+s5xK7lyyFaweQQrKvUgrrHcRmFQhkUz2CpZ4H2gu16g/3CLIHfUbdyO+VrQ9dp+vDbh8u8GSWWsP4KgvWhkG3qiSEKTxI7n7jowBn6H02O+SRYG9KyESn79AaEvw0KzrDqtVFzBLhy1e51pr9fduIAuc+yi+xZvAH+VteaV1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSb2HY5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSb2HY5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11C8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762103393;
	bh=q9KRpAD8cSgqw6vuMwF+ZI7yc2l41ibmdsvnT1YalNg=;
	h=To:Subject:From:Date:From;
	b=kSb2HY5zuJp2u2rqn0Dxlw4FMPN1esc30oWrcbRXTDaw3XQ2rhLHL7UuA48G515Hy
	 r2pUokN+K+qfkuUPDo75l8lfguOEDq9ulGwTpWbv7HcXpwo6d2nnQAhyexiLzqOy6m
	 sWalNlyImwq1qq7Usypv8+JLFvuIq/JcN5TKf+bocyxZ7+1Y+NX463u240doYvv7Ix
	 /5GcQGmqFSe6rAO+HC4J4qfykW3blC0hZE0zBc518UcJtzCkZEPVllhCx7JXqyrFKt
	 XQeYbRWrFESD5aBkKMv1JBnmB6IOxgsU6lHjL4P2a2tyuQJH3KLlwN4+GqThGVteJM
	 VwxjzutchQyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D838CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210339359.1608.5582092705388105288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe843ff413e41b5fa5e50e5fc9f345cfc9c57197bec52b6822c40289e0a1b406
Date: Sun, 02 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762103393
