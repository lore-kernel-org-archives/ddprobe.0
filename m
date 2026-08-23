Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F07A22D792
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787450434; cv=none; b=jlEwVEKcBOS24yjvGOZ7WyL4Uxhe0M1qn2yVy5Nvvjhrj1omon3NYAc1iEbAyqYJ6ekpFWW9ECybswnaV4ZoOC96HNiwdEdTWWva7kEp6J2mg6f2mJQKhXcBfk8EmpMJ61hNiWp++ewSvLeAPBc3EPPdKtVHQV922vbavX+SVs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787450434; c=relaxed/simple;
	bh=Y0PlRDBqQZ0JcKllB4duVh9ZU5OAy0fs7XDqNXQp3UM=;
	h=To:Subject:From:Message-Id:Date; b=PwFy0YrSMGIWKUsUBxGobK7l3r3Q8odPpkS34KaG7ssg0WTEmHMZr01gC+1G+ieJ4zNHD2WBnd415D1rAZTZ//FCz3AL6VRBS+luGORB5GQlu4d/Rmzr9jNpWr+v1ja8d4mpyoDg/Ik8aVqYwsTsouz7Pe1u45P3J7aMrxotPg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV1pz6sP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV1pz6sP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA81C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787450433;
	bh=Y0PlRDBqQZ0JcKllB4duVh9ZU5OAy0fs7XDqNXQp3UM=;
	h=To:Subject:From:Date:From;
	b=pV1pz6sP/cBfie6EQA87oP7dDfnjv1AJGbrLz1iI6JZppWWZGsOi6coxVigQ3Ds6A
	 DWjfmaE7+8U5WneVkxO9NzilHhZ9OlQmotGIp9cweoYDvFb2OR50HYJY0Aohuanxlf
	 kVwPu0vm6sV7WMv2CMW3a/8qwZJUNz7uwtbNNd8+cwtSymSfF2n3lgFG3H7Wn55KyK
	 QcdlPn0jv/PBhFweJuoCtekN/xISdVl5mgDO7VtSUxw/I79ehquHZTKK8qdid8LDZV
	 YSEVdC/cnZr+JZyFi2Y50gN/FBtyPaAMwqfni/5XhERvaumo/Uk+21ckxvu4TjpAWH
	 YDWiJk7cNWt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3252C5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745043369.15303.17108556719840114923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450ad450af2984a95cfa1b73a377cca7298a1ac2b6b975e24d7f06eeb9a08af2
Date: Sun, 23 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787450433
