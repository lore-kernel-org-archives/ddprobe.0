Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D321C86E8
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724449554; cv=none; b=a2NLxyBoAL0lDkJ3s+pM6OpxldP7kuELbIi9neq8mI94Nwb/kHLjSS54XZaMPLysoaUUu/Z4/KLQMTJ+kv8+YdFmow/3aDUPdjYGxHfxbjzEAOoPT4UphLMcEKQw7B9gRwtNn3OwFGKH387qKi204YwslspuNyToPf71lTthcfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724449554; c=relaxed/simple;
	bh=7WfOf7eZu73N030NxJrgEhHeQe3KNtUIh/i4Gy/ihi0=;
	h=To:Subject:From:Message-Id:Date; b=kVgPMDNwef2Zm5ZtZLj/mtL1QH9E7X5GCyT62YrwFZZdnmxG5HTfQSWaUz5xG8TpuD34gBNDqjG3cjB4bYF4DHfJS2UVYoRbHFshygAF88eJ6kL+sCJ0rDLG6LE9r8dnBQcCx+BFlTOXZvMf+VvINwSQgNSFyI5y4Ky12KGK/yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVXXiObj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVXXiObj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCFC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724449553;
	bh=7WfOf7eZu73N030NxJrgEhHeQe3KNtUIh/i4Gy/ihi0=;
	h=To:Subject:From:Date:From;
	b=LVXXiObjJtv/+Def/2ASXB3uIsVUEE548o4kQSl0rOBTrSsEWB647zCjSlAFVuTy5
	 sLTjRx4rIByVGx3a+Wncv9+MIDOShAEq8WBfWl115fsLrwGZBQXXC+KrDk/XUUX21N
	 +QujcP6NbmD3LWQWw+xx98jhqKmmvNOA8TsYnsqKSbv3Ll3iCzp9c1PHWlJPnbph0q
	 fYXVGuM0FbeOQEykeImCDbDy/fyuTUb4W1g4HT7oVKFBCklB2KAQ1e5DdNsjtgXssv
	 P8W1QD0lFeO9NFpXmeotiuxR/2h7EN2BykleHZ4NsRsGho8vW9DFd9UgLleO4tLdCT
	 uNDDhl7hhFm/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962DCC5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444955360.10706.8134218880440289016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38c29b7a6acd904557c239f47ec137aad10403fae17cff6c462e46626cbb7c7
Date: Fri, 23 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724449553
