Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085322FD1B1
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771508094; cv=none; b=LajQYjGYFVwVBgLU1zZwBjWgsh/Pksp8RewpId4+4OV3gmyCBnJffZNZ6s/6Vgpp9aUbucwFNxQ5PIAyS1dH1hPYdpu1RviKOQ9vhHRWfyYVhCUEbUQ7WsyIEiXxmzaXX4eb+P9ZR3Gxj33bKzO2wr9ysfwW7sFg2UdJhUqI3lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771508094; c=relaxed/simple;
	bh=1dxb0thl3QBeqS03stVHD2aTPRJoQdBKAqinapnU6E0=;
	h=To:Subject:From:Message-Id:Date; b=WB/Tg4K3n24p/4ErmA+9tECbHj+CjPZ1OYOkoDkSJmWMiD6QeSHqiE0phj/s85fDj+fr0/HwOkWSeao5gjBsZONRXpS7tavy0w84/cYP5J1L1pUOEe4N/SI6gqwqEnnqIF4xtfv0QM4P4wSsGGFGNVBwktVT6SWBL73daNQmPBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awtha3fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awtha3fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5907C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771508093;
	bh=1dxb0thl3QBeqS03stVHD2aTPRJoQdBKAqinapnU6E0=;
	h=To:Subject:From:Date:From;
	b=awtha3fzTyDRS1azOxJcBqeU1i+qynkpYKiBuM20Oulng71E9nzuRYfzTMv36c/YA
	 OmO+DQM737rVjkzMB0VnQlCIDYCqzb+7b6qYDjUFD66gfFLY0QfemvvxZ6R3LEYgZ3
	 zU7cmoKX6DH7P+9ypXKyezG2oNYnrKe+vuaH7chDvLQjmdyVUoosyv8a4VjlkiNlFI
	 /PdCrULkJ++i9wlKb7ZPoRcGm7Kb23e+Rntpc+WYRDLdO9za1Efd46rEMSSXNNAgnp
	 eAWnHiWoDV8O3zxJ28UoTrcIiRhbEVueI/36OC7sYEuYYchlmxFmr5404+mavStCE9
	 47j0+cmeV0GsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FCE9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150809359.26764.8705385772389657198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb11578f71f2ef9870b5970e55511f8cc1fa06df2f07689a0cea618e37ef99e
Date: Thu, 19 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771508093
