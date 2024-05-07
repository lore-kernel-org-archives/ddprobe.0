Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA1218733D
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715113343; cv=none; b=B7aE34B+mesExo9RFHi5LTF+22GqCwIwz3xzhN863l1Y9lBRG6fE1350JPj6eE02KWqeAu9S5sPMVeeJdtBiwPpClwnvHLgnPKewGMXCJ124tcpmXxvudy2OOBmKpE34LZojCw7v36j4CZS+Phd6OzSnGEHX4C86DosfdZC2jyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715113343; c=relaxed/simple;
	bh=mhCOnHoOK1s9yiMGCuQ/0eyWq9sF6sDq15OfM5inMoc=;
	h=To:Subject:From:Message-Id:Date; b=E4D8IdfbW+igL+ZbiN78k48AVzEvpoXzheKfhd8mHFuyRrwl2lnh8RYCpMgdjEvfnl0zZBAJT+VE4FW3Tz14aEfIrEMWLliRsp8Q+afh+/8GyjLy5t2onGIYyRY2t9j969dVLNr7sEU0H7oUNCv8wDp8u5Vnx4x1MsDow7+6Urs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPa+4jqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPa+4jqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4065C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715113342;
	bh=mhCOnHoOK1s9yiMGCuQ/0eyWq9sF6sDq15OfM5inMoc=;
	h=To:Subject:From:Date:From;
	b=IPa+4jqUu1qgzvBCVnu8N0xoCkj5JnlfD1crK2W+RHxS0Doj9NfSX9DzWmPQvfjfn
	 ftDEny/LnBgwN+S3TDG2aeVKMqcUBCiI21kLVcKTpTmw51obcx9TWCa0YS9Bk55m8y
	 PIy80OPiqgh+ORI2+fzjCIFsjVjHBf9Fp/sIZmLWQxQcyDaxfnj3F7e6f+j8o+eUda
	 imMS9rMs/awD7v9Wjzb9sR7GN7g81rTXOgv3Z8R0MyXn3YmjW1JtvsCuHueVhPxUFJ
	 e+aEvmHUkEF00ipLNO9blduJE1qs/wqDOIbgJe1uG8pIds+ahQSREB0QiTArbWi4w+
	 uHGMVJ7hfMsAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C437BC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511334279.21243.16844160289027069070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab8f86ad81df30a87208cf885c257ef7d51f09c20b197d3f28047887b83079a
Date: Tue, 07 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715113342
