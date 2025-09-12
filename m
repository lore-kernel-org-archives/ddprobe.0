Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DF74315C
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757690394; cv=none; b=Bdox8N+bikVKbiXDm37tWpVLttf+vFmrNMSrfKrpLnYr6OLeOEBg4lY3Qy/TSDpWU6xH7YJdhm6LNSvi6ViF1tnwDGG14clpcO4hxxar8gaUMP4nKSBPW42WypJQrzKhWAcC3Av+wWvNhzYwqkvhIOCruUlDhRYTZcb+Yl0VpKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757690394; c=relaxed/simple;
	bh=Wp/vgC3xYka1hvN0JpHW1B2eQB1Qq2VZCENBPCpcHyI=;
	h=To:Subject:From:Message-Id:Date; b=O+OV/fEltt82ExVZXfdGF852MAIkiBF078+c8AQQZmmI4wjRy8SN5/EFMUCSZry0giJAGTVKBuklHQxF1yJO1/GSTKvjfwfHprOcedgW0jw9uSX2ooq063efZRoySBI7ttTQzXuFXP4uca2UXql5ks5ugx3Q81n6CC7e3qqGveE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSXY9Gdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSXY9Gdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757690393;
	bh=Wp/vgC3xYka1hvN0JpHW1B2eQB1Qq2VZCENBPCpcHyI=;
	h=To:Subject:From:Date:From;
	b=PSXY9GdcGHh5CR7ng8K2tii1Akwzx9IKRce+36xdLUI3USpmdgqSoO0iGt2pnFAAn
	 YVUezRUi/OA34rmcDWuZ99SEFILqNSnmWNGvnFtvpVbI7V1v4XGT5+saF+XLZpFCgn
	 SPvj/X+xcyVc0dfrvnGwQCSibz+vA99kQIaJ7R8fAfT5J9Cxbl8LPqGkyunZvzc+fR
	 G1RYruyd60HDjmEFygzzvNx0UiyhnaHBugHsCFIE90y4HFVpPF4drCIyUmMwktYCY6
	 8x657r69J02u1EPLeBWmtKZKiZy26U3Uat73eA3cLGS5tZoYvw/5yz7BlfGbPxN0e5
	 WF7fql6J8+ZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90476CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769039358.10810.8505138358952436243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d485b49b2812070bfb5630dd6826572c10e4a2bda9dc9b62c33ff68695bb8f
Date: Fri, 12 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757690393
