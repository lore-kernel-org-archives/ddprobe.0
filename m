Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F589523A
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757900394; cv=none; b=CQ3YcvquYlchnJC3U/ihL8WxR4QijrQGaaAsA+YFzzlICMZdoE5Z9uZCbeB107DTbYT1TtkacwRPYV7nzQwXkccgrhm+I7qyZk8lU5KAD7KhAHZAeoo6oFFVAvYt+nJWppzc5mMkCpzSlvthCcubo2WAX3JLseeHlRMPV6MLuaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757900394; c=relaxed/simple;
	bh=3mqxJ4jrl9JVdxIJNGMtLdFbxGicbpps4MpUo5Op49o=;
	h=To:Subject:From:Message-Id:Date; b=oDYmaa+ypX01EJL4C9xMr60y1Asu5ss5nBPSmBPYXOW+K4VVScgjLy+53nJG162meHYgr7Q33519vdpV3fqbaweu10xNyu3OjbR7ITSQSuL7jLTz7R+bq5/NRlFMl3xYK+rHoSz8PgI4oru2cED8v+5wIDnWtv/qYvvyGUahJTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIZ8Qa/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIZ8Qa/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFFC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757900393;
	bh=3mqxJ4jrl9JVdxIJNGMtLdFbxGicbpps4MpUo5Op49o=;
	h=To:Subject:From:Date:From;
	b=UIZ8Qa/C8EeC4BpaUG0YKD+3ZVh62JX5Nf4fi5ZtjA4TU8Y0+JNKj10T8g924CP9l
	 LhNa3ZX7a4Iyy/J7XfUIjMo+vJ39/CtCwL57vTtZGIGlJ9twr71flcpjBgnI6aq/DN
	 8RfKKLA3/19FVjzo3GofCEjtxaSaaO+4+les/XRgEOpttkQrDSr776yEkIk960wFU5
	 G/JjwyleiMHTEoHamNEtmBd0YJ8AJSJS2Jc4vZTAJARSXDLXX0624yE+vifVobYXpT
	 koGOvxeyFIJTmP/HzEWZtYNR6M/JABmqK/CuQ+fmUAcjfYtneULzUfnMS+1MGyNZbG
	 xv4T44qzIAweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF3CAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790039357.24316.1317565812191733906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300c6b2f22a4126cd3d09bf268acb101f6e80931992cdca808120a3ce57791a9
Date: Mon, 15 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757900393
