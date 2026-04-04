Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15F2E091E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775274934; cv=none; b=sh4J2OEhrs/k2uZNZrIzVlufWEuBRzWpJSBvl68bOaJ7VpskjDBVpWhCbAl7h51G7Y3WU6i+RHubXRIkgJOrKAxTmDw+Y7s27MkPvxcNjYu0S6Fj7VZPs+qV5ILzxrKLQP8e2dFTNxKjzBNnCaUW8ZYMgvwkZ1U3s6jkeQVZldk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775274934; c=relaxed/simple;
	bh=fzHUHB29XvAcivmVcs/mmc52GlU4mRMFJdq2UDrmXlY=;
	h=To:Subject:From:Message-Id:Date; b=Syt2t3MOXS1kQ9+fjkWNRq+T6/yaYotIpmSQtm8yg8/K3EF3z3B4CnO3ITSXhruZvRqy4+HwHd7aSMUeI/MerhLcZpxmMeeG9pRl25aKVStxG5y91UfPDTlzkgdt+lMF/0hF/GVw3cazlaiOqsUgmnWRnnTdYiwVHVgfKsHjqXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LatxeLZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LatxeLZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B39C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775274933;
	bh=fzHUHB29XvAcivmVcs/mmc52GlU4mRMFJdq2UDrmXlY=;
	h=To:Subject:From:Date:From;
	b=LatxeLZWIk6IGy2FzsgN8XQArRQCWTwLpb2VZtgIgEsNMSmkCTysazTsRT4/cpUbS
	 I4eTmsv4gMvWuDxES+mQilJx1GO8xoQgN61ahyNjl8+UiOZL+R17NFrgek4CqZvjQ2
	 2WQkPBICh6d7tTmgQiOEyEm9opJ/JaLwV2SMtidiAOcn/uZp9x/WXpniagiZ4fTqbW
	 BMMcdE7xQug1mFdTdlU/LdOBN423dB++kl139Tn+wEZTO75YnWR0yliWM9G9S4ngCF
	 QDKtNCH4WXLJ54WAV+9FzMRjXg0WWg361sBiYv82vHJgW3Wa+MSoxni8byZvkz0dID
	 avmWzzYSyGpxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE778E88D79
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527493369.4759.10453994449428225794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7ae7d95580f17962b64b26daa7bfa0924bea3fedcb90c90c1a5bdb678bf950
Date: Sat, 04 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775274933
