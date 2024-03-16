Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00727D527
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710578897; cv=none; b=TpBRtsNgPekn/YY+0f6YsJ19tC6B4TVytNZmhLaBO4hdTrNTEP4gUkq/Op/xoTzOr/MQh+S29Ll1HmFVyUkgtDHw9QbKOyO8VbwksV52V89GhPIYlHMkiTGL7bL+KDRcO4u1FlMtmNXuFcYZVXNeLH5ZvbHFO9xvBShUI09t/wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710578897; c=relaxed/simple;
	bh=ONhRlteOgIy462y4Ug6VzFikGLuzyq6sMDqHmjSFiaM=;
	h=To:Subject:From:Message-Id:Date; b=rVHIlcOxKNbhiZi01ly6PWcRvxSTWB6EPPsnRIFcabFbKz7n4gjl09QVtcAPyLvQNN7SgTJH+mGlRguN0FXVHSRf+Om2sqQrQEZP1zcTq1YYfcGF1H2svmuLZvMHKzQU92FoiiEyDp9JyvYjRlrdxMaS4/p+mW43LH2epuq2HZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+fUhp8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+fUhp8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75957C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710578896;
	bh=ONhRlteOgIy462y4Ug6VzFikGLuzyq6sMDqHmjSFiaM=;
	h=To:Subject:From:Date:From;
	b=V+fUhp8UkQvUCqNVjbDKNa1v7O0GejUOJHCVfQz5NfEAbDkeS2vZy900Kvq00E9Me
	 DINFmTl3D/f+ua/YWcZbw4ujnB8vVRonbz4A5HvGt9GIVB4lMX2vkv8WJNDqs65znq
	 2hN3GgDGAmd/VK4f6tzll3NHG1dbXwXjiW3L68apRbE5Yl4MkcFNcMcU11/EOA5HcH
	 LfpIomxMhMFpgb5XRavSNux1LUhc4K8MuBRKeYNnz05QBGSpQy2ScyxWF4X+zTVLik
	 aGSUDoGHpt7TvDiwSiqMNnTluL3C/ADtoG7ckUUSrgb5ZjPdUQ+AUHZ4BAY5gcvo6Z
	 M14gdCUIuU32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EEAC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171057889637.498.14592811888392169117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ea74262fa23f69fd6d637c369fda0fcc714ca4491c2a9532b5e301e600867a
Date: Sat, 16 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710578896
