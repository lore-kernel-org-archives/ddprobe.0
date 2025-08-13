Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B002C15BF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755073194; cv=none; b=c1Z6Ib+HGWoBF3BJUXRhY89UdP4Bqme3VDnhOdo7RYs+Gk4IbsgvY7Q8eBnIqNN0DVElFzw/wsfig9wK2PQRLc3ybE8E0iUH1nDHJBZ09bUQduVDgZM1q2ZRT+GHJzuY9kg+nAPJtWgW+7SyxHS/RZKf4fNQsJHQ9Va4H0SQMFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755073194; c=relaxed/simple;
	bh=L/fwcy4bljpZmwgkQtt65wmQyAj90aR8v9wMI+DBhDo=;
	h=To:Subject:From:Message-Id:Date; b=QPd0hsJqnCrIq+joPPHDhG3OjmAvakbMQj+29dmHziIgyKDwVdjmKWI0QU+hkg0lGwzAuywnYUns7MOnzTjZ42ll5EqMTTW9L5pubatsB1Q5A2ZchaJQrWZ33VoNo/Qz1qjW0Av9MYr4p8Fhl7ffkm/k0o3wBQ72xec+TtX6CJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sghlzgo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sghlzgo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB91C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755073193;
	bh=L/fwcy4bljpZmwgkQtt65wmQyAj90aR8v9wMI+DBhDo=;
	h=To:Subject:From:Date:From;
	b=Sghlzgo0IB6OXSShGs4tL+knSDd0rGXFYKrq70uV9Qfj5Kib2IxvNhQ+EDukjD21p
	 CV+XIpVG3xkzLAAGO5qyANi7mmRE2DaFb6Tqgh3IX6a4SFm1AFdE4h2FArC4AY7ru9
	 22RkNcBTG9c3+m/p7QioKzucni2lDZTLqLKILgE/iDR8GzARurDo1YLzaf0JipYo/F
	 /biUO6YhksUOKF2sg22u6yd0av7dacdc20PfF0CLNHtXti8LfwHjlB8yrVErhiicuh
	 m496LyAOAIMXreKiyVO81dIs0NNQGAxQ+3PQ7dCZRpsg0xx/pzMlSvETntpb5EJu4i
	 3F6BA+GgH+lQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63BCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507319357.1917.17856140486559824995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee14a409cfd048ef3bf90293fbf55d836857c7185bd37e88def858d79341c17
Date: Wed, 13 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755073193
