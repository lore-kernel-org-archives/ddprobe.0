Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FBA2045B8
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741973334; cv=none; b=HYFyoGlzZTRfZ3DoeTKo33C+J1RHIWVdLTN9kieSpTQQG3dh53C1kySQhf5IfZGMp34N/15bVvXFxOILW0OIqQs8kRwv4pOIqlkGrYl/DSuILQVNqiJM9z3rF4hSIbVdZH6SA6GQ3uff17pt0RoGIbvGUyrvSKN41OjHZJod0Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741973334; c=relaxed/simple;
	bh=CrJ/Sqw6tyBbG0n01tO6bKH7wiSUgVvuxNf4fjMiAm4=;
	h=To:Subject:From:Message-Id:Date; b=c02St+KR62tTP01O4yP1QZCV9gCAaoFfAQzb1gQTFbZhFXnfwAQa+ZV9bTBHxQi3gLxUQ4FO/rBkJBT1PDujD6sj7xlPGMkVez87fOauL0mouLip1Jl5cuT124YwxvKjotxtchxkW17Hso0FiWgUct7/tYvHW7LojoqzONKo4PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUnbCQ2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUnbCQ2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741973333;
	bh=CrJ/Sqw6tyBbG0n01tO6bKH7wiSUgVvuxNf4fjMiAm4=;
	h=To:Subject:From:Date:From;
	b=dUnbCQ2y/sq1Lm/QjwOuAEZhNqP5yvspChSnRfMxygKXC9KsIWJQYGUDVjNiLjEPa
	 znWBFZShR6rpLkpZg1Cv3xQdzKkjyhjtPAvJwBxQhaeD+sqanxnzh4T1UrnT/QC4pq
	 QkctF0S9GAmF4XuHEqEj4Qux4L9d0mdZlKa+mpIo8lb4LhhV4SfRC4pZQBbpkbBwrK
	 QAAr3QQq/PcFedVyI5XLmKWnPNgZ3qdX9/XCmNhxMXCJIPSsP8FWyMn5Ld0gj9iGBE
	 lFF7jRTif95WAbJOK8CX0Te5JcmjK60kPL8DdPU0BWcoXim2kH9DENBCeHxfTH9Pzv
	 3HNmnMf4RaWOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463EC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197333359.12347.1919184980530491396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65551a5c1a187fb5e262ea1e473848ab9ab23a8b0c2f9e585069a1e3e537416b
Date: Fri, 14 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741973333
