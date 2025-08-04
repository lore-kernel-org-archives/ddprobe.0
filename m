Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316872163BD
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754338194; cv=none; b=n2lTIjukn2W3iKpfBAcID89l3zalUxfdGY7VCBqmxs0bH/mJT690gZIxMx0xoYTteBe0lUr4ZM8HQHN5YLyxJmXzLdWHYhfoHMGto2WrRNICoi5lbFbQo0La8fv95qhSAKI/QyXbg6HNYTn7cL/+zicwC2VV4ewdY2hfW3JkkkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754338194; c=relaxed/simple;
	bh=6RCXj2thAQBpjV7A8LgB2N85SzNjkTqsWs/JNwjMzIs=;
	h=To:Subject:From:Message-Id:Date; b=GC5k0JGzTJ0/x70/Eyy3khhEHd4ilYje5UtZq+l+3jJikwbojzMvfwDd9iTGU+ng/Qa+aN0m7sn7BGSsvBjbE3V643mVgDwmLi7AriQux+Ed6VF39+Fj9TiC8DfT/Gp01m5BmL7x4ROxv/OzwwNGxLu11lNQ2PikH6OtsmscGHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqMVwBO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqMVwBO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754338193;
	bh=6RCXj2thAQBpjV7A8LgB2N85SzNjkTqsWs/JNwjMzIs=;
	h=To:Subject:From:Date:From;
	b=VqMVwBO53tM/4tKiw+Vfqx3f6M9B/1UTccfr6Jh/Sv1eFrIHdcjexusNyXXPhdV4b
	 w8V6cyApjO7rxLxPU1Bv5C89Bn7kcipMAreerGKr21bu/2tS1zo+ik6XLG2Gdv3kAl
	 Qm+mYT0d/MSVc8WS7PPIekNquCJju04bHToa6mGFgPHJjDJ02rmo59zanh74ocJmQt
	 kMXVkxuwC2dZgsC3MlDab1m/mx6BIqfSPBvMYTYIdjDyj4+5tcjzSz2IpS7BT/RzLa
	 nN5pQ0vYjsmpefsbs0uXE07R7MbtQm2PqhiJJXNF3cqQG7y3BctTsxnoR0s5UTd363
	 o553U1A1lUIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96116C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433819358.7574.14643049067556786066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db91a0880999ea42434ab78bf3f7a3c23b3b4a01ac84370e8c120697860be01d
Date: Mon, 04 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754338193
