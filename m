Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CE21F7569
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743687594; cv=none; b=AH6o7qd6uJ73rerx8pddDUAT8gmxZCGFsYf0ncLasQLuKhkmWb2Sb0+IUm5/9uLJ3fiQR0lGIhaBb1n1OC8xRjTzmNblqF8Rr/Jk62R27izoBQwuLS+QDQPD7qbJY4eaq3qq48CMYDM0263aTb4PzbYtZ6KGZtPEX+/gs75rMnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743687594; c=relaxed/simple;
	bh=w2/qhAaZ3EsI8hm5BQR4KMsZWfT7aiVjx3MzLo/UgEw=;
	h=To:Subject:From:Message-Id:Date; b=svEU0GYKD+8q/muMUkvBtOudR4LppP/dClFBqxuPbqY5EP/5r0MvteotA/Tq3zWLWk+FpEpB1+hCjLPN6l2l3ZeUDmBFYDHq/SJr/phwsCP5nRyAynr1mEpoAJ+mq7TDrwXMix+RKTBZ9Z+taoEEGpmeZ+H4JHaOrpl47UrflBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL3tRt48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL3tRt48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA87C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743687593;
	bh=w2/qhAaZ3EsI8hm5BQR4KMsZWfT7aiVjx3MzLo/UgEw=;
	h=To:Subject:From:Date:From;
	b=hL3tRt482cDWIdmZ/9v0+ejGv6zizVooX2gFJWboQQorua2fW3PhPE6gdcehGl8Lr
	 rSW8uvhW3wkCVOfdOnBYPbw/tvdLlHQku5J8v8WWi0wqXCGjzEVaG/geg9XkaGfEvN
	 JgBWoXBNtROzqHEbGwlRW1VUuDk4kMmEMfF6/ON8BxvkII6I7ZFJG8SZhWgWUugcFv
	 9a6+xh/IBl3K4ysXg27sUfQkQkMMmHY5qZqLYkwWmr160UlzB/BOKotKIB+hKpGB1P
	 Yrr/sehbHWHGzCITRmC+BrXtLQqJIdlXXoQowWRXTgT8xPD1EWi7U+hAofkwRJsZJM
	 93N0msu7Ot3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B1C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368759357.27183.10802048835291630848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b958695da1a22840432874ae94b5b0926c36d4f2c05580ea99b32b3665d78943
Date: Thu, 03 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743687593
