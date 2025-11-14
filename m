Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2332F5A24
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763105394; cv=none; b=K4++WqeSnW4aXCnQoeT+OXumOa3UOWOQPfDCcG04Q9vvLR4V3XEK7rED871wQYjr09Yb6Ksj8GTeKCHC5FQjrJcE1a23T+JYasxkaBN1oYsBHtsJU5mdjgHiPIv1I+LYigOpC7QzJC8PuLpDo/GJN+FXnz9HKq9AmNBCB2AJnxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763105394; c=relaxed/simple;
	bh=SA2e7a34pnNbLG6mUWgsy1yBjR0D5O7anbGJbCo6WEE=;
	h=To:Subject:From:Message-Id:Date; b=VYEgDRro8if7BRhR6+D7ZCcBP3MbJq+69uO5AcNrc7R16UK9nbP9y5a38SNFpR+8uJI0a5oTo+LJzau5ZjH7mbIVbab1IUghKVd1adiPmb5DyKavSK8B8qpcCYldNnI9ceD/M68SZ+2G885gK+vV3nrDeMeAYBX8AembsbUuQOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQHoxKb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQHoxKb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763105393;
	bh=SA2e7a34pnNbLG6mUWgsy1yBjR0D5O7anbGJbCo6WEE=;
	h=To:Subject:From:Date:From;
	b=YQHoxKb19MIm8FB/YIvbK8ZkiMygfElfcCsINE53IXzylpR+JwgL0MN+G6hy5uCmB
	 60rIyswf7iMsMtaYdDBUeTPdEZ+3NwK8Dbi6H8llr7m0z5dm0F7uFkGbGNFpr5kOlY
	 WDfO+ICzNCMwGlAQ7sIaXZKt8qBYHSsbJwOTxeeEuLnJRH7xLKs4kCjpl4vOFILydO
	 CFCzMCMX2aflaJnvRpqZssT9q/Godm8+jVmHjI30yzvGj6Uw0sjAyQhyNUSUWrPDn4
	 J4kNzEug0KGJFzIgyjsGvewajSnj7kOYE1PNG916xUPf9VSaUZJGEiJikMsuEjT8Xu
	 0noc6RlvP+WAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB19CDE01B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310539362.9271.17628233805482357012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b28535c210f8d96268d8f211c6bc089452d88ba771b58387ac3bc8a0c23869
Date: Fri, 14 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763105393
