Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B5ADDCD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743869394; cv=none; b=Mcww2hlfLQ+L1MHdQIgNba+MnzoHQul1FrWWumJmAufCgr4Rhzq4sWj2Q6UqGM0/guGP9czQidXUva3n6PfkCdO0PSrdtam/sy6Mjypshr33+zVAac7qKHXbx8vzeLlNxdaeDfoUuXgbRkqcRT8tU2mIIqlNnv81uoUeVjMi4Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743869394; c=relaxed/simple;
	bh=YS1CsVBz9Ch6uwAMd+lK8KYnWz0VHvpnMCdlt1NVreQ=;
	h=To:Subject:From:Message-Id:Date; b=i+KnStVeDIIsJbsl2gm7ZvEK9KWUsiYvRcJmtwe9JrIMGEiGl0QHfFB3DKH3IptWw3pyExvc0EkjA2g4bElLBxa13nFQZkpHgSF71k2VMAHG04b522TGk4hAq+GNGfCeK5WsA7uZbTP/3/IDGd1QuKXTEABWYXD8iDpi1Us7VlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIyQodeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIyQodeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37EFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743869393;
	bh=YS1CsVBz9Ch6uwAMd+lK8KYnWz0VHvpnMCdlt1NVreQ=;
	h=To:Subject:From:Date:From;
	b=HIyQodePlh+O3IQpMSZbOez7V0ik2158UNd1X9kZM9Yf288i26Q5aAmFbCTq0uTr3
	 u/l+3XEOIMRZNRDXKXfgevX45sVE75dDKf0OU22yuC1DfbupVz7hm5EU1bTQZXZCH/
	 LXtkShp+hF5srGF9YKNKZwFQAUupmuDlnmGdgn/QTry6bq8m8a24ePKjY9gAru8uH+
	 2Mg1pyEGKr8FRLQ00vxf1psv5UutG4ojTiRXkCb7un7vnZTorOsdgyOJVqEBGm3w7+
	 zOm3iBzRvl8ukqCiGlamALbx/Lx4PeUFQMznCft3rV6I82375Gu5gURl4fkOkIBRho
	 934p5g5NjAXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983BDC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386939361.6172.7994879862932622743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2e39019cff8d0bd80a43b43ac20ac76c02b9aa249c8f3226b750ed02d3a11a
Date: Sat, 05 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743869393
