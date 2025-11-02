Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154FF2A1BF
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762077594; cv=none; b=XMkU74MKzUff0bHvGab904uYVibJ9/l3aY32uOQALzhd+WnLr79DmD4WhxkUw7deiKj6colGFIBusU9IAJjLT54cHE+KBztnQ8mSXrdUJm6QEMZ0bbNi9IAtRvkmjPqWhq8BbsS0VpdVbW9ecnYIpnp/yY87CwMl16yXDMLtKHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762077594; c=relaxed/simple;
	bh=07+iWhf5Os3i2UBbpfti4Uzf0qYKAAvRNBrmESP4rWA=;
	h=To:Subject:From:Message-Id:Date; b=XNyBG66CHcL8mSbmRAaPWb/dfAVgbpzW8Z55LPDlPq+FO0Uzpmob+BU0LV36zJXb/eHaOC/sfdsvGvtzuzNqLp2kHGhc8kzzGkvLBcN48UyQCnKx5PvfhLwaWhsDFt5ggh31r7769oAbzA1u1cHTgN/CrYpR/qQhusrsq89trRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkrU/EAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkrU/EAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF65EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762077593;
	bh=07+iWhf5Os3i2UBbpfti4Uzf0qYKAAvRNBrmESP4rWA=;
	h=To:Subject:From:Date:From;
	b=JkrU/EAJ3/qS34iXyogmpJ61BGD4J3BIS1LPv3NGWM5/YtwqVMaspmdtuqIXdaczR
	 IK7jIUlm/FtB139LzK6j2vqO8Nyko5Yzrvohkw4MoHNMmWkMt87caUtW0zVaQ91o/p
	 sSEG7lnK1zDx7D5ajaWXtIFdCQKPkdfaZa34u1RNWSNJ76nARHwMovhwc6YEdY4hpG
	 sOH5rba2AcOIbWSfTXGLcSghvXKFDNzXYi2oqgUs7biTyadczUQyQGiM4cQkQ/y5I5
	 t31vtWUuaQPwjv0O6DWM7ZEp7ePHpEZv6AsjC5UHLb896Goz3E8ysuv/8p7cuZmTCy
	 BFHd8dlezVXVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99186CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207759360.27702.3487320170046178157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65a90bab0b7b6790e5380660f9b4f3e4d6945dab6464342b63033ec2800e181
Date: Sun, 02 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762077593
