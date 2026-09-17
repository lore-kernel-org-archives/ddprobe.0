Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AFA25B082
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789623634; cv=none; b=SOmn+dsppUSRxRKIGd3O/x66csXI8Z0A/ypqIGNOsCIr/Sdh624LDeMIlJqPZqBzRQs04WJh3yPcSlDnFI2FQa8Z9iiQ+SDEtKQIN7khNm4tJPw1dXHroXrGxa50WIO+0+T1Buxgc2YIhiLFaZkX+islz2ohCKFAN9D4s5HAvU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789623634; c=relaxed/simple;
	bh=/fy0D2UsW09YPLbeS0IbKGgu0ws+emXvxvCG4YaBQEA=;
	h=To:Subject:From:Message-Id:Date; b=Ox0Os94EfPZXDmBVCAfGpjt4tCZuNfm0M+Z0IKyi2j1k4GNYPZ067DCLA9n1Sc5dQ6ZUcH34KFjV3vz9A1y8cAdMgbnyIePshv39C18svHgrU6r/LR3SOqcy9cc/dDQIJ4EYrY4NVXwD/Yt49KwcQspHC/FNIvSCLHP4ZYUIwSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huJX3vf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huJX3vf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE69C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789623633;
	bh=/fy0D2UsW09YPLbeS0IbKGgu0ws+emXvxvCG4YaBQEA=;
	h=To:Subject:From:Date:From;
	b=huJX3vf/jxIW+QiXfczIiVikcDXYEcVNuOQT7nMnf/n0pSHN0NRbTwS34UsRyPI8O
	 WDNRPj3UjRHipJW7sD3HB3Q/NTHjadM4Oa5Ib3jLoH8Ac12goEI9+AAk+QKf2U/1o9
	 OP+vkCIp6IRuAnpTYGODA7e1oli12s8yoD7cwiBs+7ZIHMWAYggseS7RWWiu4/GrDy
	 Nm4kRyd5h2GP0tL3uHXiSmtY834+dHXQ6CDmtHv9k6VUlGr24uu+2FLIhZuS1r92pz
	 nLnvSJDjxL7Uvq7w9C8lGvK8kN14h1MeYN9ddZguUE5VO6JWoa2A0DIpVB70Wmyu07
	 LesqIirCFqlnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD7C982D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962363369.7294.4545684972800866589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c21222d22c1335710452384ebdaa0996480eb20b5bedad5f89c058737080dc
Date: Thu, 17 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789623633
