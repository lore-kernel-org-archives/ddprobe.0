Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C50035677E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789740034; cv=none; b=Uucq8Z0F/r7mH1bc8fOP3YXMjK4rL/dPSx7z1LCzfG5K6EpZWeRjwke9bhGcFfbcbX2Ao/sUGo6denjBq9HN5Bnzup4zWBJMtPUlmmndnqLR5SDm8D99KbYaCf7wPv9nUIz6oyISjOcn+6zo6scSsQ/kytp+Cl4VYmnwCxdX21s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789740034; c=relaxed/simple;
	bh=irHbqZzYpXkL7Gt2K0xPu4JXnHdoJsQ7OoDGLdw73Ck=;
	h=To:Subject:From:Message-Id:Date; b=oHO7WmAjsITUIrw3ykg7C57wR41caLl301G1tZdYHiXV/H5H0m0qwwE0nSo1qtgehO1CyM74RLwCpR7d6nXAusz98ALNldiVg2Ui7sO6OG57s4trv6tZqxL/FqJwB5ts297KA7zxLjoctQOnQKDQWPOacvQBxscltgmk0vTr0y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJ5AADC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJ5AADC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E8AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789740033;
	bh=irHbqZzYpXkL7Gt2K0xPu4JXnHdoJsQ7OoDGLdw73Ck=;
	h=To:Subject:From:Date:From;
	b=oJ5AADC/0wZQXX25xSWqtWk9nuENThcaluT4w9i4h0NuVQfLYtCLoXUd2YWuxOfBb
	 LY8ilpnmMfjrA+lKGoYlN9PsX7H1Ogoxthp1Ki9XjfrqqFFV/jXiyVKTz4a5G3Bgiw
	 CoOcN89jIppjfrqiqqSpfr7X3moJmyuklUgoF/8nFEkgxPPsaGBdqmEP8ixbbVmowz
	 Lp++J4jpiabDlMqu0hfK9Vy9u4yTDQ1j60oT30twhCANwqHPmMy6eLSnHgsq/5cuSE
	 pHteyj4IX/KZ+fOjpHRzJUt2JK9tdIAzLzi7cehbV8t/TFJFykjBCMHaVJUFOaA5TI
	 3wnz/hWHg43Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE41C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974003369.30493.14457285943398937875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbf408cc4f118b902c177a3d5866144092a8060b8fb66b638b509bae85c79a6
Date: Fri, 18 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789740033
