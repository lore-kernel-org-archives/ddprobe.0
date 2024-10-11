Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2352B1946CF
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728660354; cv=none; b=QkJ4/6RErJpmwEh0kt4lPRdWr1SPnw4xMgETwa7R9L4StfocyNjuzFfF1C6Lqmt8xycrWgx0cveIXUPFqoBOW7P/izTnUzr/RJeBgrNTAQ5GqXGilO9T9aNUr05lG7bvh/z6mhDQwfwVRTXp7+bhuYITNbt9yi/KhKQziH3kHdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728660354; c=relaxed/simple;
	bh=4I75CoulTR+oz5f45tAVcB6HB/c6/sxqnovSbNkziMw=;
	h=To:Subject:From:Message-Id:Date; b=pfTOuFhUGItYw6wWKE01b2c6mXMArvK2R9onoR9rYV4HwOPT808nwGFz3hrOezh1dIbCTjQkSzRKFimqNylKYfv6q5/ziyta6kFrMzt3NtRCVV8J+m9JIls0bIDVmlfpBlI4KwdxX34Inw2SqVlfFRlFDBd5CQ4Rq84tKvnBCY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sfmly7Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sfmly7Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ED9C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728660353;
	bh=4I75CoulTR+oz5f45tAVcB6HB/c6/sxqnovSbNkziMw=;
	h=To:Subject:From:Date:From;
	b=Sfmly7NfEGLktYtQSAo6eN6nEypg+y/IijcB10jsFu+RRYcfBA2JWn0mGB/C6XMBf
	 lrX4C4qmJytNH1wBWlhDzqrTU/jEOX9oZgdGfqF2ImJiJ5UGKnVhN1I0gDZMEtdPGC
	 g0A6lIg12huNd5SYrjaqu2PyTahQsEpuVj9iGnJoyNETLZOYDMG2cEyt48CXytPEjT
	 o5HZQsHfCzjsHDlmOhmHu0xofIUzW4lAcMU0k0OHDqkOrVQMrwji9DR0kqkYXuVaGS
	 3gE49a5WncnQAtg4M4r4ch9tCAi9IDY45Ah7V39qmnHLUHJjXpZ8j5namLVfog47ak
	 nXHMu+fbAbBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1DDD0D7BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866035362.31318.1369530149732948432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81501873e67530ef47f700768fb53d713fd57495e8129eae86751e915db68466
Date: Fri, 11 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728660353
