Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9CD17E01D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727425554; cv=none; b=qZjfLuwibEshv7AeaCENlCx6xX6AJSK/6bJVm57OcIfPQoi2f6/lmVrtPvm5wGb8GwNXG3JqpgEWdA1KWd+RO0bSFx8otczWafHR5X+m1o1dZk0Rr9mcmhJx0SedkJeinIh4SJ44R8DEQqom8GMVDlbHu0IWLZIQfvT6cHrQjRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727425554; c=relaxed/simple;
	bh=Uk7dT7+i7coHicR8d2iFfAQ5b0/1pMNTCBzlcr81gQc=;
	h=To:Subject:From:Message-Id:Date; b=ELgKdoRAPBYz6Ahug3vxaNs/C4sbZG8JTTTSuzVivdAd+/W2lgxxnPF7NUWV70nGmVPGy6TwV/oFjNtKwF1NWro+UkO5SVuh24P+nDDEIEBhsnILSZ0SozJLHbXa0s99BMgOJ9Hg6CZAvBu4hGdVbJCo8DOSZzRYgoE4LJj+BZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkawNWX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkawNWX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B0C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727425553;
	bh=Uk7dT7+i7coHicR8d2iFfAQ5b0/1pMNTCBzlcr81gQc=;
	h=To:Subject:From:Date:From;
	b=UkawNWX9XBEvFrEXgitd9SAE7fKGSo1W2wMI27z0zn+thhYR7hHTwu1jn1axMOchy
	 JUnUBKKk8L7vh8lik4KwFQzD38x/oMeH01QyWHIPFZL7dD8UwQgP0G5oxBUsJwR1VN
	 7zYPgpGBPEcAlQlf6Kio4Uw5dCHJ8fLiCSBOs2NVAIl4Lm0e5JH93ijT4iJHODSJQt
	 qX2ajr1MWTcXQ/tSCE5JPeZV0Q4qjy89EhflCAgbugGQS0NHSTCSXR2XBWj/JTccF+
	 7UGrlkEQW27S0ATByy/8WUDVpwWgCAycaHwm1xgIff0PNDytxa40EU8TRMWUCXp05w
	 0mt+KUhUuGyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C6CEBF81
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742555361.4651.3849502908917851430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09fecac131dfb914b860a9d6928e38a21a2bd1eded8ce745ab44c9cbe3f05db
Date: Fri, 27 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727425553
