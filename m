Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D2145FE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719303203; cv=none; b=co75qd2nmscW26eBRFExCgsxTZF1T/b9bjBGWTB3mLs5+XiTC1Tw0XVgzx4Zx8UNP9pLhJP0C1mKE2t6QzKW/NV0ZHcP1I5tWIIzqXo+MjyxBoCCYrfGyj7SQAXlSB/mAkbDBgrWSWPq+yZMtOM26XMI56uj/H1rp6v2N8lJFOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719303203; c=relaxed/simple;
	bh=fLyB7fPqMN7sW1KzhrYsO1wqwm2yz/DeGRQ3K2fVKk0=;
	h=To:Subject:From:Message-Id:Date; b=Z0skop+lynkiP7tr6D9kEVamlwhzdcqXTvprQkyblUoBcu6rygfG8yk5v7b3+bBpZ8j+HcXMC/0m9QkAMSC76hPTcrnoi4zwSmxmZeGxD82JHOXVB81yuodBntNEZ/oQBiGQWzch0AHXBFVGaoTVlbVtxVA6UzrGWJ/z4f0QByU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKdOAFHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKdOAFHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DDAC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719303202;
	bh=fLyB7fPqMN7sW1KzhrYsO1wqwm2yz/DeGRQ3K2fVKk0=;
	h=To:Subject:From:Date:From;
	b=RKdOAFHFh4tD0GHFQfsRmv/OeQJ0KtPsmw6OA0JYPPgD6ZQQ8ehJpyIAmi4/fXeNi
	 zWwHsJNzmiWiu3xBpVbe0pyFwnYuUlHvuBMi670TnuitdlwgiVO3K3hZ4jTwTts3e4
	 LYUwCDVaNInVoUTBPGYX4w2/cmMSG4dBFYBdUhZiJDHt/aOQUsexMVGNDiMp2sF6ar
	 RjNxI1i8XaA19LgqwbrNipiOqbtsYT99w3scExb5PrXOw2CDK2iy9KqH8vh83zHe4q
	 na8yXf5rDvL/MZq49NjC3fvLo8ItgbPaqlkNKWu2859nbW57wynWbpFJdbuP09wysB
	 1tEK5bMmIwAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1D1C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930320276.17832.16138427599770076100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e49e7641b896fa1f1dba636a6912c51b65b26448030c64992bb5f2f7b0d110d
Date: Tue, 25 Jun 2024 08:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719303202
