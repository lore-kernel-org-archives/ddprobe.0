Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31444238C2A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787091634; cv=none; b=CdB2y8v5rhV/eRKoo31pwJoc2qWtgHcSeyJQAYE9k4CSYsFblxVUNkT/ml42ebAkTwLVUW+Wkoxg8chaIaTYArtOXPmiIPurB0g4Rrl/E723GBqYVgZ1a5zz0N+j2vUUZ7s7GrKCWJolHlT4T0Hi1uBIIQbDmkBmTRHm1kiwan0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787091634; c=relaxed/simple;
	bh=ZLKUlA3t/RkH2w/JaWVV/CgYmIFUuATNIPLltxzMWLQ=;
	h=To:Subject:From:Message-Id:Date; b=KmkSb62br6U7qScQobIeId7TzLxx6raVM73UqGujX3j+S/fUy0mYIvZUm8yr7znMjP0naHTWxEaah8cH/RTxhrtF18IIXao4EzUzYSWUvmwbA837eOOMHnRMZCGba82s7sg5Ta7gowlpYLvclpvdfdxneZZdQGUsrl+Gt0kuos4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSaM6stv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSaM6stv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05D6C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787091633;
	bh=ZLKUlA3t/RkH2w/JaWVV/CgYmIFUuATNIPLltxzMWLQ=;
	h=To:Subject:From:Date:From;
	b=aSaM6stvqj+UFp58Zzf+6lLn1fHkAoIdCNNNJyloThJIOPnZXWoeu3yfJCzK0Gvmj
	 8gvKDL3gY3OtxRp1KiqWzHUHne6b+LE/jRRvZxQDVtgqC53+X5rnIEImQZU2I/A3Ax
	 9AJwjzS5QUyyhLCZal2RQxYgBKK7jqWm6PMXTSWA3pepNoQEIhYtHjYd+FM0qveQIM
	 10OlBOaz0gR9cx09PZwAhvIkotr3Jf367Jy2B/twmEdKK91Ss5JDutWfJD5QFV6C7N
	 lTECUbWzQ0N7rMpkyRr5RGLdLQXtS6e11BuE4iiWFhO5j0BkBjzUquKl/swUesYrkT
	 mUP1lbZH7b1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC6C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709163369.5993.4520408313301372239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7ade6e4eebb7c2add6e9c8f60f99644b69a1196a5d0567722e7310f98022e4
Date: Tue, 18 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787091633
