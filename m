Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2E338B7DC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779825754; cv=none; b=PNtQsdO/paYuDvJQ441eQ+tl/+Rx6blM7HsQcRqviWBPLRHq3Ozffutwm+PG3jzcDGH0cbqGsUhTuqOb21BToa7UCLIp5V1YXza0w70Iw3LghJUqVit2ENid3fGTjLFkXy6MT5rt04sm+pB2aHWDVlC1WnaGxkx1YYSmJux+OK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779825754; c=relaxed/simple;
	bh=okw2enDbf5KIxE4TlNvC3V+YXT7j8QxKox3niZCeW0Q=;
	h=To:Subject:From:Message-Id:Date; b=BFNkLK0D9Lib/wgbBllkdD4rcf/KmYDX4U4OW9ENCj812eqfuQDxuDzKtEuXfRMZcYjCVKrRFO1F7mQEPWbEnM4a8OJa7eZPsGMpY5U2CLVk8uJhk6YPdRBHS16LcJGK95op4dkxfM3lKKGILA6owRvKaedMQtWw3ITjjRHJ/U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoATsUZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoATsUZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8550C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779825753;
	bh=okw2enDbf5KIxE4TlNvC3V+YXT7j8QxKox3niZCeW0Q=;
	h=To:Subject:From:Date:From;
	b=NoATsUZ/CNFJpDfYnSFSGrRIaPy9VKBbjGQj1B22xuSAKi+13KaJwCKIW+Qt/E8Pe
	 fL3yvDa3ixaxed1dmvFfawFRchpT3jar7Be9abmstodGaGZYguaPK2FJyNbbpHXwLJ
	 rA32gKjqoYnZLpK63pXpOLeYRJ9Lqh/TA9LEkiHfM7rxd0d0UaerOsebs55rZtAVu3
	 Sg6w9usJMo273m9FyqWEYNgUav37k1sYM3LlXgQShJnIkVFoNYA/U/6e0WaGfYGyjp
	 w4sCzndltXhL2jbd5n1dewb4/gD3fsGTas8yA2RZLXiXEqEVa1A+78Yiz7QDBBFjnG
	 CDZcDVeGurH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B16CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982575368.8892.8328868003809322590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4cdc87989a6278256f03813bde9cde6921ff32bafe4f95d75b808ab2b7ee1d
Date: Tue, 26 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779825753
