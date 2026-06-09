Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7477E41B360
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781010334; cv=none; b=gMfUqjceCYGm8mUtkAzg/0KUiRRm1Inwi/jt/NN5Q4gCk/ED/i7jSdJgtFNeteMxyfOAG+ON7KurbyCqHZzTCJrtartiyDcmZuKGtimaukPqSwJfIY0ClumekddD/bCr2L5VUhdfotJEgOY/R428pQ9pwBvrWHz3+BrGmTaf5xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781010334; c=relaxed/simple;
	bh=AO0H5zDrORfm0+JtHY9nR720CQzKwC7wUUXd2iTRvuw=;
	h=To:Subject:From:Message-Id:Date; b=io0RilFWXnj1uPt6/0Yd3c9OLf0CSL6JQW++GkExLQyXRgxvldt/mKSDnXBW0FONkVJW1QytanPmKxjIYrVPuEepY+nu42wfqAF2EhkciWQlepzPggLqRZMC0HPJn08BST2dY+WQ9UoHg9StNKLvmKbfvcPqAb8xN6p4vqLqWEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRfyzh89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRfyzh89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CC5C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781010333;
	bh=AO0H5zDrORfm0+JtHY9nR720CQzKwC7wUUXd2iTRvuw=;
	h=To:Subject:From:Date:From;
	b=TRfyzh89eGvMWmoRBDSU3cqjNNuArkOgvKA9uQEZjl1M99rkjF2oXiAc6uae23TPw
	 3E0uvYBSt5t3gdBUsf4aoPAQLWdY5VUIaisMuJbdyhFPX9fUk8flU2pIbngJsS/R9l
	 WnBuSxw2vcjEhAN5EODkDj9sA/W4vLAqtIK5vuzWqwhV8/e5HsbfHtj1Ko19WL7XhS
	 BJGersqNliLva/+5+Zzv63FULSpcjXxGmSrOajE2yDMKJot1pIDz4JeHnwBwLugwMK
	 H00lj41Jpo3A0ryJErlwEs98XdsGnwvcbPF1PPXkrp1i2BMqT+zhlyUBYQD9WRFdgP
	 4Ywu4mefAoUKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAE4CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101033376.8867.2014405336998735273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d37d97ddf052e6eab158ad0dbbeddb9deb6c5d14226d23b991801f4d07f7ca
Date: Tue, 09 Jun 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781010333
