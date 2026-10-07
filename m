Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4145A2D3A7C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791342634; cv=none; b=FHowHCefeW2jk5aaKUVh7xxIxQLbjFdLqpPWzXw56fEoN3Sys9uPqcC/3Jmgt+8Of1Np+d+XYp9c5nuPG8eVBmn7UNKx/sWMhx8QtlZAv7RqQUo4GuWDzUaXElnBZ+uxxhi0kfQiUOoa8037OxfrBwQDnZS85Rw7WnKxbBfddVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791342634; c=relaxed/simple;
	bh=yW2J/v2uLkBQ5rct+9NY+2BRvCZQeNPiFt+mFKp+hV8=;
	h=To:Subject:From:Message-Id:Date; b=DrZ6dr5AqFbrCGxabpQ+SSwSeHNbKs4yodpdjR1GC2ERfddDqHqMMeDxKiLzlHT2PxMcxQ9FMKqgFlDJfLsiurscljgizCBprIknlyxVdXa7clh0Pi5URutB9AqaZqaC4EL+iwNkC+FYCalpGDzjc6I9S5VmxTG1+hDBFBn1JqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flC/efaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flC/efaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BCDC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791342633;
	bh=yW2J/v2uLkBQ5rct+9NY+2BRvCZQeNPiFt+mFKp+hV8=;
	h=To:Subject:From:Date:From;
	b=flC/efaOOyS+99a/hIgzNrCCJCUU2fnvkqpMX25uv4oT2P8CYpUy6AuavNv2iV32G
	 zvQGq7yfFgNTOQnwI9I8crooL3vO1DFgjA4o6GTa/DTthAq4NDQZq4i7YrJkIQrPPJ
	 M85P3v5o5vi165SgtICA63j5vjRjZNAUET0mjtz+LeQ47eWFXzHiWTqfSgtorOrsBb
	 Br+ejlpa6wM5wInRW8mLLYQZCRt7695L66ltXNdgdfDVNn6BSxLEMfWu5TwNmdX0lV
	 /Dg7zZetwjP5udwqe5h1y8QAt5EQnLjeesxo+6mGZLRFpzhAnQnh4uJPuRRbt+yMeL
	 4v2xG6cs3pBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30D8CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134263369.18621.17262799196890896835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8aa50b764b8e98d2c7222872908336082b96a968237e1c20f30621510cc6a5
Date: Wed, 07 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791342633
