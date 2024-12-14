Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DABD18AFC
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734171354; cv=none; b=DV5uxTl6Pcp1aYd2aZsloryn18vm1NP2DDBh97gaY0UHbL1gBhazgEk5nWeUfpV8TPNNOVxCvy6aG2ssZdcPdfIc9UnC2KxodJAUUk11lhDgmXOd5EZcRFsh5eMwq92b55tfubaXyw8kKOx1ULO7jk9a6rKznm5Kjs9UVrsCnvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734171354; c=relaxed/simple;
	bh=NivnwtmZVWitsQic0oQCXicNtWwUUHn4o/bs+T0eGXI=;
	h=To:Subject:From:Message-Id:Date; b=L37y+zNa9HeL3pBSREec4aHHJJk16P8jsBKK3CZWzk2QlEd/AWZvsuPTz/T8DzoiFherH1eJMmzn9/Llyec2CobXCTxQbnsg7GhIVMRjQSREUun2NsNXkT1mChsOO4F9+j+DzOQ4kt/p7ChP5kU/V9FsYscrhxE1U5uMqPcpSF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afx7r3z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afx7r3z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15FDC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734171353;
	bh=NivnwtmZVWitsQic0oQCXicNtWwUUHn4o/bs+T0eGXI=;
	h=To:Subject:From:Date:From;
	b=afx7r3z3Upl8xx+HNgNME+Mq3Dl0XJJskDcbwf8HjkoCbn9VkK+RI/DHNnudOQzdK
	 crJco7ziIagIBqh/F6Ns0H46jr9njAcOKKHAoenzYMF2ppzJMUxd04wpm3IxCoa8xM
	 xbokiQwQ7TNcaWyR/seTNwJq9JkbJJtkdP6l0HkPETt4xi6Cn/ql7qjKtoipL5oWdl
	 KqKTgQBCJEScp2sbQ7YN/aKgYRA8RgWkumbZj2Xd4p+EEtWY3WtdeODnUAiXpODQoW
	 w2CftIjRDHPIF+mHCzl9Gg/4n9iWX413y9s2Epy5P0ZaXd/qn0hcUzfcU0mOGsDCvv
	 vzGpQ1mfM3zKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2098E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417135362.24302.13847155235793500274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df93f2c03d53980c81fbdeacd78d85974e691a2c506b1846c66e567ee12e60c3
Date: Sat, 14 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734171353
