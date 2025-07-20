Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF73156C69
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753033194; cv=none; b=lTkEAPO9LfkkxEKP1+vUKECpHkMal8+UmXutk+vJJso86PC8cciW2fiufyA3Ay0i8Rr979ds7rdhph6SfVxr/qwKwLNbqjrU8VSjiJn9RV6+QtvT1ZMiCKrKHgwsvSdqEyhqKO3hdFgPiRg+wyEVVUKAUosrEQWOcrX2olJu40o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753033194; c=relaxed/simple;
	bh=DL1QnOtIcDbJo/ExU23A3h0tMv4m2fLnvqYmPEmE1VQ=;
	h=To:Subject:From:Message-Id:Date; b=Ca4nUGBadyJ+5STWsoREUX/E7VTAh2/2eZ2MC1JMfQNBs22ZrnJH6H6sbcIi78l2QH+b6Ns3RP2XaBle0imd109590ZnCe67KpX36oLSOkhbumaVMBQaYtR0hKndnACA0HXLpXX6MFLzrzUcwbDaQWrdd0M8PGr4fwXbMTdf3CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Grf/wEf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Grf/wEf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5179C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753033193;
	bh=DL1QnOtIcDbJo/ExU23A3h0tMv4m2fLnvqYmPEmE1VQ=;
	h=To:Subject:From:Date:From;
	b=Grf/wEf4JHSUE8AhRKaZtPelCksDo6MicC2H1bo8zjyEJs2rYc1S2RUM4lU4lfBvP
	 n9R4kinUWR9++TT4V+7ykJfItFjQ6HKran2nHDehIYC6U0iuspPBpupuDFJjTcj/02
	 Id4zeavQItvUVZIHNbCATZDij6UNFiw6s2mTlGQ0Y9bSIGhQCJMQJuTtPjklL4JAHw
	 Z8+2mnzXNMSCDHltT62DooicM4EUTeHDp3e/HcLaui02Xjc7Jaqd2D1CXsdDbmZOni
	 D6oaBIKQwVBVXD85zuvuuQ7HLmSKTsNS7FAcYthDChFHNln+KcURgRady3WHp/xQx6
	 /Nnfj6isuR4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EFC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303319358.17278.1747797756217123071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318a53c52dc2556c0f829e0d015e0609d2eedbcb6a407341be92c2dada6720d0
Date: Sun, 20 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753033193
