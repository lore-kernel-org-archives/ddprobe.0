Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2A62DCF6E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758709194; cv=none; b=DLNW6sgzGJdpSwYY61l/uBjTwhoHNSjxsmYULBfAQnrYKoRPV4Jykd71evjUNlmimUQLzUlHX+5KctW2lOaznGQNtAXZ6+xqP01aVD44IUdU2FbFC3up7nid8yjLtfVMwgkJrp5mnWl0VJ3e/HVggPKhDJO0Szw0In9uHLiXiuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758709194; c=relaxed/simple;
	bh=El/QB88HPrGpV6GKt3ekxsVpVLUJymoBwhwt1/DphQA=;
	h=To:Subject:From:Message-Id:Date; b=EaVFAv41CSusy9vkAueGz0kEXPaBvnhXF4YHZW9kQzddumoHQ/cQtF0zN7TPPVRPkIUEpcQ51gJ9JRM/b3fAt6XSRlf0uUnN8vngAMCuHxsDNvhdhsRWNaY0FE0xMwFnjok4mRuFnY1kAF99wPSvo0IaT9u74ak4FXgyH5xxSrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N65lBXSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N65lBXSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F97C113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758709193;
	bh=El/QB88HPrGpV6GKt3ekxsVpVLUJymoBwhwt1/DphQA=;
	h=To:Subject:From:Date:From;
	b=N65lBXStK4X6e3VZ8sPj/kx7U+9NHOiReBEVlquUPYT/fWZRSGJw1jDIvsLGeOoQ1
	 7/Ypi/OUETxH9Nk4dqWCQd17Wh6dFKw5kKTrmdcMx75G8nzoFCPx+vVkBF+NTrPjoY
	 FTL21N1msKzKsVFMi5xNOY2CZWmKG2wMcX0dgOyqOaegBjXXRaaptvi5UiiP3CoQ+I
	 chQLQAWSDlsWlSi/ZJXZkSHPjkusQ+xX26DZzCaXFXTBZvcWC91Lq9fn0ESiN57GAr
	 5JS+GllyiNSIHj6dg7fWxFvKloMZn3+98Uc2jMXq+EjGSYfo99syynBjAvvHQfP5N2
	 R8IEWR/ySsTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A425CAC5B5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870919361.4943.2190843800940032025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f393260d41adba85d712e3c20a47cfe122eb4f5d986fd7655c11bee0535124
Date: Wed, 24 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758709193
