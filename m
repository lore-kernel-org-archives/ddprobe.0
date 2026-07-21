Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988C74C97
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784617714; cv=none; b=Rrxlr6nD2lUZ0Q1Gcv9ATxgVuU1wJLDW1eeuu9vRDHyEUhlUThgGcH3W/l/LsD99D96qFfs+rM1wT//Cz5AAzPxCD1Hf9S6mGUBZIDCyYzTOqC3oZaKqIZNNVAnfmMGWOcwQu8q4p+gYEeHgk16MJOJv+MtsYNRxCJxd1cJ6S8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784617714; c=relaxed/simple;
	bh=sTvDgKS2ezJgIhiPo7QsEAxW9zGrc0nVwaf4c3Bbw6s=;
	h=To:Subject:From:Message-Id:Date; b=jmvWnQC4HdIKX3HybEZgJUDORlRvsl9wYF1TFH0F+L0z9YFgGR9jMpMfi5mpKIgskYOcB2KJTHCIyjLOUjne3rZJl1xP3aGEKhbOztPF/RIdgcWgWwd8cAgF6dbbCuj1yTtV1VUjHE0bLc5TN+9yOeWi07TeptWnEAMZYbtZZDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL8kT0bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL8kT0bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B8F5C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784617714;
	bh=sTvDgKS2ezJgIhiPo7QsEAxW9zGrc0nVwaf4c3Bbw6s=;
	h=To:Subject:From:Date:From;
	b=SL8kT0bvR8BmjXbIidUOXtxkYjIl0iITYEHpuAvMb+wDNtqj3FI8nVzZJPVjzcnZX
	 R/tQQ2mQ7eJFO7wLcwLRx54qv2jrRHF500NbQ1IaK0Z9A6SpEHByrJT9hTRN3BFgiL
	 Z+ljzPMpDESUJqVY7UelDAsIUNyCUXV+xvy5r8C8U9wyqNLGuJOsijYCt0MULYWiEP
	 zclS7Oq1MQwoqyGLAM/MfAoQuwF5UqwfMCe//xAAJCZOtAXKCS0kvISmd3zV7/tjna
	 Jf2ZAKe/qk3YzDpdYDFwef0VrNviyAt4IefqQBi0RST5u43/RvdH+c2wu7gG50YslI
	 vF4WBfr014mag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8F8DC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461771387.17018.8271802423804404376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70848b22714eee2b177f3dc5fe8c6e463a7ba72da5db1ecef81d1c556294a4b2
Date: Tue, 21 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784617713
