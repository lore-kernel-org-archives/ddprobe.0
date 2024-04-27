Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E2210E6
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714230743; cv=none; b=RRd1jOQXOJ1fu1ouYR6M55XeDodPDnIBIvnUsFrIcKONuDdPItWoYeRPKx7oqwshbyfayWSq09U/pKelxzwsXixaZ+cC0+ml0tCX4Ntpjo3uvtDxFi5PTFBhcZc1l8kVzRq4Kg7PdpwGeeHCf45B60jWr05kle8SQIWKC1qWmAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714230743; c=relaxed/simple;
	bh=ZOQB7uWj7gknq9ciJydey05GsevEXz+Gte0/dEz20tE=;
	h=To:Subject:From:Message-Id:Date; b=Gz/Xa2Jyk+2RvYPlyOeVDeTH4wCkRuwxZX9v9znUsN47BaQtIW60z04RSgGMQub0i6iUVZsYSe8tmNK53HsE7UVc5nx1Q/ILgj9fDuUJ+33yHHv9r+bMN3LT9YcSW2koLlL4M3BGJgXG1i1vD1NuMqM9qQifwfiL2+9Ty8wi8YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r005bKFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r005bKFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D66C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714230742;
	bh=ZOQB7uWj7gknq9ciJydey05GsevEXz+Gte0/dEz20tE=;
	h=To:Subject:From:Date:From;
	b=r005bKFwp96LpPdZEEZHSRvZo0yIJI+pBAuMpig7jw0ytEE0t/GCBoM7ilcx2nUE1
	 Y8U3mjUSsOVuCHzlIPS4duGFMDZOOrgrmCyKzxZ3y0T3J69486/4XX/vMRLr0lyBH2
	 AmOEuGL9NlyzZc3uLShcm9CssifdHhWFwd7LszwCM/YMbSKuRCWuR+T+Mbv+1z23YF
	 v33CpN6RpOTm5Rh5SIFURD/C8l5iutz3GMzktqcr/41jBY6D6u/b06HWR0FuvWKVtw
	 Z0XOLmoLgS8VHz5qefCziDuo/eKKSpdR7/QfuYP8Y3W2qF1C47T052n7l51Srda7qT
	 SKoQ/Lp8xR3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F2DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423074277.26340.3157606205785424713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2557da474f4075cae320c95b5e9683ccc878c998a151e5136db12356cb8b728e
Date: Sat, 27 Apr 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714230742
