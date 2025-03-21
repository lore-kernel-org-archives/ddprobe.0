Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491C378F52
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742601594; cv=none; b=d6TRukgz15Qvw0TZco32GM8RJb2o3kKQhuDa6fPJ8rndqUdjHxZs8zcJFZLsZ7pAsZexBt92Mdaz2ZuMZzTTWWrfw0q0cHjkintPkCrrBkv8ZHVs6E00cITRIjOhH4Bx5u8CuAhR6eerRHZS/k9EuDrgpo7L5djKj+LmC0Nf5VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742601594; c=relaxed/simple;
	bh=KxsToiyAVeeAaamF7+t5V6TSfWl+/4iSnRC+mpQnS8o=;
	h=To:Subject:From:Message-Id:Date; b=IeqpCIOWZZCytKB0KqLVxQuxdKoj26lsTEhYpWJb1C0McoIDV7Aai2uH2jHWkLyiXACyDHsE7skO1CX/3wVmVpqAG6Hb0iz6tiEvkRjYN0tvU1GHMjfxHYkJA5Y/mTdQ5nqVGsGA9JpoWPefc7JKvhJ+ETj9AgRq5RsRfO9c3Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL/UfALx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL/UfALx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00F3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742601593;
	bh=KxsToiyAVeeAaamF7+t5V6TSfWl+/4iSnRC+mpQnS8o=;
	h=To:Subject:From:Date:From;
	b=NL/UfALxGluu5dyYQxxn0G4ZyOJvA/D34uxEhEHCP7zjtUyy+47JrsM+9OvTb5xIB
	 BMsut9dE8w9otU/bZ7kfqo1AiTnqozjSi48yhkyKeTgql692sCMFRNtq+PefUZpDPD
	 H64C77ecvCptwe3sJv1ORRDo0m0+L5gc4AXrUHkj6gjRE3o+o44eiTEa5SphzgUj3a
	 FszIRRb+itUPBmoV7mrk2wt231jMZ8Pk5EClrxUtTij7LqfUHcese6Sj29IoRYHuCR
	 nKbVCa5ZDjUCK+XEx2XnJR+HvZC+id7fdMlpyaedeNI/vikq0Pk/y1EFy3DpeZPA5N
	 gMWvqakqd6MKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED2C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260159360.17084.884253311601332889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3a4d137383ddd3235dde8365e86e997c846743100dedbf67b176e359b9b7ba
Date: Fri, 21 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742601593
