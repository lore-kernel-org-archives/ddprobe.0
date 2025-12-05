Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D130C2E7637
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764946373; cv=none; b=t6M8/aiRzHQC0P+9TjmUCmTSS+y6b3OXSuVC7FMBkKMIdG+DAbeEa+dDHNbZO6JsxB098Me0/JCG/lq1wvZcpE8LnW6g+EEe+S1xCkUYpWtmF4oswDWMpN/sMpyPZJ6WIa+8xXaYFfdUUK7AvuKcB7EZ3PJ3lqFceh5Ub05F+DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764946373; c=relaxed/simple;
	bh=+Rpa3TLHWESaw7O9of20/RCTyoi5lLzSWf7elqxHB5g=;
	h=To:Subject:From:Message-Id:Date; b=NmRWyucpsxKOa1UI87jk10qLoiz1QY1nTHQBJPpI4liGvsNkSGGPSSwTzLrQF22TWrPLEXg3tc142MBmCJ3/3NUco4f82Txf7u1U1mpkxnMk0j+t26mhLAIqOyplhZkMDlano5nqijy7zq7QxL63kwm1l0YPMXPDAoQUWPYCgew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwZKhRUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwZKhRUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764946373;
	bh=+Rpa3TLHWESaw7O9of20/RCTyoi5lLzSWf7elqxHB5g=;
	h=To:Subject:From:Date:From;
	b=JwZKhRUXnLGMKIWcyXyCiqm7avsfJivubPyfSMYVa2LA3EmPfFfBgLiZ4uMbuhyIg
	 BikKJW0tGUtR1DguGwWJZp1jjBzpdfRaAr9Tk1YHLxryxHzmo/xY8xlhh9jTQF3fVp
	 avQAFiUwJJ4h3qAH6CbgT0uZBFqnoL+QBq2WyNI7KXL6b3M0n0aue8rdePz8jgwIMS
	 tAHU+zuSi9AQb+yZCTFThla+4WwoYG3fQcHQFXBDDUMHv4R3C97kF1c1SBs7ebbvln
	 CNrOoSDsZv+FMXu2EVhQGjIE2jl7mUWOzwVGuDQzwiHFoGeRlAL4upQv/SiIqXtC4v
	 dVA7PKteopT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6CD32D8A
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494637359.31106.9176064266737421343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fba137f805b4ce714c115c2eac49531c711e3b3029fab3ae993fb717d4df6a
Date: Fri, 05 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764946373
