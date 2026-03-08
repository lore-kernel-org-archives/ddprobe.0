Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC2F395267
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772995494; cv=none; b=sjqZaANJWd5iX72PcX5XxCZKts4hMqFeipIMOkg8wo2NIobSV9/Hzn2VUdkxeb6HZWtvchXNidmyIFVLMaD9qjij14wzVBq7Zq2NaH/W/DiVQy9yTBVkwifI6BerKxo4blWUWO0X6L7Oymi6ZBhisAoGaCOWCOXPiVZTZdewN5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772995494; c=relaxed/simple;
	bh=+1np2O8ptqOAETCweq86y44vzpPUl3Fz8Tqzc8Xllbc=;
	h=To:Subject:From:Message-Id:Date; b=RqPji8CE03n8qeFFWPJZRqXq5uEuQx9LKT5n+aWb6XqWC3E3ll0GZLwySmi1twM5+9rPe6t0TsSkbaxoDQNK6j3itdVEGZvbMqZBJ8E3yGe6KuhLBJvrK9cofcQsW0+BlCUA9pDXund5rJalah/WEWss3LbJWRl2/ncddF0MXlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1WQgOkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1WQgOkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B415BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772995493;
	bh=+1np2O8ptqOAETCweq86y44vzpPUl3Fz8Tqzc8Xllbc=;
	h=To:Subject:From:Date:From;
	b=n1WQgOkHBwLUD4QUrPMwF4ttJJ2PSnjV7M1uc1PaIqPYJ5qujJyfRiGDv49HKPFNE
	 /CE9/ZVpsmOTo+kQaoHvy5m9cIkq4AxREWvaN3iZwfezrNIYr6CG0jpg0Vm/7TtXB0
	 3X4caCr2wE8OUd2t/yxS7T+Uv+bTE6oC3PhOc29jTFQ1gPV9WBPPDQJpTssbS2SxtF
	 xUg2+cbALo25UQNHcqdLTSzlf/yC+SW7jLleQwdmZC3WwH37XgfhTNbz6dmBKNbzEz
	 80iyxHSryQjxUYeyNH2GX1FEjyq72IuJRvBXf66bvjt0aWwTCdjmuvFAFGQboaVH55
	 vrPMmi7BRQC0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BA7EA853F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299549362.10615.1798113512690837325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9126c54fe5b9c68ce36ead6241e0af0d6b8ce9d56b3612687c3e1b2617709622
Date: Sun, 08 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772995493
