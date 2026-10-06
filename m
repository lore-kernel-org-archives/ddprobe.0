Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4732F2673B0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791246034; cv=none; b=VuaPje6wIRxwS4dC5V+m4LRazpI/qsRR2tbj5kgkPtjaMfQF2SefUkdB5D/6NI1NYTYLvOK81qR31mfip0Xy1ZhUcZjrEN6JLIl6HdTJ89IhN8kadcHzyLt7C7SVDKy7UaadYRLeUWXy1UE9TUnspg9qlnDEN4LB7ylj3GwBOLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791246034; c=relaxed/simple;
	bh=NiJDyESx2yh534b9D5MT8oxhq7QxXCyq9JC3dTHsAPg=;
	h=To:Subject:From:Message-Id:Date; b=s4IHnqChExLHwpABqJYI6L1/fsIyuyUaxEkbkxhphL5SNb36vvTijRTctGlW/Ci29FuPAG9UfrBdkv7nZJbcvsxnmtvjzJRAVY8vOkWxacofbj/9Jxrg0E9gLj3REvB6GsyNdEhsDpxOFrmUJ2UKk35qFGjWTVpPZgOre+Y+0mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjBXDAMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjBXDAMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B9DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791246033;
	bh=NiJDyESx2yh534b9D5MT8oxhq7QxXCyq9JC3dTHsAPg=;
	h=To:Subject:From:Date:From;
	b=MjBXDAMX/eVm7N2T6wrnpxcy5PUMJktURgmWEol0zm9zNBWhfqvLu2Ioh3mgNbRkz
	 mMQUuMJrqVBhh6jsjfU8ysh9XfL1TwP1UozFL61qVwOJ81U2NmzKw+w7+pgSJl7smN
	 WBKRWbBVmuI06ze/3P+GawXx0Yt4MAmOUlXYorhl0LXlUEKomInwGNBzuUD5cE1XyX
	 ZotGx6TihqniM8qKwKbp/Z5BY8vyg+d8JZpcATIw05+LcKtmatoN99DgTtnINzWggW
	 iGHRugojtQ+DlRsO2sxYfuilECDYimgXvkaod5eV8Or3ifYvOgt4T1di2Ob1Htx37u
	 EAgXyN2R/xt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A00CA5FF5
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124603373.23738.989809379411723792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f48492670746211fd3a74268e7e5db24a6d21c81727619564ace2e8b840a117
Date: Tue, 06 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791246033
