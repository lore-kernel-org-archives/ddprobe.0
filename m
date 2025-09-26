Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E6626B2D2
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758922795; cv=none; b=XuK0azHeiXprprT9Otd70FvCdCVaL7sJYnA6+/bAE70DQDlz2i7hSY9g8OjmE4mmCx5rUj3XyiSYsNblLXeWVm1h+Z+M7VZo/BdqzC4vzVQ2z3eOL8Y/WiFCfrkzXNGqrqPV942K4L7thgiMCNQyqiYZiO5SjnLCSeZk0vzFMBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758922795; c=relaxed/simple;
	bh=sc+y5ODBMQZ6zftPurZodqTVNxYVz+fsTbRcytgiNa4=;
	h=To:Subject:From:Message-Id:Date; b=jDaWAQeBM2bi/F6jlqKeUeOnfza96IkmPqo0kXMhIlODinYbaaXCw14jNQN8QdbRMa2mFZWNgZ7sHOKPFOLOxQthXWBKFad8SuSNc8sCO9yf3uGoKDjyezCEUcwyE/JILUo9AeL/5fQw5sJidXyCpoHNrL5lNsC+uQEpnc/tbN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpVymXYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpVymXYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF43C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758922793;
	bh=sc+y5ODBMQZ6zftPurZodqTVNxYVz+fsTbRcytgiNa4=;
	h=To:Subject:From:Date:From;
	b=RpVymXYdIsDIhIm68qUp0FP3gfMYFmZyt9FvJ65kDsx4/kv3r3cDLCUl4rO2KXzz4
	 OEqRwiU/TGheQHMkR4mEbLDpRBtOSZrcWLkcFn29SltH1+BobV+KBJyeN8RMh7f8cD
	 3mM1MTGsrO+s6BMfwF4imGxT/RMvLS0LT/XYhgOvwvL4fa48zGTA2AViwCFW9e2x2J
	 2PoNu3buwf2cg9f+M2K2yLpJX+gonSLd0bAJv2Vc8+ZqO5c2eBK9gdElWlvuGV1ugz
	 mpOJMPDkiTpV/X8W02sX6hnedY/wDQPWTJGZJIN5U5/hWf1sHAnBmhmTlvo1TePUaD
	 X59msihmusKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB4ECAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892279359.25209.8594574625633634970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4132c19d8a206d4009a07ed88cdaed509db819039a5bd6dc152e369cb9757697
Date: Fri, 26 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758922793
