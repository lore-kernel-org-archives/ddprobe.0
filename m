Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D8F30ACE6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772959494; cv=none; b=oaZLhlU7VEZYnHjNUSskOvpPcCAL9Yonxd8PgKgXvZR88fp2l8N/hj+UZtM0QlBiGhqinnFBVFn+cy/HOO7A7frTsh5II3BP3qot4dFhxmAQ8bFYG2Qs8cIKJGmcvGESkLnwqiHnrXVtBgizQ+FOU7nQygyex1hMnmAF5pLkJhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772959494; c=relaxed/simple;
	bh=4enLoVzecvEk5QPF+oobxRPRdvosl1P1LaP/fr2/Duk=;
	h=To:Subject:From:Message-Id:Date; b=mODqEe/3hwqkhiO1xSf2TUJHC83GtJmOlYlnDgl9ZYpZ2qwd8XTs+bR+rCjgpctfsnr+jRkqZrpHxMqS8NNzf1TbpvOPuqevg/usPEjNUzb0JFBxW1oYTVU3kEx2oBz5Qj3urvkAR3DLBijVmqg2V2+rPXBev9Y98xEsy9ft+kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAYjRuGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAYjRuGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA42C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772959493;
	bh=4enLoVzecvEk5QPF+oobxRPRdvosl1P1LaP/fr2/Duk=;
	h=To:Subject:From:Date:From;
	b=XAYjRuGg70P/GEcX8kgWKZEZinq9otyZg88aj1+G8vc10NY7B+brOxa2zjuqgAUW/
	 8zIjXegAUNen6Mc+qJuzkEtnsUJyB1KrUwYcoeiZK87Mb285JBNVqcdsqQ5gO7Ns/S
	 /OjhgVy29yIuJ1Agbjrzct+uvSw+mkqmD303DP0iue6qaGpU1fFXfZ21lzWoCsUr6I
	 6TanfvHBnj/8xcSmTZ1iENACkm7V5wtmrTrczulzr3GZBX9jM2f3GUckqLst1Vw6L1
	 4GjlaezDSus+XZen6ye4Z3T74pPIotJFjJZNtIOgqwMZ1EPwsDRbwBLjMfD1rAEssh
	 V1cQff2tblXZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE0F55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295949357.13803.14620717068999367304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0929e0c0ca3fc761c066ebcf9085014a17d9efe26fd7e44c1aaac241cdca276
Date: Sun, 08 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772959493
