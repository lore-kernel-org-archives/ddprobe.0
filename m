Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610D14F9D6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747460994; cv=none; b=RFUcn4W9qnFCKj1lLIe7zT1y+TxBVzO5OmRsBAg7+XlhGa7w0O4Egau/4vNqPAvnONf+bspGmPSg7p42kon+ajG4xiWk3N/eiM11ED4i2ICRnREuGOY9cwwYc9KxMVG6NOKivdTMSl1k+xyzT8+NLaUCE9CBTyFEh4eFcAPwSMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747460994; c=relaxed/simple;
	bh=y/TUSRwsNrchDoAoR+a1IkeINVCvJmDbGo8SaOSUG7o=;
	h=To:Subject:From:Message-Id:Date; b=cota+uWa0qb2SDY6CjG0Z7l9SlEeOsHYBMpSPreNpWOexUYYunz6ylt5TAb3GBnXTvAEhGkIIYil1ocFA0/GBiLydOJQc6IinfgyuipvDVexi9SRnjSQmw59n32PwOR/3GnPk0+qxKt7PHBgigxemoETtoEZtkADHYkSDArkScE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgxh5HDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgxh5HDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E6AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747460993;
	bh=y/TUSRwsNrchDoAoR+a1IkeINVCvJmDbGo8SaOSUG7o=;
	h=To:Subject:From:Date:From;
	b=qgxh5HDc5lvILJ7lJTdD4f0Jwt4djMY5WSBJlFYqtSySthOilGy8/I/PsB6eLTaQP
	 eMUltdanKVDLwr529Hl/IGHD2j3ZFwmx8y/H7fZFJ2QTciYoIE7T/c1MFOMIVDPK0A
	 fqXGha19/E6AjVFP+g8af9Czn0B5SfRXmyfFj5KZai3yIVFpWBOUWn9TZecKK7t2UF
	 XvcU4i2w0ASvMRiqmLJnGnOu1W8aJycCfk6C+SMS+OyBY6XBwMmj5WG1z5BxeblFEa
	 x04ziZ0PfmS6hOwEvdcAhFRrg4cWxQG2Q5INflgwAdsGCFSWk+apzlIVZSWAvFJ844
	 xhv2zdU6C/upA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92539C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746099357.24707.7792147443908534118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029a9eb0964454c506b2c4c25a811d66663aeda51f991add9c4ea6bf3ee9997c
Date: Sat, 17 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747460993
