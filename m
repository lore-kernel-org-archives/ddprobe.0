Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CB2DDA8
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731836754; cv=none; b=nNLD4W9yXulY/IewwrZ9TDAbQL5ZvCEwFQYlwFPPloUHM0/vKW2+ZJqLPqOfzBTcYrcLPqDUtMK5WP6K9oPfBdOlkwKXo5llh+mTmPDBPpOxw89clceWQPvRFeDeYFd5a+EjgmI2IISHKxiu3YJNsxAPb5MQlDto7wlBrW9nsUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731836754; c=relaxed/simple;
	bh=pGA4rCriBzvLMAC9ZZ1UbAlTEoaIf86qCe0PXcCbNGw=;
	h=To:Subject:From:Message-Id:Date; b=CZLzFHqwpFiAk0WrOIn8syFPdhzVM0Qc0zI/EqxU8iq0WyKebWjgH8s8fEt5sGAcuMLidkiuFVNnYEbQOMRRxWRC0o3wcdXBbalnPztLHS8ZsH22h6EvoITA+W3RoNlwFPVeZJBBfEkG4853yTafPhByk5NuJ5lq+smoPW7qphY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDPGibnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDPGibnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63B0C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731836753;
	bh=pGA4rCriBzvLMAC9ZZ1UbAlTEoaIf86qCe0PXcCbNGw=;
	h=To:Subject:From:Date:From;
	b=MDPGibnpDNddPRUW8eNxUR3gf9Xg3SuZHVVPRm9IXzx4o4SnY14f0CdFAvuxm/Icy
	 7+/5F9P937mVtZfOyO5aw57S7MBBD8NlWN/4sckg07RSsR3rcBQiC8tETLA0aGVwFV
	 Z30qGDis2cxwCGqJjJmR2irmoB5U9qyMQnv9AyaLfDF3PCh28s1AYHAS7lUBpHaqHN
	 +a7+Wm4l2qeNqB/UuxvTX68d06zcVGESm1MwTHtt8MQ7+7PhnZm2otoAZ/z2Whw9Ef
	 falM6G1QQFqG1myfZhvS2Xgm0OpTSEpFah4esg1EAW6U7sMosTUJ+fS7qHRRK/k/83
	 7WgoBYMjxlEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93491D68BFB
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173183675358.20064.10600238917970521500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035a28f760431859d3ef300fbfdd70aafdfc7b0e47d170412037c02b618e8d57
Date: Sun, 17 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731836753
