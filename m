Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5682B15CD7F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717173263; cv=none; b=tjMcwYl6fqnMCMlkv78cyT+WGT8yqfC7X5Hk9UkpcQJWIh12vxOw8ew4OeGYd9Sprhj5Z5mdjShJsl4TZpZVQzibzO+BFuund3AZj6NSPe8b0zJ+I/oc3w2pBONorkuAKztNTIkzgKw6cr2zTVjIx1YF0GrHBxvEta+jtHKpGf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717173263; c=relaxed/simple;
	bh=rxN4buRqnJx9mv+0CG9FMbwYUvowyOXCe6ZhKG4XOTI=;
	h=To:Subject:From:Message-Id:Date; b=GvsnvRcgllzq1oJJdT4//zyLuxPuJ6MVrkMaXZRuhHWzivXJ3OX+QZ7NIBVERwTzpgDfjrWYnoqVyT0ZME8WIolQBG/e2BS38KC1qoOHD0iDYQ5xjzpgS7LyDxP4jvMi+ZRfXw9FvuuiPOzOJ7S60cqf1e8E+lfXjtqa65J4jeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k41Pp4If; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k41Pp4If"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE82FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717173262;
	bh=rxN4buRqnJx9mv+0CG9FMbwYUvowyOXCe6ZhKG4XOTI=;
	h=To:Subject:From:Date:From;
	b=k41Pp4IfIzT8O7747Gj0ooI/9AEhK/TQZQW18a0vk4vHOs4w/EfMBzobiYMyjGJTe
	 LFEMiY5zyJNK79T0LNWLRqigMTSSfzWB8pZ7J5QPpiaSU8XstIvoGYS8DK4tS+6HT9
	 E6xwRMIV1KU06eS/rdNADF6udr/WPfh3ekjXXP2h0w7yALOvpcB9+w5Id48sq+sIi7
	 I33rBjzKaumiGgNX4Lvgv2DC26Z54Hs10SVhAULM1CGpAJy+muwB3DBk9+/AYP1JHs
	 V6bJW1Ebj2jX/nOkPAudfhyycQvlUYNjr1r6WE4X7U4dO1kdaqn2kPJLmipJL6HYlP
	 apYXvvnvpQ0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA639C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717326282.25128.3537525721190543510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55694ac98ead7196e41a242bb657139401708723ba6148d1968e8a47dd16453a
Date: Fri, 31 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717173262
