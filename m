Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EA879D3
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718606303; cv=none; b=o/os83fu+OEYkJ96GmFJBlFIMAutm37YGgW+z08/OOzWpXAVQz0S0aEMHFYPO0IyOZRY95KAfhvu20L0Cq1XHVXqAEk4oZU57JhsVeGljh5t47cytoO9d8esp9/efQBPzoDnJ81GD86JxCrAN0cLQGHSFqmKDRz7tKMv4ptlXhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718606303; c=relaxed/simple;
	bh=wMw0g8lK6ya4q7I63/0Gvtp4CfidP2rVBoPPMAl+z+8=;
	h=To:Subject:From:Message-Id:Date; b=c7uJeigE2Xt3j+uMCU/DDM+R/Q/F9nvL3pP4QQk/PSO6QpV0kheGq3GFFg4bIQyqkZnvm7sJUckgjMmZOvUYRLWn3Wb7JjJOl4W4cAfRbCn32JcG8kx75frOd3nnojiTap2tOb0vaC6+9F9TOAaKkOduFuZcfdc4jMBiJdyPxkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC+WRlj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC+WRlj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F32C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718606302;
	bh=wMw0g8lK6ya4q7I63/0Gvtp4CfidP2rVBoPPMAl+z+8=;
	h=To:Subject:From:Date:From;
	b=fC+WRlj+LYSXNPISuaq4bg6UC+0FGqEVu06g1++u5EPh/k1t81jLo3qjemCnP+4il
	 RykKHGk/+3tpRjSjxipTyQJ+veJQ3IlyaQ4c+71bg/gMlHcTpLu4JxInX4g6XEXd5H
	 vvjvL32o6VzBmvRwSjP8oflbGFzwf+3iTuLThtAe3UEJwBgy6SVWR6QLGy9kmdi5nA
	 9A2lKtyqDCALK1DpwYXiUe0STw4Crbchhd7uJ6OJVoxET8RIGM+gJr3CRVmESL0i79
	 Wl0j/1KPwATnlca4VxYZI58PppJnprIArVABQZ4VUnxrefM5LZASq4poTSc9Q6R/AA
	 BYSOz7fz7dl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2778C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860630278.23590.13848155707192975039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4014615d49424f67b5db220126d6199a7b8fa598b5f646031f88d647ed3e10
Date: Mon, 17 Jun 2024 06:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718606302
