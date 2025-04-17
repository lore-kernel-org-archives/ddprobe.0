Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A792153EE
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744873194; cv=none; b=WeHLRBo4rZ8gHdDtMAPu9wkAbuib8q6liJ77d4IiXwG18sJjgmYbWfjZUS+4uIitAzuwCILdoAy60FTrq+N/du1Iuod7j824TtbWf7f6Sskf8MCtJ9R6mllyHHBxAcfgUzKITWlArEHE8+aIsiWEugOmWXW0Hz73QhGQHqmelxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744873194; c=relaxed/simple;
	bh=+lfCyVLSKW9ucVaKDB04qeKM25QLY2i4ktt3Yb1ZiTk=;
	h=To:Subject:From:Message-Id:Date; b=N+SUpgSIQ8XJdVpNwSVl/Be3DygGzPwdtchQawWFvQrB1yjjIOm86nUgQpOhz1itHDyC98/l37YZvDoTgvCTjOv03gG6VByeYWMZv4HkFuZdBmdu+3ux0hy6FfEpxdHSYUpEFMokNOhiwPHyqvARasdvCLQCVApD3udQJWoXrkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj/FEghR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj/FEghR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F713C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744873193;
	bh=+lfCyVLSKW9ucVaKDB04qeKM25QLY2i4ktt3Yb1ZiTk=;
	h=To:Subject:From:Date:From;
	b=dj/FEghRNNeCKCLb+fMCsN4l9W2LcSWkRSaljhfPUzBp/cbk2iQApcjgdtElvZHxx
	 0ASXo2ZHkX9Fve9Y56laJNXvEbJyH6lirovUG5d5gff50c/sM0OCDV76Bcc0ZPzqHP
	 rbpQiaQfJvh94C8bTQzsnuJ5jOVC6n4niUFFcvrXeA8saeBMYj7fBdFzL/cjeew1o+
	 uCEOqrwOl2udMr4bBur2+On+cEmzMqXK+CTIJ+wX/m0E7NDP8kVUvLobID4sj5+OLm
	 x9vkQ9JFFDfj/SFrifP89XaK775OQRMpmr7L8H95M0Gb+4VEFlo4gHOGEAhXfbKlAI
	 FrC6BM9n/FmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF1C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487319357.13477.14876429894347415812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd540d58f7baf48965713a559c27bab756e580a6441a1b3c66f6605be8456ad
Date: Thu, 17 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744873193
