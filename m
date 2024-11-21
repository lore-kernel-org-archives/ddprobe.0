Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393381CDA18
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732188954; cv=none; b=iVRMi0k+O78DybIYRZaoggrvtE/jkaExNLeZXV5NPd5PbHzvZ/3/rpxKBmGPSXQJiRQpUI/k1uAV/5m8/OOaA3vkxPRZDlGmR38jTQ+Q4ETU+wYY3F+wOj897sBoFHPqvV+GJsFalBtbwyUgqIJ1wXGTShrz43iiD6J554Yb9QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732188954; c=relaxed/simple;
	bh=xLxKntByw//3kHDRvwxonTv+n8UgNOFsptR8R6jVva0=;
	h=To:Subject:From:Message-Id:Date; b=q8aScjX8CbV6mZ5ayej8G5sMMGMmXk5E0jvUoSVs/tmD037ehLHHXDiWBPzUHEV4CAUzxKGlwjxeLZX5nCd9TEseF+9pgjVXEMWebisev2Pk4d9Vgt8obwWtkOGJznn+yAiXfJpMCyqJ0c1cuI0CqXDP7/2zglVdVX9Xe2FjDJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyCn0u5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyCn0u5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB386C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732188953;
	bh=xLxKntByw//3kHDRvwxonTv+n8UgNOFsptR8R6jVva0=;
	h=To:Subject:From:Date:From;
	b=uyCn0u5OlNkUuVYPjnd7VDDrDdLj1LT/PUcGPulBB7xmkQpkvCwiwvYiGilHdSV7P
	 X293LVPsw4Y/v9dDMT8QAaK41VAKyfxO0yxEKHzV43iH94e8v2/WNI9Ui5fc5Djcb1
	 nDxU4K117M7P2G2F4/kicIAsMSlOaYAJhiEFQHRa3SyF30pUVAglHSWQERTAXLuJih
	 pr/lmgpcNhmK4u2fCh6BacHppLpCl3hlQL8A3TIDux7kljno+ncZ34BoczJVVrLZMC
	 cFGiNdGDhlMsn7XVLwaURiUvpszGKNok+8CPxfI5kpkRoNHsfxM9/7CbfHMFBIQskF
	 ECWXusEXdSXfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA27D6ED0E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173218895363.5618.13259046969257031629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e822dcec93c7ac02c744fc1570268c538f4cfbee662a7a21e7b15734ca178730
Date: Thu, 21 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732188953
