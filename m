Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55B21798C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708766897; cv=none; b=aAw3zFhRUyT1v4kV4f3lQkThc3FZRa6/30Nzk4XYQ//kEOkKmENIzBHSwKUBEfNxVYpUYuq9y7/7Yr5J89a9NigWr/3RXxUgpf1pYx7S6edxLsNd/6q6pbRkkw7Aw0nxkR3q02Vku6cFsBp1+T8rNC11aKmSDbdqQukpTYdla6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708766897; c=relaxed/simple;
	bh=vdstVEwXFbWpgKJEvLI0CN39Vr1LZo75qy5j0I3Qb9w=;
	h=To:Subject:From:Message-Id:Date; b=WcgHvRIThPz6q2PNYywzsg1IigcCUaMf9bH94c8ebow7fXVVMpGQ0o/JNLzJ2aYkzPsvM3XV9i1HPiM5GARjRBF0IBMvpWxWnLI8dMghw+2x34N3G39NS37uPCBiYv0t9zxSs97Zf8Dn4fBTIC6CA+qCPf1UzyBE8mBOiRq0MEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8zerxsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8zerxsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7901CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708766896;
	bh=vdstVEwXFbWpgKJEvLI0CN39Vr1LZo75qy5j0I3Qb9w=;
	h=To:Subject:From:Date:From;
	b=u8zerxsYrGnkcWLHCmLhltDsHpQmg8il128DkQSyOXdmoKF/SzhPLN3WZjBrdgLXv
	 qmStTBh/5uW+rfjShKP+MfVA3h4SJgrmW4wV+kaoRGbA5LDAjQ386BxhYdrSqkLIi5
	 RzNzu9u7I6DZ0tykcpdebFfuJMvjRKQD7N79p6pEcUZoFtQ/FH68tl0QCWmaQRpumY
	 v22ceroxyOblY9TtSUOlANiEqbccqWLUEdH/8PSsVP80rIHtZuAEYr/lhR/FekKAcr
	 AmcpLvS7SRn4jBouWct87PPOJJ5wVTg/EmN5k/uUmmRAyBj5gqtLhqj9bIDiTvJ3B6
	 z+9PkrgFVa7Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BB5C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170876689639.1601.9627414859225514677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c168709cd45d59bd9f1d493cb43368a63ef3dff492416c45d7ecf04d56592f8e
Date: Sat, 24 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708766896
