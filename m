Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1966A19D07E
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777834054; cv=none; b=Moyxo5gl9brB+xTtclTZS6MFfzFCwoWVCE0EbeaTI/WFg2+YhAgs1KLIwG+zPk8T1ZUCIapuNi1AUDbAmGJIz4nvRgkuGGDhpvjWBlWmDj9UNFFdH00al3GNfqS+Re6HIR2OA+ATbGbs2h80X3gA+n45wdrFIrhJhypiHH6MDoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777834054; c=relaxed/simple;
	bh=AxEUdK86wZsAT2nwp5aL66TVpLAcU775hqrLbjexymg=;
	h=To:Subject:From:Message-Id:Date; b=dccFclwcWf3NZEdabNRmKcOPqKpw2sxbMpSF/QVuOVgEWoZc6CYH46iuB2TC0nKJ/KnpOhDtVpelYbzvlCqU+lIp2BfRjsCd5NdJm6Pbhab/5ndbSqgOJmy/pZKIbcNmOona4UBM0DMXJGnC9oJWkkUMYW5saK36OIklG5nojoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw5ks7u7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw5ks7u7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE88C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777834053;
	bh=AxEUdK86wZsAT2nwp5aL66TVpLAcU775hqrLbjexymg=;
	h=To:Subject:From:Date:From;
	b=Yw5ks7u74drZsrbQa0Cx0+W2Pvb2mOe5V82hUv9dzfvv05MssGH1RaAe7ZwjMBn3w
	 WcjdWyQurGYmVsyjbaKbfRN1TkO9AE4UH7y1r1TWgdU+3RMbyAn4hxSpMaB/9uIvTm
	 hg7J4akGjpHztqbkAyt4tiXKmjwBoOIn8wRIJDgI6Hw4qVDv9dS9EOcNiGTOkU+Cc6
	 ugM79rleDAUbJs14mfiKEezu8vRV6NujS0d0xlITzEvodArv6pAqljVhOjWJ7y7t0+
	 I5TenKu1GI2/9GT5QKTqojo9Gu8KLS7HUnlnPlkGj6TaC46UwjHTrK0pVAvkTVJ+qX
	 aJD9XorDSi8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC814CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783405369.1113.13462599751292358952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cc8c059d9684c5b08072c7bfacca9d40b010f3ac16fa3ac61edd5420f86987
Date: Sun, 03 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777834053
