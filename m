Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA2E8BFA
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714199543; cv=none; b=THIrxkze93ds/YatwO43ZHn4O6xtgUs5SzdRX3lcKZiOt7CNYjfzb75zJuGFpFDEhxiL/SZhFAUW1Czx256xXH0kdISbn0E7fgTfI2EMOIwwbmuTtociFoN700hzBgOXGbLuoLoop79Cmjnv/jcSPA76bYZMKnMCQXi7crrFgvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714199543; c=relaxed/simple;
	bh=rjVXYI6d/Ldt6SV0rNR4UF6eaDfn+Ev/PAjxtb+mZPM=;
	h=To:Subject:From:Message-Id:Date; b=Sm2A0na5YIC+m4s+qVdUXaR0sAdipyw2/3oQW4KljMH7F1k0ZyCqgCHx0Qi/eP51wRPEprUP/M2fqy91Y77XCjfxNkSJ5XuYfWuIcaOfLvcf6XRszddiJ+6oglB4CLOy0LqrR+Xgl3hSCi3eiVpKKqG5MgYKAol4BZYKk3OqOI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqaSOEVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqaSOEVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2132C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714199542;
	bh=rjVXYI6d/Ldt6SV0rNR4UF6eaDfn+Ev/PAjxtb+mZPM=;
	h=To:Subject:From:Date:From;
	b=AqaSOEVITVe9m4LaN1B+RUCoXvBGM/5Q8MODN+tNQEr7g9xUXBMcsLlzJYMyGbXxW
	 ZlJCHLlLJdzcmylHmBf0RckwQDIIWX3YtTUQ23u20pQE5EPrSv/2w7OK09lGXTNCJh
	 w2uoWxyWXynJt/So+Lvk5Cx9YrATAk6n7YjFHPvuMua20EMt41dZE/cPwUy1/r1BDB
	 i9THcJGMM5ro+0jWd/YOZbbSTUsEivMyz4+ogmZBkURz8ENBBHetK1gv7UpS/lASMl
	 KPCyzUexQ8AaDXoy4FtAQyxtanEBpasSL9ABlJFtnAWNiLExNgid/pe56bLsFh3cVc
	 Iz+xwLNDX0W9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5BEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419954280.22533.13182419271058921971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04125a6a7fcbcc4dd974ada06bee085f5a3524f73e69ec06b526d05a03d81baa
Date: Sat, 27 Apr 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714199542
