Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAF614D43D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734927955; cv=none; b=cN8+UruaVXx5PKPXEqWPx5kxw2CGYOz1hMdkQcrzHz750c+LKMc4qDNLTLUdumw1l1GbY0bJJlJAVVv4H7cdcU6QY291nSkzyTQVowOmd9Z50LAmGQ2BZ1IUStXl16HLRTkGo4OC7mGcQCvD1gkdTtmC9UORVCXx9c4awZwkuDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734927955; c=relaxed/simple;
	bh=kBboJLTfeHZYDyBZNoYGLpSW41Q5RkC7zelLGM9Blm8=;
	h=To:Subject:From:Message-Id:Date; b=ENfdcufHF0JBbw0E/5mMqdw3IXAx52kB8AUjpc0qK/myarOJbl/gXZvarIh1qrNRrr/XEikSSyluJUOkr8t9htOyA7KgHpaJvdplxlU4ZfwT/g+CkZkpnEh1AELniwcg8vv3ND2hc4JvOFJhStISUtNPRUt3sA0x1xlkEOTOx1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2CtFiaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2CtFiaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99C2C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734927953;
	bh=kBboJLTfeHZYDyBZNoYGLpSW41Q5RkC7zelLGM9Blm8=;
	h=To:Subject:From:Date:From;
	b=V2CtFiafucV7cxnwXO90hqbwFagTSNVEVNMkYG4XgmiyVMUwDt90ZzMXJ+fPgOV7q
	 x2Fti/+/zthxOxaKwY3yiuTATlRBAzFOr6VGCEIKkyU2b+sYM0k5Qme38yljQBcm3K
	 aqZH1V43RO5lAMkAI5fRXZ6kftwB/M/3lDyvIEitxyLrdlFQn+R8VnNd9/4H7MP3VJ
	 Ww0SXxZJi69fRILSbDgQR5oC+FlXDJXMTyxp3PdvAWFab2/rXeYsVTDTOVq7V9XdzC
	 nHSRRYjY4E3MBXiOJdml63S/yQkxLKH/W6UdJ0oSpW0E0CPg00LsftO9BG3YmaLyV/
	 3ApPGO4yLdBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99002E7718D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492795361.16524.9146127741229908489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d1c72e5a732d9cf1ec2f66192c0b2a122e8070c6d88fb26136d75e4a9877ee
Date: Mon, 23 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734927953
