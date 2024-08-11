Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ED928FA
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723336554; cv=none; b=ElqFVV648lHYCuoT4ROZoR7iuGcB+UUHQrJmDoKFGrhTe1P65CcxhbLO3xQmaTtEVf4xPMg8S5XGbO2Ivjc7KwCkxcQhGIXj1o0j/cgee14PETKlEL/bJvEQ7iNibjsDr2b528a9wkfsay6PEa9iwBxvGW4kPtfa64OxSGrf0gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723336554; c=relaxed/simple;
	bh=YgNOm/vvHQAHJbi7/7i8i/ztKstT4RsJgGeXtxPRduQ=;
	h=To:Subject:From:Message-Id:Date; b=DCcQdHTzUxwMGnzgxbggiV4J/3Y8Dlylvq8TWWi2BW+RZarJBVroAxn8X8EuQ2fQz4IxVndQ+qfiLyoS1YsHSv1hbD59arV8M8SN7VGfnsG2cNVPa253xX5MineUfvw3x/x+ewnSjfBvZoUyp5o9yqIt30tSit0fONnIG/IyZ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoZr1/g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoZr1/g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC11AC32781
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723336553;
	bh=YgNOm/vvHQAHJbi7/7i8i/ztKstT4RsJgGeXtxPRduQ=;
	h=To:Subject:From:Date:From;
	b=SoZr1/g6+KralqMYvRcoO4WwChzl58/LfnuZX6r0Pb8ulZ7Q4yGl4/WOc0vBmQ8Ou
	 j1fYYoHu7p1lf45sKuNUct991ULYts4fiATQuxJQDrd1HT61JZV4pEDAzBiyq08gsm
	 H74dfJtr2Vjq6WCzkT+g/GvmRZ2CgJ3+R+zUlUY5Mpu87fIrd4r9ZdVQLEoM4a7YOw
	 DE3I/BxAhjU1OxXhBt8NCdiqz4oNASAhCYFwukR9B2yYnvePwNyu8UIUb+//y8D/Jf
	 ZXTzlcTdq7e1GxpS0dugTKjNojeVAMj5QvCJhE3xGrQdFJO76ytBrg+5+Zu4DfyeX0
	 6LiwSv+NwHKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B7C3DA7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333655358.7492.6355794918214728724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3e2504da763b2c081f0a284f5887600eecc1b636f53d071e48637ab5e26fcb
Date: Sun, 11 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723336553
