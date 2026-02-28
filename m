Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C7D3FFAC2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772306094; cv=none; b=fsdmsUZwCgCjKiooqpfXRVVMHX86SbjdNJ56vBxrqiFCMx5YfIQLPglQokNAOHNXTMEz9bq2VLnbBSqwXmrdpnUKpcgTgi+lIqKkiIBNVgJcN4pnPMwNqzZnxvD1V5d+CKRMFBcMCo6ZSgAObm2CCbsfEzbxCAujmadD2sbWjk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772306094; c=relaxed/simple;
	bh=TAb9xtQ3NlaKmZWGA49rT35tkUbf3RAhXSQYfN+vDhg=;
	h=To:Subject:From:Message-Id:Date; b=thZhdISSmZWZpkKbbFqcPu/70Jl8BlwPc2qZEoLymNxuEPTBtYA1t+XOelvge28Z7/Ht0//WJXAzjcP92G5WPeCDeNNBGKsnxmyKMvh3gFEelFz18M7tygkHVYF3HYILjKY6CWwGTAZmmRL/O6Zi/IuNfKkonhBYIeZwRJr1h7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUY+jysp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUY+jysp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772306093;
	bh=TAb9xtQ3NlaKmZWGA49rT35tkUbf3RAhXSQYfN+vDhg=;
	h=To:Subject:From:Date:From;
	b=hUY+jyspGldFkfvX7PUn85Zw1TR3coUIB9rDKYaLNOeInGKRUJu8ETrqNMuuO3/FB
	 lVnywJyGOur0mNhK8nrpyW9XSpg0TkwI+KVvQOxFYUacu3TK34hDCdUpRadzoenNAp
	 AVbAOgZcLSOui1wTcBx/JfwkDQKHXSdjJQe+uOPQTbfQ5hTVanuuFXt83Wq7EpddzQ
	 Kwobe4vO1OMc4y4V3RDD+fwTvfJenUtW7Sh+12HaYHK5b88bS0V1Puq8EtUdQOrJia
	 aWaG5x4/+b9R86eG88fpz2Q3eH0sIz7LyZ8x5RGUktPOsTao6FqLbbqepysijHDlrg
	 8sNfuv0XULMfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B33FEE4F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230609357.22863.15451966267262952256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a4c81f60e8a0327d1af1005f5eaf2f4ea301dd7dfa76581369d42f118bfe4c
Date: Sat, 28 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772306093
