Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431A422F3B0
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741736935; cv=none; b=k02PkN5i0aJ4DarFboQLaVGXs5rNR7eIZcUw0sP0FjJ0/GaUQPXz9Gr+kWbpCwY2QVPHT5lvYcI9PzpafMD8dyNoM0+Eyp+vbm4igWZ+PfDDWKRgeGCWYkmtuChuNejBJXYN1mo78j/f15tyNmI662Sy9eWiM6nfnXWIDI4WCj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741736935; c=relaxed/simple;
	bh=uZG6H8R6lQD1mbqj3hbi7gm3RugEPJu1X+ki9Tcig38=;
	h=To:Subject:From:Message-Id:Date; b=iPSoNCjtf01LwVuXnJoqYXYvVbe6/9pRSOUGiUSdDknT07Vh0d6E1xrv2Hdy6G/OqrMZOnjC6uKLU7NU6tDQiL5LnoZCBfGvmH2KvevQO/onlG2tPKEj8g9rO7eDiYmRQo/i/4nYfIlFamWIMXMWhK1FuPxj4eF9LPtFV9nPr8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWun3Udf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWun3Udf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA9C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741736933;
	bh=uZG6H8R6lQD1mbqj3hbi7gm3RugEPJu1X+ki9Tcig38=;
	h=To:Subject:From:Date:From;
	b=pWun3Udfr8pc2jULDRLxWXrYe9OUpNuEE026b68CjedqomBb/0D+oriaiZbUKYzpn
	 SdfsmBVZTa9wHVF/DlluT5j0NUWYBQWJVcq4u+qCxN1+PpI5tmYNKOnnzFtVND8CMn
	 56D09L77Q4KqCXrH9IsMnJzks+Cc03PNV5nKHPPC4pYgcLKnLuvCVp9m2NY84Qsrow
	 F7RAEtS2DtJcsfyBmDSP+iE7eXnBLCHfJAQRuIMAf51aiMsU2rkzbELRh3I9PPv5Ew
	 1hWNzn+waeBTc/WH1HcnWr7vIObk0wE80Nyuf2R2UUaPMFB8FE++i++jCP8XBe+1Ig
	 dWvbfG7adnNDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F452C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173693357.5172.7040601670873828675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ace68e7f5d6ea28ddf6f9cc30e3ab48ff756424b3fabb933d438f1270ed68fb
Date: Tue, 11 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741736933
