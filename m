Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514D23612F4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788824434; cv=none; b=JEPlordHQW7lb55b8Cptg5XSB3Ygc2dgUt+r8vliZJk+er3ZzVVBkgPAqvzmJZn4jg2aj65lfG8TtZHJ0rCc0veOyDWNm7FUKvAtqhlDDWFSg0U3jxv26S+l5Sf4JESwLxYt+vsVUWYx7IpF62raYxs9MilGTu/CgKEVOJ4zUGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788824434; c=relaxed/simple;
	bh=/S3R6Y0uzhoMrdDTGbPb5sZm/5zZFyp7hqKcqRQyO4U=;
	h=To:Subject:From:Message-Id:Date; b=iHmbQuAwGOc/mA4vJY8Ia/RiN+o41+hkmJDMhSfx3WCE1Hbl0HJqPgu7v3wCjf+7wDObc5ci0aSKJMKf/WNzkB1MiogJPF2K7Xb+7MlvCH4qd3MZEZCateGRz1CygA4CYtVLgN4RWUQsqNZ28eJn2KH6oLytyMsf/o8dFQyW3cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U98ak9sN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U98ak9sN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADB4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788824433;
	bh=/S3R6Y0uzhoMrdDTGbPb5sZm/5zZFyp7hqKcqRQyO4U=;
	h=To:Subject:From:Date:From;
	b=U98ak9sN6dkdyayB32yCnJ7aqu9S0geKbtQf3Uq3aP1sWNHsoJVIfu8Mr+MMUeyLy
	 XV49Z2t4mGuYumpN/4Y/sTSwYwWHAYFu+CiKS2GNQWDlBm7tIK2gMb5HxBsvjQ0NQx
	 uK4/R9rS0uTkBjchZFUV/zkEdJxVV+igubu7PzEH1kSkEWTXEJnzjx83mRJ+Pd/l0U
	 XW6VwpROnf6CFKyctsedpj8I7hGt3sRL0sbBwoxpLmCRcieL9/YijSOQR1KJ1GaXXc
	 bGewd/OzbNDP1O20UE9Pu2ZVOpF+XJFu6V6/WWGsYCK7KwOzYNE3tA00YLbiuqD3tB
	 mfSiM79f7h8Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28C4C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882443369.2043.7908234659968817771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74feeef1f5563a87d9f3ad039dbc66150bb13740b83a79f7b9ea084ea2c38826
Date: Mon, 07 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788824433
