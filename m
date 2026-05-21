Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A860364028
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779354634; cv=none; b=Px0hutXEBrSFEGGLIBH6CzROlQqq+O+iOBmsJqoqY+1xuaeb4fu1axkrSYZRxnmoE2JkVEQxyn/d08XqX3au8sSyDyg3H6HXxspErBEzr33x/KY24amoT1V+N7XGEEY90akqsF67IxtMI5tu7bI4QMgFZjbhZZkZBNotqYDwMv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779354634; c=relaxed/simple;
	bh=bT8o47+moIk52BNoOxDUJL+udL1gpM3+5LMVZbWfEAQ=;
	h=To:Subject:From:Message-Id:Date; b=PzMf967nqRXQIlxuzeR2EcT4RzTJ9HNs1hb6+dG9J1RBKhTJpQffgs8N4yYgurZ0yZw+z8jXQhNSsNl+YbQC/hZxvWON6t47VZU9cuHsQ77LZ1s5DzTpNB9O5Udm8vPFXfIscizoYLKQ5g2/cJryO/OXDAlaXo9Qnt7TWnUBhLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW/7c7eG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW/7c7eG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB048C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779354633;
	bh=bT8o47+moIk52BNoOxDUJL+udL1gpM3+5LMVZbWfEAQ=;
	h=To:Subject:From:Date:From;
	b=FW/7c7eGJf/Zyk9uYO3Re6PjF9p60U49GGmXveNRc7KUO++n9XnqpKK7419QR5ET2
	 xxDM8VyqnlSYpI8pttlL+/bQKrOpEDFzyBIk/qkOtxzru/ZjTaZyAS1ZvgAQIqpkJi
	 6g0HweZEqvNfvrSSqAiHMNKotl/TMnbhkVmPFjDTL68ekGTc9G1DAArola4irtv6Kp
	 2N9R1dXQYpqtYZfPysuA6pdDbTuQRzWh6KgNQqOKIItOp92kWdpbdPMiZTBh7USNWZ
	 Hox1yneDMHkuocMzTSJVEtK8ySi2AzjQSnt4oxGe2GIjtp0IrQWMq3B9WZ8MQ85gNw
	 WEI/Z8dv3LFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B65CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935463371.19752.672819418110300956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1f8ea41036e096d1e06c0fa92c864159ec0a0c6933c90d64da5cf6b899c8fa
Date: Thu, 21 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779354633
