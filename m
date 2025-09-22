Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C22315855E
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758508194; cv=none; b=SNjEZ96/icueijt16xeT1F2e94wpl7iEPAcFxllVZFerORtvp5iO3LtR8fuZNw7fjAt1X1sGqmSEdk2Lh9GSpUSHThgUo3mfZcH8R6M0B/X3g2kc3bqvyXQgkLF5hJAb+uueHScf5+M6h9ePS3Fv5br57eEQmwP9THsGhzY3OQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758508194; c=relaxed/simple;
	bh=h5ml/j+RoTA0+18UI3T9g3Nuk2/D+COJ7inY8ar2R+0=;
	h=To:Subject:From:Message-Id:Date; b=SpSCfi46elAb+FHIBNJbWWtjl79kjllS6U2B2ZMwL/jNSaYrBS8ei69N7/meSTsfo64MHY4LZzw9i5YHmCu6FNyuvLLaMOG0hz/PIm2GoEyk7ipDEOonCEICp/vLN3phNQD2rBavpc62Mx9gRb/SzoSwr7I4Se27O082eGSXKwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqzFtJrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqzFtJrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98A18C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758508193;
	bh=h5ml/j+RoTA0+18UI3T9g3Nuk2/D+COJ7inY8ar2R+0=;
	h=To:Subject:From:Date:From;
	b=tqzFtJrSoTQP0TayNqoNcFKbwYCQNK2ExcSN0ZbCRPGEBGIiyk0VpmnnqRwUKBFWk
	 1NHJ5j+iLKnV+bxBUFD8+5PBhK4VxN+CU/b5ydfnNKT3rk/O6bxhiTHWnIlWFVcXsV
	 jJaUVEqJ3J1jk0UloLm266gvgtv/QrQd/MlOh+gmDGS8br14S6QHiPDbiX7+3Vf0IS
	 8ZWhcrvLeQLuPO7bkBPrZY9qvg5D5tbUPqpnqFfHKYmREomFfx6xrh4qYB30zv8agl
	 KIMIFyLqr9KNAmpjunIspcCwLpH0054b32duBRncItLa+R01gi8NN0MLo3d5oqD7zs
	 g3gwUlaoRxnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F291CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850819357.19877.14870457865404616373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a614db0dbe1383299e833ba04c6383fba4e6c9dfbfafc4e91fbd86fdd501e4a0
Date: Mon, 22 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758508193
