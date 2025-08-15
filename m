Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C56626E6FF
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755301194; cv=none; b=pVDGVtIMU6ckCoVDNPvnim+aF/8zoHl4hcvqvji16bLDt5WiReQ+DOVYH29A3FBicU3YQXdJaRMP8YVK9fuhXD1qfk+GKUbsvaqpGPrgA4qYfa0XDfXJyDF8K/lnufceCLCAYMsqZdBaUut6PIz8zO/kbACoFqk7XsvZUn+5HfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755301194; c=relaxed/simple;
	bh=i5haTOnCC0Zwpvgnzu3z9cvnONZCeWsbLnV/8GtTnPE=;
	h=To:Subject:From:Message-Id:Date; b=LXBKxLea3TpKpu9Bhe8eCWRshd8OaQ2yISURT3xlI+sbavfmBz5br9FC86l2pytr9+zj0j7hAp34yex5g3d47iDVPSlz7ciKj6xkOvHlbXV5QHSzFRGwey0x0kOu2cu7HVnC62e0pXL2Y0yiB1nDvr44m0kHNqSO5nwdkq/XeuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrqsQ3WN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrqsQ3WN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E685C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755301193;
	bh=i5haTOnCC0Zwpvgnzu3z9cvnONZCeWsbLnV/8GtTnPE=;
	h=To:Subject:From:Date:From;
	b=WrqsQ3WNEgV3XoSLe7z+IO4HJH9oBo6aw6tU+EdwEh5A1RFuNxxQEAIVuWzp+FNve
	 fo2X5Tm265ZOvB4twup6DCLg/I+QA9c+RaaU/3iqWVb+yzq2WpWKKx04ElJQqV+oXI
	 oTYsh0MMgtq9GlIXIyd7JrQUfeyM74m/vqPz1s4Dn4H3W0GTOTYJCLA4ru+IavPZ9H
	 fdSKfw6NeLGGQY/VxTAjrx4NpHVGAJogJQRv9DGsWkiHzdcEg+HHdz/wlzVCt3NYZz
	 3OAlUUqfvpfwFsbn4trUHUenserUa1AN5cpYI0XJnsY1dT4S0X1EeoJ3d2y4g5Kapv
	 gFeMxcZOoO1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E1CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530119357.4528.1818735743626457094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbff758fdd2f281a75bf1e4ee5df96d9b7f10fa268be6a6d52125d2816927954
Date: Fri, 15 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755301193
