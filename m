Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A612D5940
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769176434; cv=none; b=Kjbq4vfFAcMnmLR+1bkinL28hIR6aI8oUMEbriPuwmZiFu8/cedzNDRVzbeunxaTda6Ug1RunZ2vsz4jcJkRcvcyUfSO3onSD5qLINsNdbGGbUY9fFNd/L0bpEJ8DudqO9X34tIsso+yz3CRzI9znQnOO5oh0yKhUnuLiIEdIQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769176434; c=relaxed/simple;
	bh=HDn3XIAd/lLnNqP6zSa1b7Zbcizf4GDhk5j9Gr09aZ8=;
	h=To:Subject:From:Message-Id:Date; b=b1D0cRDiPCb3jslJC2EYihmAn+9ww6KmYsnhygspB6w2bI+WTI6Jn0enuaORKDgMADf0sPUNVhDPJ0cQOHd4vsrmDoVwtvBcsWSy9VAsPHjdDMhgpS9eekJkG5FOoN4tUVl9KSGd2iEPzmtQNQOuO2W6hqm3VjctzdDoTdPgaf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DavxBGXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DavxBGXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EEFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769176433;
	bh=HDn3XIAd/lLnNqP6zSa1b7Zbcizf4GDhk5j9Gr09aZ8=;
	h=To:Subject:From:Date:From;
	b=DavxBGXkt9jq3TFCndsnmErfFvZIe+Jlnm8gh//ARveF9kVhl0ff1lkNZ3ByayXO7
	 GHNZCdQyj7qCI3LOEzd7LEFVi7lQ82TUhzB8bJ9F8MasziWosQNUIPsDIJdhtZDxOA
	 /km0yojyD6qyhzIRdPWTZSgp7suGoMi1pOArR72IB10TndHs+1ACOULoPRohc18w65
	 CNJNNY3kPWj1RNJdslkUI4rzdHyQ5706/w7uDbWKA7yx2jpH3c8YACrssAPzVBFQ6W
	 UfDrxlhPbxCtjJ7PbIf1REot/4g2JKZIPR8SpIqjDE0QSdKEdQUxNxwVmEq7X9RPAn
	 P/iSDXgZd6Nkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C03D74EC2
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917643360.27278.4883199352841198891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342eab355d70909e3cd552b23a0f8c349dca12b47d95021ddc8fae5bfd473a99
Date: Fri, 23 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769176433
