Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37249B666
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743647994; cv=none; b=TxP1a+RDwpHYODqQVlH0rt9OiKlMNw3witSmPgzhUVmCV0JZpZkW3OR2+jVBcnwU1TXBPRDlJOqAKm4eQHSMRFePjlYjvplMnk60kxYt+268mwyqPxAN55trRaBQ/yrcHnTmQsHmDYapu+eQCaWXgnusG+zn9ZNCwa0I52t4N5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743647994; c=relaxed/simple;
	bh=LZV8/6hZCAjd1f1Etx3wxlBN3iE5ncWW6Dt4sC8SFvA=;
	h=To:Subject:From:Message-Id:Date; b=aYY+ani5PRgkpdKnRkahnTXAUDtuzdO6kTtXU3bUelFOSkKJSi7OIQO/eEbCM1MR4MmAQtUGNBdmcmgkv5mKAlRpaMuI66CtXXBqsGD9on0A+Q5RQGbXhWxWatVdLxU3/m7j3DH6LmJWA24lzOyJOdz/9gxN+pOa52YyUzFHjGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZvBmuWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZvBmuWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF104C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743647993;
	bh=LZV8/6hZCAjd1f1Etx3wxlBN3iE5ncWW6Dt4sC8SFvA=;
	h=To:Subject:From:Date:From;
	b=PZvBmuWDig9Jc629F0GjOj+R86ksuc2OERC5b8zTW3nSBEO7rKjkT1xmHL2vsZRQ9
	 2SXiHMUjtnfh6pZ+lwbRLwPGGpTOn9OPm8viQmp3KQp7W68k5UHQjovIpaYxr01/6s
	 tMeuPUmEePZaw7gxPrMGfhnMKnYoRsHS9HhLFxG+oYWuYo4A99uA8DKzHmbH7sBt81
	 ohlF4Ispvdp2V/UEFyd5UOV+XE1J3+ACHsWctiE4tPCIJ2kA3e85i/l5gNWFefgdSx
	 mOxkFvY4gk42ndcIAQXtROnIwlMGm7du/tNws0/HPb+huoz9jC/T6+lXBCwTYkJGBL
	 fs9IJPiO6/uDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96178C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364799360.15845.7096918292344285760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50a22defa1a9a44da7bb9e584f6bb3bfa9a54186a47ede89a216a66a57ce3cc
Date: Thu, 03 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743647993
