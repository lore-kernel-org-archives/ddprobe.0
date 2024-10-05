Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389EB149DE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728134754; cv=none; b=dWfniU00PCqrdakBCrcEPs3Be4XfUV+Oh7fjp1vgYbxyel2Mw+8diRIfVk7k80/Ywt1rSSZ5EtnWM9PqmFOwZTY/WluN05Rqv56mn7nrLm1sIc7bKCtSnVj/4RARmXzESFCLuIJLXSalL8vjKtCSQCcE6nHE5X/p4ao3HP4NkUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728134754; c=relaxed/simple;
	bh=nYEHh0gXVYg6K+hPc8b6Sq1tkTDuIPARfvfayFNMaAA=;
	h=To:Subject:From:Message-Id:Date; b=GVF3c3uVZbqlVohSRWCXZuh8XVdwV3xdipKVD92Gi37X85mJbiUd4as3rSjoAU4+IY//Zigf5rNU7qww4GKtMSYdXUeyj3aNK3xianJdU5/uLGVQpICpirrHUiqxOUgL/EoMaCUnp6ZCJpJJ+qWdLISJDB5kUC8gUPsvtHvvCXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSStAgwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSStAgwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F0BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728134753;
	bh=nYEHh0gXVYg6K+hPc8b6Sq1tkTDuIPARfvfayFNMaAA=;
	h=To:Subject:From:Date:From;
	b=HSStAgwSagvulRoOY7tkLdxNsnZAZi/dSHkJdvrAb/yklka7WtVhWMnsNQPxx7zG/
	 hecqySr4XbosdZ1iOjy5sgyvwjsu6HnawvH6oJxGJRZQWB+A7kPjex3o6PURBV8mvN
	 4/3+g7zbDwnkZIEe27YnVkmEzdJ29IZwWhykbsQY3UbCLY4GVWg6Y3nJMXOfP6GmXq
	 YscQKfnuPF8PtXaM3rSzJZcaucEJFJwF9T+E7abzUsoFy41DNuPLYQfplux97UJF8T
	 FADLJ/pFWw9jUL/ea4lQeyJXt6zJv3fzyYJiyBQlxj/MIhvyw0N5wdf9rgI+5MRZOz
	 AbHbecl/1LAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E6ACF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813475364.7782.12881919225382081897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc74cc5e2fccb2f0bd07a2244ebf6b5a93ffda29458cefbcf01eb2c9112f508
Date: Sat, 05 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728134753
