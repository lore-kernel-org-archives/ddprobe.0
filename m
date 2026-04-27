Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175C6346A15
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777305454; cv=none; b=mOL3aYO4a8ttIfDt+6tKS72cBYihTUt8Gtl6ggYsNNLaH2h7xBji33Tto9XNV/C+mugY6DZdtqwzpAs2wRQEtDIt0ZhiCj3lMEAUWRGn04UILezAUtw0dLInILGB6CPUFtj+HCUnXqnqkwojeZuYnj9FbRRlO8zXoUmJ9gNxBgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777305454; c=relaxed/simple;
	bh=4qPSwXgD5p0S4pNCZHTL7+6hVHsh1xbW1MnAhf0UNnk=;
	h=To:Subject:From:Message-Id:Date; b=n41D3oInBgz7mB7rO863Lj+KqELKN8a7prVgx0d71LV3x9T7Blbv6ctSN4RN+w+v1u/0HaHzMZnD/YlXd6LXpXS8e/w7wVVTMlyi2y81chkZ1WtimRi5mXeSJU9JGbsRZ/U5pl4s63INLo8OCavdcmsllLT8oqKiOZDdtXQqVSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZWT/JPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZWT/JPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B756AC2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777305453;
	bh=4qPSwXgD5p0S4pNCZHTL7+6hVHsh1xbW1MnAhf0UNnk=;
	h=To:Subject:From:Date:From;
	b=iZWT/JPd9OLyDm1DtuwTtAQqJLLIQSb1/L3ejqXTUA97HS1BFYwjYtGAcEtm2O4Sr
	 Pn7Tt+HNG0ou3r/lLKKFevksmkimzpW6pf0lHvUteZ6aRsphxt16d2346benzisrxI
	 4VVIRi61Uwb9xSEq3NgOxSdX/2b0yh0yA0Z2Nz1S18pJVcyUAJQ7Eo+MOYEp7QYoFJ
	 /9hjb5qlWJN6tnfcXXbWWsf2wENNnWJmarJHFInPoCMK08fTCsNmyZiHg8p5MZaVLI
	 9aIaySobfqPaIaUjlh/h3cmOwLzsuITvBe03Ds+5HhtJdEim/UbwVRyR8Y6+u/DWPU
	 tBH/p9CACwy5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A929BFF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730545368.12163.7560604331377576484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90402209b1115b86c1928569a830dd0d0354fe0d45e54401f3f11bd917c4e3ac
Date: Mon, 27 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777305453
