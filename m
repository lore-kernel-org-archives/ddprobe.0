Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203F02DF6FF
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756788594; cv=none; b=TcE+vRyZXHyINQJZxI3nyNFY4bPWU8lHhjeTBtv6LivSdqFjTull62CwCDgQqe2KfqXd2iHC2i0vcZI6kH5zRKMzcy2bxYioWzQ5ctfs6B84nImdCFH/61Fn/LcShvRGPCVl6IYuLuvaKXP/nMyZnrupNe//ln1SHVZ5U5oxeIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756788594; c=relaxed/simple;
	bh=RCx6+4phIeKVMDhKL4efAU6dhiw0APc5IR2JsAsKZko=;
	h=To:Subject:From:Message-Id:Date; b=dUyeKXD3/5XOmT1JH/pGwI6vPFi77tGzvwVVzBtuK/7pLdCQx/oPxhxqoE+TFLDUyeTSRLgv1wgw3wnkO4sPwPCpO+STahWedy6l7ZMDGqA0/GJ6LXANZVYYNWIQnJ57TFJB/Ca7A4UVHi0rKB+HkhItlY3Ay62JpDoeRWNgCuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn0YLbM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn0YLbM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 974A3C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756788593;
	bh=RCx6+4phIeKVMDhKL4efAU6dhiw0APc5IR2JsAsKZko=;
	h=To:Subject:From:Date:From;
	b=kn0YLbM0IIWsWJmvCFo9zsxr/WLTVWwKy1NlGmjOzflz4wFeYgssg3YnjnexlqHng
	 o5eAKbrK3r7oRMC1yq029U7+V46k1+TmgVRgBRCvoCi+NJ2WhzTIlJ5SF68AUbTTSX
	 GBu0wPYoPchkc0hLMYjXoIuKyVsHpv5IH9UJubpKSgWt1vUVFGR8OEoifm4JVoOJO9
	 AcZ+xXKeBqWzfk7S8pI0Wi2V5GKNRMjwKUiqgfk4e2pUYpiNxNHj6QBXTvMf4PKjsU
	 2WMk/OVp+PCu0GbXO2cr1uGbn/R2KSYyK94OcLqtls1XtNocd6IgDfOnWL7fI5HJoK
	 Gd/xV7Vj3+kqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68BCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678859357.6650.6076916220385230505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798a028eacfad2f0eba2a6adf535d836d3b3593c98c3221039fc11c963d83d54
Date: Tue, 02 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756788593
