Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218C12F1FC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750897794; cv=none; b=elRq7X5+MyEQwjT+t9ZWRi118KcCTr6TtJLqIptJFJ8ncd/g2yvI878ndDU3Cd2r4lioXr7nVbrWlL4LQAZ7RqOaD6QwVV/zylgXfCF4uMBnwOe2dEUsT2SSjPhY/ZyiNWjMNSV637bLXcr6b6QtlB80kAq0NT6flk6JVGLvky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750897794; c=relaxed/simple;
	bh=E3XcQg8P71palYUH1YzZsV2nqXQLPJXuGCLi1XDFxa0=;
	h=To:Subject:From:Message-Id:Date; b=etXsY3/GybzqlvW+OrgJ2v6s64qQW7zEIRj9EuHmNI9PC/kk4Qww7GwbSuuUrmahNuhNja4SY0JLLkXsbWGaF9ftc0EZPslaMK+MXY1laUMojw9OXwSKid/VJ0nj+medzV0jJ4YkNHSnDFA+BXdk7GXGDEhZ4wYbvsbH6FkI0h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLCVgsO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLCVgsO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7DCC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750897793;
	bh=E3XcQg8P71palYUH1YzZsV2nqXQLPJXuGCLi1XDFxa0=;
	h=To:Subject:From:Date:From;
	b=tLCVgsO1t2oQmKbMR98RaYqRZDs5fm4YxmJ1Op2QCaROnJCdGgcAqNMeq8zCiglLl
	 hNfPNl7B9sLDy8Zeci2AZ7lj8OKnLAcjUHBCzhdNRwiujFlC7MJk1bCZNFFN1Mnu67
	 rD1znuRREQm6HgihSkwrnj/5QTZVuN57F4jBJa4fUc2YkvIz1kNUDI15LAYcLlzKdE
	 PwnfjDTzBxjG6WXsN2Pj8dE4+AfQP/e1qTj5VzQgEbIY4UCy2YwEZKPtuCxaV7Xfjm
	 wpT842VJnAljBwM6+9owEJ8pRWQ3VHR8NfMWfwVu33ePU67pwQLOMkIL2qdFBG3l/Z
	 LQDh+S7XorVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA08C7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089779357.28326.1759987831390419755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a506a55ed6c5630683a4bbb0a3a67e67a32d340f471d2ba22db1bdb7d658c3
Date: Thu, 26 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750897793
