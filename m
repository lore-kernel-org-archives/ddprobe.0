Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5BD397E85
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783670314; cv=none; b=POhc8uP1Iz1a78KKe/oGZb66egg2XeVUjG70OhFuWBg9LttWd9Pgb0sp+cp4RdWewImMmmY/iO0JDVj8PeXasx3u2z5NKWV0PNXkRicGbcU7oqbnqgonnw6RWY0fGy1pjAz0etvvpIvNEJrqvH/xm9uygAFZiJ4dn9zWkMNQSiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783670314; c=relaxed/simple;
	bh=G1Ki1Yic3j1vuidMZ2WX+ZIEEYd+RG+RZs/mbGlYc3A=;
	h=To:Subject:From:Message-Id:Date; b=NwH9azTLsOCFUrL6CM7//Q3XtvXHv8SZVVP1TzU+t4jppqYwO4y42j1Osz7nTKxe39FoQangBgv7sPhhnvr4KZMrPhhgX8kZ0Un/t1ZTz9heH4/Tj6/6r3jliHsfrPFu1Qtt2XX4qsY/lSEU4GNmNlsyHfrpJMCMKiJh0Br1baA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUsq8Oy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUsq8Oy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0B5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783670313;
	bh=G1Ki1Yic3j1vuidMZ2WX+ZIEEYd+RG+RZs/mbGlYc3A=;
	h=To:Subject:From:Date:From;
	b=PUsq8Oy7lP7B4EVxsTWTThQsLfenErZoIlncBA3nLlkiOlzk5OCvDTMiR4XKrwNj6
	 CuHkAROhWDCTALETlu4/ilJJZ0JLOKx5mhOE/qGbpAf8nZE3v3JtNcOZlZK2s3oSV0
	 TXr7bwMKDzV14HvJJpKNusTuPoGnfNPVdQn2SfJuvnAZKs+Q+lXDWidxktB/9An8bI
	 TsDpt0hVoerw8dvfJXl0m9fx1rShTX2yEw4t1esoi3qE8S3APzuaJTKdFvQ17uihA3
	 xEKNpd8bv3Kp5HkbpAs2G5YZIMlNXkw5d7ouC/hM8Hv4MwWvytXQ6kjiSog3VZFPMj
	 aWfriUn8rzzFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF0C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367031368.20330.10113002584340231324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4706918c3642575297224c3f9f3791600740a6a20342d72deb286a89a69c861
Date: Fri, 10 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783670313
