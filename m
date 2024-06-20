Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6384711CA1
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718859563; cv=none; b=CPd2aLSxGVSE7lGPmdijEgIEYi3RJnRI2nI6noKv6SKkFz54Mx8C0vBrcmwg4ALIs1ryszXNzpBpMFSbhi5EhFDDOzmH7hEiJMcDGc0jOKx+mn67nWyvILcBNn7l3HXVjC5X2GBwo790NjgYv2b6AvLaHUunOFufZECi3bp68NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718859563; c=relaxed/simple;
	bh=xiDJd8cl3tt54LIoFI56velv3BLCHihTUXUJSDsYk4w=;
	h=To:Subject:From:Message-Id:Date; b=QwZq3Tz50xH3+ava1tuIU0A4nTZJOrzVD5ff9zigXagRKqXvDZcEiC21jFXZC5jg3hRhZS2xXlyuMoYJX6H182IByZYmM5vjNHFvaquSkxLXQYPrUP+1M1fQuwC7+g4UX+BoBtnsRIG57udu64i1LiI9I+EvlVBIqzoGr5Gfb00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH2SvPgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH2SvPgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE049C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718859562;
	bh=xiDJd8cl3tt54LIoFI56velv3BLCHihTUXUJSDsYk4w=;
	h=To:Subject:From:Date:From;
	b=PH2SvPgxzkP1LZSiSI/nVGQHpJNfZrh86ypboAWV9wCp0G6hdzzpi+QsENxVUUG95
	 x66isDPoabFUSrh469xkAMpZe8HyY0C0ew0Ra5QCOeq3AnMtcco9fB8QodwZB31s3e
	 N5TohwCauAhsKMSlR4J3XUaTA8bXfSDwOzUr5xFW0aK7S9//u5JacOTAYYM/IM7igr
	 OnU8xXNyZ9N6jLHIAcpQ13ZUpVk/t2X+zhrUq/HzqGAcgo2hYIMPcdDdO63GQirMMp
	 zTKMw3ZZrtVWzjv0BBuYPmhtEIFAgcWFl/QeY3sQyvmREXHEZ/ezGko6q3adrM0GWU
	 ZQnAbDcK9x8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E3DC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885956278.17258.18301108404878953824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7283db864d27617ea151948d058c6d543ec2e891903e40d1187d4e935f3c344
Date: Thu, 20 Jun 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718859562
