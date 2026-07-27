Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448EB41D106
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785169834; cv=none; b=pp0fo5/HkWZPp+06vyMO9Iq7+O8pJ16+eCKdTk1aBjKpJL3eHtZ/+qNHWPOgrmMxsfgKzEQN24ub/x0LP0DTni/B/01wpmtHfFPudz+5/TkAN0A0wIY6mvZ8+0H2b+yM7KAyXcn8Q+DEKynNkWdETuFS1TjwkiUAqT/bw8URZ04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785169834; c=relaxed/simple;
	bh=Q85JibRwO0R8VopiNmm4yP4VvW0pCsy57kSu/Ypmu2Q=;
	h=To:Subject:From:Message-Id:Date; b=Z9+Mx58KO0JwdIlMwzP8yHKDbUPIgwGJpv/Qr3N1w4BNaY/gpih7bq8kiN3sq8SR9ppgaLlY2z2UMPYrOkUKSanx+2Zi1LcUJFEtcVKvq9LU/EvC8/aWrK4Uk4J/uDBcMMsqeu4b0Fi1hNcxALXRywGKdW1bqyveKyazx8/tTuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXaaeLPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXaaeLPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF66BC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785169833;
	bh=Q85JibRwO0R8VopiNmm4yP4VvW0pCsy57kSu/Ypmu2Q=;
	h=To:Subject:From:Date:From;
	b=HXaaeLPFPgKHAZF70/6n0QzO8Y+lUNoU/Bag3IvYpvG2nhXKValSz7hxc9jyhEd5U
	 JEYlKuw3yIJrH+jGJOscboNrcoyC7Fc6+UggmNoEE0XdDiyw6/pt/BjuyXpU7wcXSA
	 0ADTFtrW6kJsq2/P7EWfayk1JKwaxHoWJZAyehhiz2NywpwdZ9LswEchnfsYFGCsZ6
	 OYI0p/wHNlkwRckxzf3GPW49fr6iH8sjStYRTy6mWq3t9FEw6OWNJ1HULzSM6SpIec
	 mO1JersqYyExT15dre3Gvzw/OgMqhSNKSx5oBn9sdKPj3fCqsLRwp1IvvMQd2v+JyQ
	 qHH2PH97k3Tuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2B5C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516983369.17431.16031692840244211407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f460a857144d495b6c620863b4e9c305e6d745d6c2a296793d59a1fa6409311
Date: Mon, 27 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785169833
