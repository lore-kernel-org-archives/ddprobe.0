Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3896D78F3B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736972154; cv=none; b=aP9PSalJ1MFMfKa0HXuGVM2SO51aRzs48YGSbJ8tGiRamHWroVd/yQaB5SsE7BJb09pBr1JdaVepYQahWAn9uGxsxsw/n4rNZH6ZN6c34/J9VNwSGk7X/PiNAVURGH0TdtpP+T8OcnR31JgjgmybI9YCg+peyjOwoqZZL4Kx83U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736972154; c=relaxed/simple;
	bh=5f2I+tbFVASzUvdkEYTaM3ElzNRfvUb88xJtqXP7WMM=;
	h=To:Subject:From:Message-Id:Date; b=u0kha5Y+Naasc68QZh6xHSvSOCC1Mx9SST9Ac2VZ0bZyjn6qRjOY8kdq5eEM9GbXfaf1z9iASr6T2u3jjJBbVdvp3RAjJW9HH+7EpT/Ae41064+mWZONNHoS26/jl68PYMh9KJEq9LhRjqbtxLU0zF+TfDMOLs2GZ7QJPOG+RQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+XQXxE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+XQXxE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B26C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736972153;
	bh=5f2I+tbFVASzUvdkEYTaM3ElzNRfvUb88xJtqXP7WMM=;
	h=To:Subject:From:Date:From;
	b=s+XQXxE/7KuIS89HBya/DuOmnoyQxgPRSI0tNZeQu4HBCFiq+ns1Z7yngGtL44Mzb
	 D6zZZeX+fOkZwvmYHX5l1+Z67rt04D8C7gGj0xkB6CzCmevEieBcFUHDaeTp4Yocec
	 JWhExh7UfM2d9pqP1yWYKBnvA2MY23tLdXVabzLssZYZ+Qm0Ggvpouxe3HPrxGyVzx
	 BYbRAEFfcUyKdrCs3CHRt7AqpBdPQqUzbeB0tPC4QmuwwNzLTM81lxzfaR7vxNGm0W
	 xNQq3omzfL1TS1W0jWvh6ZFF0G6SD35AEBOf82ydFWjJENSy9M1aYW/5DRhSnnmy9l
	 EAJdjXzpmoA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93957C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697215359.7886.11565551127746505929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d608b4f534a688d9ca723a6f6650f57c6161a8dec7add26ff376d2c63185e038
Date: Wed, 15 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736972153
