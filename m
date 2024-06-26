Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5215B6E611
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719426803; cv=none; b=BEYv1VziCCMCg448l6JdqbBKhMRCS3RveVu9y/WofdX/BtjPDNzMGEBFD0my+yqW2r4GZC2eUBRcYR++8p96fEUl3ODKW+yxl3gQ9/+NP8B01U3RwAwo8SGijR9GvjAu2o+1L+LWtj+j4WgeYfyaRqOhLW8LIcidFqfYYsxfUHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719426803; c=relaxed/simple;
	bh=GR+mhAVQ1ZGrLoq/hnh2MRXU4JM1eyoRdkmUbQgYGDM=;
	h=To:Subject:From:Message-Id:Date; b=pTjLWfp0v1/uXSzD6io/XGLKF3gDckda6y3N4L2I9fvkdcMXp532iXo1IxrKUPTZcZAABLqGTfEL8MaTx5IjsqCHet1xbCn+rFpo5bhyFucAxj2APsia1qxCKN+TU4ID+k6/Qnu+k1TWGVFM4wy0McagKJ5TkLHCsLv947B5mU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuvxT/3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuvxT/3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF27AC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719426802;
	bh=GR+mhAVQ1ZGrLoq/hnh2MRXU4JM1eyoRdkmUbQgYGDM=;
	h=To:Subject:From:Date:From;
	b=WuvxT/3CpejbG4i8t/+pk5rKhZf+6uiDH1XBUB1IesQWIqWMpMiS/BCVx17olbIz1
	 3+uMhniaw5SRvK+HjyMjo4rBF1UqIGg2iEScg+YBjpABYSoaKbYiiAyfOYDWWqeGu3
	 yc1AZ0DaZvuV/n2LyXbtMaoXECD0XGVrEo7T0ddsArF4pQ5cjajqcSnuFwnPbPGyxb
	 3s59u2Acw3LpPDWnLkZOTE2uEAXC4X5pWx8m8RBL8TKz/c4bXMACEgdJFp2uGW2Pb/
	 yFqRVD+bhWZHAn+8O3+Zp2Vnrd0N9wi31WzAEjdSnG18dHTcKWXLti1hUkqyGyrzQT
	 ynJ8fC/7XcLjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF016C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942680277.20335.11943549000990423757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45b93cfc981b0f7940218c4f2d5eb4ecaa162ef5ea7fbe2586843e57a867830
Date: Wed, 26 Jun 2024 18:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719426802
