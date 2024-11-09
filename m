Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDCF1C27
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731113154; cv=none; b=k6nncy6TrGmFlgwHaoZEwapsdJJnppAw3qFe4JbOqF1/9K5IM8r/dwcoruA69JcFUaOrbb7ACHbuuAGUZL8jfTReZrn8kvB5NEBx09MoEJEwUf8MAr4jaqw5FExkCqV0NYdm+4FRYXtdAKZvr4zup7FJJ+DhH4mx2NjqSFq5ulc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731113154; c=relaxed/simple;
	bh=lxMI2uIiXa5qGjs+FE7Xb0SdWH19WodCoYMbfCbwlZ8=;
	h=To:Subject:From:Message-Id:Date; b=VFzJC4Ij+qvxU5cCpCOaDKSrGx6aOz0i5RVy3qD/F3wK+urQTYbQd+8U6pNXs4DvwsqcGc0dn157r+7aqgIa4s4VIDERB2rPFHABeLFrtRjjAFppjwm5z6AHUA4bbZxpAx1cPekokZiIAQ+TihSo4FSjm8o1dkqkwR9tokJc6U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1hOmS2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1hOmS2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8E1C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731113153;
	bh=lxMI2uIiXa5qGjs+FE7Xb0SdWH19WodCoYMbfCbwlZ8=;
	h=To:Subject:From:Date:From;
	b=g1hOmS2oh13755hoFtMWpMOhDqrLEmfxeNKna6nzJnyRXxALMAmcrDIl/nCx0dA5z
	 gpdgPrZ718/+bzRyPC/R1/RksZN1vR/ac6z0wWQrWTUKkc+BHi7mo5PVbYcGLtZedt
	 /kDHETmUXdXZfRV15AFcyieo7xkhcC5wO8ac26rywZo9u3omOrVLKaoHeI9cCiP0HG
	 ickubM5DKJVuUBA3nDBY92i89UZWdNsErYemghACv64QztMsv3/i/mIspVa1J4X5P2
	 nJBHE70WM0ua58dHgBzcdE0iehR7y2QeQ/yaqKFx5AgJW9BiQC7kOkeXoSsAluoipK
	 eEZssCoSqfZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0D2D64076
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173111315361.31720.14126706735255827413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc82aac21ea11c080fa265f2be8af405b5e0b456b8de3f051d119c3a1df7a99
Date: Sat, 09 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731113153
