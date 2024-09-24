Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EAF83CD5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727213754; cv=none; b=no49BgqVTRWghSRkvE3cGTyJXwFGPoAHOU+xBgU5P3sZCvTbH2EaxirjLipiI7eTRjGjdtPCZPiP6ultKK54uef2lhbkKGtp86OwfYmZn5JAp1ygCfoyyhrPY5GRaKT3Liu63x4Qk9GPqQYZKX0iqfOB6+atSidwJMsjl1/YHcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727213754; c=relaxed/simple;
	bh=93YYu7oU6WirGuEzbHZSMXJ+kqQmn+DBcm5vpefq5nI=;
	h=To:Subject:From:Message-Id:Date; b=JFhvzpDCCw2Z8JcYFjKUoInGbtVmcOqnv9L/N1IeOOPK3uy9tC89eO5H5Jku3AWYL/vBLNqt3JhKaadwvGJGEMO7/fSWDN6dkux0T+xZfu974ZS8IHQ5UoJZRdY7xS8ECABTA7l7Qr43Sw4qfmSx72oW60yftrIE67THuZ6cdk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd9WIbET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd9WIbET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2635C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727213753;
	bh=93YYu7oU6WirGuEzbHZSMXJ+kqQmn+DBcm5vpefq5nI=;
	h=To:Subject:From:Date:From;
	b=Cd9WIbETy+R9b/V+w9Y6c05Y1RsQ4ewY0p/KqCWb4zT+oaoWpMgyebSBmeA75mamD
	 g5IgVfrKzcXH9sLZ6qrCi3Ll2Pc9OoFJVwK0XUIHLf5AqKladjqoVcBe2O/0GcT3Vn
	 yOLC5Q0Wv7bu7TaO77RYbS0CSR1PycgjlS8ekN5FHrh+qUtb5KWHs9vyfIsPYEn6sS
	 Z1z7YuXY8dcNHce6Xmv7IJbgrpX96uwIL6tg/7dEXPLZk1Tx2PTiztazjW1iy6bfW1
	 wcq/p2qkDP2BIoGOtnn7ILXWj6GyYExmP0Zsbs9e+Eiuif10RNWMmnycgHzHsDGBC+
	 baq2RbVb1xIwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B6CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721375359.23379.11182592290283446208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8823f150e6a356699c79e7d35bd813f9343a8dcaad887b18844171ffc95ddb4
Date: Tue, 24 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727213753
