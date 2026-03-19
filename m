Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B3A28B40E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773894894; cv=none; b=Le+QJjc6cuRghW3Y6Q3MI8RyEcWaHw08bpYqqKIgn0RmTS9AgUuX+0X5BAeiZEHTP74Yih3sajGT0FBUcummkQxW8dPTpAJVDRaHZU4ICtsNL2aAt8lpy0D+8yaWe0A6/Srj21Tr/OVEeQoGfiaEhqhh2BVAabMQvQUxWdwm/do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773894894; c=relaxed/simple;
	bh=dKXRv6AROOY4F/1z9yPlMiclKCohm1DlQlpj+XRedSk=;
	h=To:Subject:From:Message-Id:Date; b=SAs9C1Ft23KpqM0g+mwXFBdUmITo+IG4h7jgsf0V6vbhlxe/oxeE19zdHeXZWR31Tvd7EymwJYcJ73t6jdneqvmQMUO8ZyA0JfsJYf6OZl4KUMjn6SThJRk+n71iR0kabUx5HpJIqkovyc2fmbDPzJPx9WX2bQKveARvG9gKMCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcI0G/Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcI0G/Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E8AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773894893;
	bh=dKXRv6AROOY4F/1z9yPlMiclKCohm1DlQlpj+XRedSk=;
	h=To:Subject:From:Date:From;
	b=tcI0G/HkeDCh6Huewjxm60VLjwdqrkP4KHTSvJhci0GhmZ/25dtOVudXvMiLW7HBY
	 rNo1XQKkFA+dUVgLPqzhRS/IQHYjLqqVOhwkN11UnsZhHAuHOF0o10hwxccsoRtn8G
	 erBqWDl9A8CQd5IYD6fnLso1u/zMSIz1ifLKIw6LsV8aTtP54+HWABUiiy9xe/QwH/
	 VNZopKXzP1WxlZkv2UK1uVRJaVMFOObNrwBVs5EuYaNm/NFWr6EcPofyV1eWK1A4UI
	 oGFaM5NGm/u3e5+RYhXMXuchHknXmP0ZosLN9uAE3IcwHP/bVTNw9YVaxTWayh++X8
	 f2DxGI584CaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D331088E46
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389489358.564.1364132935821156193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf476065b116fcb3eec480d28ce8c9a46c7c1cbdbe7e9e8653d31c17b163045
Date: Thu, 19 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773894893
