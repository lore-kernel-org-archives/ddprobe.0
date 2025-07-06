Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01133F6
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751761194; cv=none; b=pT0hQyZpYz51GcFUZXAPS9G7yWzfOt/ZAbAKqdOklkcUIKK0CcSTPPWmvlq+fFEHY3H02c7j4GN9s2wfFfsmU6ZSk9pTQAKzMXpqjef/Ni3iDDVwrT8CZhTwnLkWCmOzkFYcPR1kF9bqUt6NP0KdZ81Q27bsYfTMpLep/6h1pn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751761194; c=relaxed/simple;
	bh=NwWdpjCKICuy7/SKQG9KVlI5gPcV7TDk0XShdlM0fhk=;
	h=To:Subject:From:Message-Id:Date; b=EKznW6KrbywL80/pmzJb//s47pptUdfZBoV2qyAlCGkw3jgBGbPk7es0rN7t8l43QHol0+9hX3Ud64B2QeVjSF9BRFLoIhjYf2LJygcsacMB/VdZcCp/p9kOHq7aOvA08pFLJFuTTnDzLiYmRqY1XShkA/uEt+Qv8me5bfn77PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQUrla/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQUrla/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A247FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751761193;
	bh=NwWdpjCKICuy7/SKQG9KVlI5gPcV7TDk0XShdlM0fhk=;
	h=To:Subject:From:Date:From;
	b=AQUrla/9rh19MyQKwtYl32hdSfaNa2ZOxc8YZbDESkurc4ENyW+8hUHoOYqHS21XD
	 OCXjfshvwzWB+C0MNWZwRDRHIjlgEzWne9YppqJMclTc9cviEaUpsA6vWeWAyQJRM+
	 0GCNDUxe8tFqAknWMkaOe1rI6d6RWJXe5L4YKQ4TTftJohgPiqwLDrfGzz5Bq/I+yp
	 t88CvPDSbZAJl1jTce4ABx2SD9bMstkktgMF5nueQ++cLKzHhFDKTENxH1I/RUsak5
	 4aMx1lwWxSttSLQlrYr6vw/PFsnnuHYbAm2tZCjm/y8znp1GJDcVQQpxn2CsOB1xtC
	 eB3iIJQ9kEI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90395C83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176119357.32411.4948261205355379909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0c288365fe22b2501a9ed2a4f8b94ba15870451e263c0e69edba3876019c9b
Date: Sun, 06 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751761193
