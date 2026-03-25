Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B70364E90
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774470294; cv=none; b=Bn8MhL/wy5oofx284H9AEnf3J53knmnPUKZ9E49uzR9DOTto8wj3Ncy1AAA+/RSghw+034FXBRjnOh8VVMT0jHKZd+3JLoMImeknALtZhBO5jsHkoc0dM2CeUmFkIWB2vOFd3NKs5S+jN/htCoS8CsJvu4Lg0lIUOzB2jvLZVeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774470294; c=relaxed/simple;
	bh=ae1TQsqldhlmAVEw5wnnU6DNEodIV/B9VPM+gAu1yug=;
	h=To:Subject:From:Message-Id:Date; b=sioS0M/j3ys9I/8cwpUjBa/IxTgoLhtrAeMM8DecCXdPUhyLmOA0Tgtwigp8XlM3nmKd3umZBsZNXMuZ7UNHpb+jSE+V2OcizPa4A9rDT0iroLMw2VuDNdkWpfEACodiY5Iko546Ql7sKs/ywruzAlN/Cf/aecB6hDHF9zDG2KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSPqhyHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSPqhyHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E04C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774470293;
	bh=ae1TQsqldhlmAVEw5wnnU6DNEodIV/B9VPM+gAu1yug=;
	h=To:Subject:From:Date:From;
	b=tSPqhyHHy4HNHbfASY6YI6td8+wuWD7ep+WkASHEPXy0sgc82aBQKAr94WY5Bxzei
	 BJQXgGHQwacsqhBc2iaB19PwkQnE2+rNo0n7P7E4j2zXsHMbxsfYKEdDQlRU90fIn2
	 8maET6H4FZIglNUGHo+DrIGMISOgSfCoubP1AbYXt1xVej/zPEPCPKfmlrHkE8/BRD
	 6wte3z5oZLEJwrlRWMi876kNCtAvsVTsKSxs6G74IvXNj0LzHxCspbmeBSFsnROgIa
	 DbQ/jm6D2MTolwrLYuOg0tYKLAQZbHnqCaRNFP5lVFKLY9O3IqZb+glFxhSUsRVSRh
	 sM7FMcwBfvZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9301D109C05D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447029359.17803.17520542930600967915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd0c06170213c8730d86fc84260b66656df1b0c7ea968e3ed3585ccad9ac817
Date: Wed, 25 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774470293
