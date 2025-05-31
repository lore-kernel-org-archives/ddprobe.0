Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33376EED7
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748675994; cv=none; b=jzBGCovE4htqnrQC/rcY4Xvi/zMXhhIIe6l3OX4qUElugMxjVxjswowmFpPcTL7Fv/9jICQoERmPAUXlvGyZQGypT+oMNDbFRg3Cjj5VmVzN+WXHzOWc3sMRalVwn/853Iw+jP1g21J2ocaKerOAQSKxJCuv8WXBQCbVadU6sJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748675994; c=relaxed/simple;
	bh=2WHjPOJqetKHKh2a4U+iOH0ons9d/BJ/gHYk/c0icNg=;
	h=To:Subject:From:Message-Id:Date; b=s48EpDaH6ONyzXYLhas3/UTd19Tq8F/X6I9/ehKbzV2cQXf9s4XXs/W8yY3VFTKMymbH/UjYK2tLTmqvJfqB5bUp7lflp1QFs3JfZpzd+FNVfsuIFvGL25iqV6WjJ/a+hh+E2IF6UbASbf/Qq7bptwGEbenmJKud71XB2UvYods=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swo38uUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swo38uUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748675993;
	bh=2WHjPOJqetKHKh2a4U+iOH0ons9d/BJ/gHYk/c0icNg=;
	h=To:Subject:From:Date:From;
	b=swo38uUPnvYYm7EZA0q1SW76rwJqkEJjEQQeKvwZpt0aQXD1LnQYq0ayVEPV0HdRE
	 uO3jvOOWOG+RzKtimIKshPXHCplriL2NSc2j1sT/NDXnIfQjAPBbwL986RU1guW3Dn
	 2oycFzL+ekUvx79xc5xRtLQjobmR8qKWrLmjCGNISG0UzKTRUBpPF94MwQjz9ShCG3
	 vuKjkUepawm1ffjSQUVBI5TX7T8a6+v5X5S5zan0jhkWsbWTXwUeeJjG/XZBrXWXXI
	 Eqvzus+LkgDelbdtj27yxyYSQ9S31PDKW4O/CaGdm73Gz88S0tWbM/N91LQ6wj/a4K
	 05FAtsD+9XOxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941BBC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867599357.22055.15499138841248291583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81989375d229223850cef614b9ee4bd022834709c508ad654a3ec178c6fb473a
Date: Sat, 31 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748675993
