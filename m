Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6703090C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786964435; cv=none; b=do2aVSBrfR444p394bpKR4mzr5tb7r6xQ7hfELXmQvqj+AMDWy/1Ix2dnSY6Oy9FN8up2HA8dHeGbfzpxTNP4ITD1NXFRxIZl1NhqOMvGkjuR/Hhtc07FHJijIX0NGUUoJ3kamGTpN1R3lUUJMQwovJFxD9rAtzNKI1tjQQwn1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786964435; c=relaxed/simple;
	bh=cQLkFYOQ1r/e8WAxOnWJXsRdhJMpWQdlIbTxV6mB4LU=;
	h=To:Subject:From:Message-Id:Date; b=I6XOCii9G0dgr5ur6qaG0/uzL8rE5Z9DFSHDTyPv/51KYtMJ0e+iFmKZj2lvh21rUJsHF613ZUqQ2aLYBtAbDb4JFdmN5TDM4cws+M3fIiInTj3hnWy3ajeendNfnuDXZhnaJd0AUvMsdETmD8qid9gk5zw8wsBFJ5kx1nwpw4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqkhHTBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqkhHTBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D205BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786964433;
	bh=cQLkFYOQ1r/e8WAxOnWJXsRdhJMpWQdlIbTxV6mB4LU=;
	h=To:Subject:From:Date:From;
	b=DqkhHTBDNA3qaU+lbIL0QUnMlAB7DZqmgBTo8Aje9uxZmBFZoStTc5vKUZ3WVFuBO
	 8lnKApN/8F1Bd9iD2dgbQXY4z5zlKaxORAst4D5RzNvpRFOILSJBx0o3gnA+zzAQ0n
	 V60Bqg6O1PETWPgDeH23DFoUIDwxiTR9SroJCryi8ltm3W7HQJ94OdUuZxJDxzd5cV
	 brXz2Rsl+JA8UtnCKWX8ChEe/mLsAylp72brKjVocWYtXaX0bHbFgZxkar3rPbnHQd
	 z5UQZ2N4dklKr9ihlAuisi9Qhi+wpfSws7cbKSHfnhYzFcfm8gauDM97b87bpiv4Aw
	 lr/syMOs8iZxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC784C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696443369.12639.17031952784056624333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47463eae4aec94c204e48a6ce35852fd55b2c4d1780c34e61efa87e8405f8609
Date: Mon, 17 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786964433
