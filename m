Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D941B87F0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758917394; cv=none; b=J+4F/vtkuYrYeyrWiQgTdjw4v2GUQdfhMDEfhWKzW3psl150UmqzOjr8jGlLWJbhpo+JFQmT09yqSkH70cDlGtZkPStfx57BCw1RNrJ4IPOqcH6er7prMPt9a9wQJHvncspLw/HChqzFjDb257GdZRmtNhG7IYYWB7s5FiUMnOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758917394; c=relaxed/simple;
	bh=10ExnxI5ERPwn71kpYEYQURr44HmUZTqj5wiIKnGSns=;
	h=To:Subject:From:Message-Id:Date; b=fAGxCynZakN3jNMJjQlRai/SpbsME52ZkVMF96IRxipQRRU2aQ5J/JaRCcteKpxxKCUZCOLqyuGE1yYUtDXFpKws9xfnQfhGCTJqw/DgFkqIUmeMslIKiJFU1M8GvJgfF2NWWB7inrgGKsDGl4T94mQ3HJwM1vWo7BsV+z5dlCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg4Gljrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg4Gljrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758917393;
	bh=10ExnxI5ERPwn71kpYEYQURr44HmUZTqj5wiIKnGSns=;
	h=To:Subject:From:Date:From;
	b=Tg4GljrcxFHXLjOYsw9IKo8sXu/s4u0p7/R5ufzw4JsMY651K1xBZtN2vYF9b7ydB
	 hCkKtEHZSKBki4l9gaiMPUnZx+6Z84NI51m/+pX6tDKdSCogkCtUup8dCW2USQ7k2U
	 XfO2/qWhHFaVqxzg36RqaOWnBt6ND6PhqlrvIeSrCZuAGY+HH/LcrMfaLbqJdEY4zN
	 13KYToz+V7L2WEcpEVbmi8uk+v3c/9n3bNR9Q8l1dCBBViVc8vM8OcWWWZL+tMPhhf
	 YUp+/uR3E1Jt2k3cTeDrPwzHASGpX+Cce6Nx7ZYQjm5rJts+y8DICoN0Eumwu6J0No
	 vQXxt8MOflmrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBDCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891739359.14016.8588000309052222483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d422728a0772dc366b784d8b6fa39d6e9947539385d2238a1c3641539d1ddb
Date: Fri, 26 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758917393
