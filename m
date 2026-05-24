Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED9E25B09C
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779595954; cv=none; b=HmOKR2uNe6UK2ppOeRNJKcubuRt1231ga6tr9a6gwXThVAysmoS1/wHx+cJ2WEkElgJQGcEcFL742bhqg8PgCplKljzxtuRctLYyWGjyFDMBfs1TX8EIPpTaib/YJxXzq7op2xDCRbB9aHnU1O7yrTjZekiRxtRNEd+BeiY7Klw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779595954; c=relaxed/simple;
	bh=ybLtgqMhiTCrT7XTDpAM2oFNXspJKePzpWpMCkexPJg=;
	h=To:Subject:From:Message-Id:Date; b=rBFi7Z1sQnr+7ChnrwY0TepszLQBMkWEtImbdC3eGdL9N3wwOF1riGHs+44aoyOQNFSC9apPCftCtnoR8luaDbuzyad6nUxl7b6pgcT7C5lU67oZU1BYTWLA+rbfA5+82vGR1WtCEVF/BToUF4by/n6pszOwKa/+Gy2iAAzMAQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrPte3Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrPte3Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A83C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779595953;
	bh=ybLtgqMhiTCrT7XTDpAM2oFNXspJKePzpWpMCkexPJg=;
	h=To:Subject:From:Date:From;
	b=NrPte3Npaeb5ipsvIuc9Kv+AI8SEwxcFe+MbIj6DhPIOqKiUatRNv7XkTbnuYSrmJ
	 z8mzEmFAWi7JPa9EZNYJRdjT2+zql0mLMXISbi6kCFRLXZ41cE0zOEuJggZ8ffWZaC
	 kBpoQrodeFbpbY/XBwW3OAYOmtDAxDJVL1CL/degSAJPMarS6jTopF+pssRyXAooxW
	 tTqEdIz4jpjr1rja+jT/X2yFn5elGS6oE8tRcdquf24FHOLqAmv/NlhtiP5a8t1u8O
	 mqt0JrwjaHpGN2TdeNS7SHH1G5U+zmiRzgnk7Z/movmMSnuyU6yFVSpY+f81flvYQk
	 YqlIPdOOBf6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F2CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959595368.23999.3457995712932022512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57eb039e3561c7cd99d8d11d276a96b37cba9c9bb6758115ddb6ba1329a5a4b
Date: Sun, 24 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779595953
