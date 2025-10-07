Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2B335949
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759812594; cv=none; b=N1Y/5o0GMGqHwKmtmUWEcOIElD6FbCG/G9fh/HxXijojw6nJvMiouKVfT5C5qVkLjnZDt+qYdFIJesnMRdMf4GiDc02U5GydGgHSFWH2w+rkcU03Fl/6Yv4H9JY3LbtUWbWmAeRIQb74q4eUHYF/qzZwg9HLpQ3WWkccnqfjofE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759812594; c=relaxed/simple;
	bh=eI0BafS1594eEeYjR2j7vj06IWjVXTnSlvQOBNxi/4s=;
	h=To:Subject:From:Message-Id:Date; b=N5MwqZdPcHMO73uTCuvbcuq5PlZmecHb5qUJ/BN1+SFxOaakM2PLhuYSbxPQ14DBEYXzgxiDc96I78SSxdgBRst0Yc5FbtHbVCnNZC2mGD8KOIy2IHnc+9Lm57IfXsFfhRXEUUrj7+2/Jly6r+P37rh2N06IFjqSUjeg6GGirvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkkv4dtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkkv4dtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F301C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759812593;
	bh=eI0BafS1594eEeYjR2j7vj06IWjVXTnSlvQOBNxi/4s=;
	h=To:Subject:From:Date:From;
	b=tkkv4dtgSOw8ERIGaaiMRRB0fr1ghiMiOepqZVl7Jv84Ubdv0G5Wd87vMxy+9U0dg
	 0rJ/2BHjvhmfZcL9Lg3az0+L7OdDfwM6GKgvLJn3yWJLvELgX9tMVbUGoieACstqe1
	 X5IHZe5A1dnKAOWXVJHM94tdilhCDmcuV7g/2ncpiHr4C+VaNenGwpm20VLhXveUUa
	 eMYgsPuQj4rdNS1Do3bGhuTEixXP779EUgS/hdC4gk75zG0iWO1bjIpCdYdfBDTNLX
	 WFQGd+Pdh6HgmW16y/WI/Rp7eKAby/NI/85iyz2P7JWicNX/DLgDsh2yrFnTfahIoA
	 sp8LOVMHZGcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F5CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981259357.27621.6687683578458284447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2339161828f7008edcf347ecb9963d6bee4a209e7d7ee8999ec75bb37ea0eede
Date: Tue, 07 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759812593
