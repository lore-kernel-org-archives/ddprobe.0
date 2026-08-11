Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA432BEC43
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786487434; cv=none; b=KE2ZuLTe/D906dLBQ30a9XhVxBvM0nGpPZQSxtJmeqhmnsjMw7LMBBlzYF6o5c6qzJ1BcL2ni1UCbcQW5vxZ5WXl2BnAfAknqARcSDVS5RimS6JIsXmMCuFihE33iUEV2u50OGJwbOltUORXxd3LbmnuovDmB2MgMFQjsGj/zaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786487434; c=relaxed/simple;
	bh=pT4oRa4TKI/yu7RakVsbCbeD0XYsP1AHf4eKe+x1l0I=;
	h=To:Subject:From:Message-Id:Date; b=Xi87O/oJiBW6/MXAudLrBQPw7W8KSVLZ/nK3zTZZHCjhLlTjxTS/M39Zyo1EMZmajGSNevp1gm9blykLSe+GtiK/FesuNQnOjgKWQVHeL8WfqMq7RTg5Cp5daZK/cCKWCqL1yRMxYwel0tpYiYaqU5EipZBRip5GxWltBLUP9pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0hpbHEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0hpbHEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B79C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786487433;
	bh=pT4oRa4TKI/yu7RakVsbCbeD0XYsP1AHf4eKe+x1l0I=;
	h=To:Subject:From:Date:From;
	b=O0hpbHELAmCzf27iF97BKrsQURrR9bT95c+KhEjDRbkY5mlePuu3smeG+ZnGydNqC
	 Q+I7bUd/na14X7i8aNnzPm7OwzODHlE4WMZg48rK8Q7ahGHAVhI/XCy3PelljSYs2W
	 K5Q8czFhVZGEPMRrjR8oWgyZHR/wz8fq7COhVynulrppvbiiKnNvGM7Kv5DZfIryLA
	 Dh8XperzJ0PNW3xhTUr1yJBQDt9xWOs8dyxDgVmkpxDQHOwXKfsK3BKjpta5I1NA0Z
	 u8tGz5ZP+YAxERUEeRE9Kd5PjH/oMNvgwEz0IO14HUhocviJKhV4zatsBmytf44tkf
	 k6CWXKbBjobyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE64AC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648743369.17247.9391461956297766068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30897de1a6756f9d563a81508c516c1cbe8f60089a2e5833647f301cff95ca4e
Date: Tue, 11 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786487433
