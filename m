Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16213271471
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771016094; cv=none; b=Yn+77wPKo6FN1iKC7Y+Q81W6PhlsHDe5iH7CNddDnULufRgkoo7qkqRFGafD8WaHlLrfELciTckKjqhfhAa0hJ+NQxa8FEph39sMBVYosJLaAl/3IUAW4RF81V5V4UI61ROSpCQ3YXeJfV62DWo7KeBl6hlsx3svZY8VKa9vzww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771016094; c=relaxed/simple;
	bh=CFvOEppBQ8uczBkfoEZwpfUkzV9M8wGQyjiHIjNrRM0=;
	h=To:Subject:From:Message-Id:Date; b=iHm14AQkYx+c6nGH/ddFIc6waQ4UUwsLPe6oXJr2rlaXMMAR3ZYfUr1VSB4/MOMfkYCa5MfVxptTkvY5TwxzbXVaSmtZgMcsqn0szv9778LNtz7f4pw78Tvi98CnKhLKC9gKws0Vte0CAJ8TmpJO5f0hDG2V4rG0mcT8uyMmGn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3zXf8Gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3zXf8Gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2A0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771016093;
	bh=CFvOEppBQ8uczBkfoEZwpfUkzV9M8wGQyjiHIjNrRM0=;
	h=To:Subject:From:Date:From;
	b=q3zXf8GcZjMA1/k+a8n62LjMKKui9f7PwdUwTNFLLICTF9P3pH/+eXxaflm2GHVmx
	 xkG5uvrskwWfY47igA7KM7sUFyFQiHTspyvWi/gYWv0KwnV93AfJhRtV44qLPm2EeI
	 ggQ6JtaRGDHibCFXanAUAaykMCIZWwbrTIOc3eVai5of2FjsN4+Dwn/XPKOyDpW7MX
	 V8+1bDPlso3s60k6/aMBpWW6wSL47iHBb4+fMKsen1EujLMt+1KfFLnjhpj+2YpDl1
	 c1i6OyFdu2sZy7Z0ZBWKPv5w52MRcOYdb3zMdtTXfh5OOsI5r76MHs50xd2nd3iS/C
	 rM0MEXyWnOikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98815EF99DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101609358.32577.8239976901433480496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f9068e351075d53a2b807fd2dd0d95ca2e4e10292df4461b3956f0f624c935
Date: Fri, 13 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771016093
