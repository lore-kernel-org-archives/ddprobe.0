Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD973594D
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744916394; cv=none; b=RPc/AxA2mdCWSXfmqJ6+Di5D6bVg7FpqcublWnbNtIJJCXhVQU+CDTt/Vi8dGP4kRtSQ/3BwVHRl3iOHEQpBLZxBKa0hm7Gw/ZTlTL02D8KMQTSTKL1sz/mEToYyoGEZKNN8QG//xQMYebV7KggXOXuodkRSOnL4QN8Tjt5b5TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744916394; c=relaxed/simple;
	bh=UQvFwaRowDCDdbqurFh3xm18IEV9U1sQup0NQha02VY=;
	h=To:Subject:From:Message-Id:Date; b=LE+RCGe0mFk6I/xJ0rVnwD8xYKLYtiTI9GTs4/yxldhsPl1ogB4Cu3wX5wqJSjON2xzd+Wa4zD7M2BKkAVH0n7q2J4EhPl/hfDW7LNeCOI3GsQVPihyntQ3FtKFWOzvCCXnWeqANh+fLe8ALtyaQUqOgjC2ZKsKC5HK/yrAKsIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exqBpbuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exqBpbuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E6C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744916393;
	bh=UQvFwaRowDCDdbqurFh3xm18IEV9U1sQup0NQha02VY=;
	h=To:Subject:From:Date:From;
	b=exqBpbuutAVoetd6tb/KLd9u3/LlATzHHTciEy6t/0iKV3GwzpYuUsgdBL//l9tMm
	 CoiQzajb4FrZOWad5hcE6RZMCjkpweGO/R8rJjh/PfIuwPaCH8gR6OhObJLFc0qX2a
	 egVU9cM5a1clUdSqEvFMXnDrcrgEvbUPFub+Z+A01c0mLOFQKdsbuFWtQlYzJfBX2X
	 3IFlJYgSyu6qe/iNW1bLxPS5ixS+zLvO8foLh4Ypy0mEsbAMNZTc6XGOKXMXWyMi96
	 FVXeMXbjuOC2cfXEAXXCc7lw+ocQycpGCFv33SCiNKkhlwB965jR7Eq2ChLXuyqYH3
	 vB/4gVsEofVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5E3C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491639363.17511.13653320599599583860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8365aa50fb34a55922a304f9eac390de5bbd375eab352e9479477291933a9343
Date: Thu, 17 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744916393
