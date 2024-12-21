Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B681A840E
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734781554; cv=none; b=Fc0dR4PvLBlE90X0Jh6OADO3NKXByAgyuIjJb5IbErFxn6/nqz2vKIcsjJKhm/ayUUIMvjKkqq/5q2/+eZ53SfFRPq8XvNrSlZuTfwH26VZZFRq4SJlw98Bpm5cp13nKuToXGRYoIiQxFcpCGJ4w2nnPK0hfV+/mxRF/t+NfTIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734781554; c=relaxed/simple;
	bh=yp1sXr74xTz8zGWzT+a2/tk+r3ae4qKP22QCNjY0xzI=;
	h=To:Subject:From:Message-Id:Date; b=mn2OSIeTkQvIm9UH1Y6Vlh8JpVZeR5E6XufB0CnjifvTAmMkSAibRHSTp0drKCNqTBEr8nfU7ngamwf5Rm08yPyeD0heeaJV5L7vQFEfC/8KnSyn6N4MH+Ct9g+avmyypLjJMl6z1awps6WSYsVWbjSuvxciHqLzGsjbuPDnyQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgJNXgWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgJNXgWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9964C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734781553;
	bh=yp1sXr74xTz8zGWzT+a2/tk+r3ae4qKP22QCNjY0xzI=;
	h=To:Subject:From:Date:From;
	b=DgJNXgWDgHF7AYxhgs1lkYen3u4v+lx27qq4Y+WYXfyJuz1hj/jKQF5sUk3WgdVbx
	 0MTciyXpSH6apRNKOoUGMEQDfkXBM0pKYNBD/UH+DFsF9Fu16go1O8fGgj4AqDRFzS
	 bLemhN4kjP7KAxOiXHz7cmuCfOb5+LugZI7cSzRM4OgLJ6zc6VE4H3gWnkh9hjSA3w
	 iWDWVL6P9zd1sU0Tw0gd0erzxyneSs6ku+hqMndpT5Nul7KQlQb/zVmemgTWYqs4E1
	 hb+/5bfas70St7vHjtO4PlBffpem1fIJ/4Hbp044B8cwnhBY/8zvHLuZfpHy9dZxan
	 niSJrxKhVntgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D5AE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478155359.11103.6697425433975160748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d022b8c0e87708ef00256e80a63fb244a6703ee0e21b5e9c93ebf391f656a523
Date: Sat, 21 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734781553
