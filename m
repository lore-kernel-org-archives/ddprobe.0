Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECBD6FB5
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708561697; cv=none; b=jFJICLxk51iuW7/kemiX2lG0imAsJUrRTSvRggUsRu5ANOo2eGdJhKKvlzmQKGOsk9JP65uvotMFsp/V9K3hVVqTpjzkNuP1I4AcXyxf2JDklOwFR0YVJ9GzGgIt0emodJc6JNz80x8utszAvQq6Ynrl+C6EgqJB9jHcmUHPwno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708561697; c=relaxed/simple;
	bh=bH6NybjVJZOSsxQlN8TlJcXkeai8qPmMelWdkCYh20g=;
	h=To:Subject:From:Message-Id:Date; b=UlobLsNRap+5mDibmor3tnXmWB7CZfE/4K3f7GmXKEVWvIAkbbK0jlMAfENHpcRcYHfvuJMe/pDdZE+PQ0oRrC/DTLWrjqYY0OHyCVSSLa6MA7Ouiv4i0quVpKLwsboWIfNVRQBnZCUfAcGO4Xy3Yd/LiEbm6xvN5iWxwJrOwJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojfVMq4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojfVMq4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF5EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708561696;
	bh=bH6NybjVJZOSsxQlN8TlJcXkeai8qPmMelWdkCYh20g=;
	h=To:Subject:From:Date:From;
	b=ojfVMq4xAtm6Mfa97bVKuFl5b9NmiWecPKmnY4Nxnq3hV7zErutJaOx82npfjNnna
	 Qi+ALh0EgxoVzWHoNPFNCJIJ+mm+34QZz37PsRAFS777ScKZ+2sOvA9UcJJ3Br4+7C
	 1l06nH4BlLMh9nO64xTgH/ayn+yEcGSB9MMuavg0OjJ6iYIThfuZeWyQfJ3umuf3Xv
	 6G5vT7BV/RnR+J71PQxoXzOxNkkXCoNZ5dNWz9D5SvH6v0BMmOGaw7XtZp34wYv7OK
	 6nKf4o34bqYEvBVGLlsz090offmmEkv7UNFjCFhMVGeopdZPUUQPecZi+DiOTBJyc+
	 Jr7zJw14U52gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A25C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170856169639.1061.11123162544409593990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc58be2ebcc064df209c345be5dc5a6f55f3a7f6d12245e4069e0c453573889
Date: Thu, 22 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708561696
