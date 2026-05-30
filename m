Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4CE34C806
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780158814; cv=none; b=Kj44OwVn01Ij3cTqOLK684EAvtK08GwMqgvNCZiwq4X6E1cg55mMh70FGhSns4oCo4B1vdiA7bgsqdSzbQKsMao8Pw2x9nzWI4dIB9qqYxCOnUN2ydymaBYw5TEh3cfdv95IoZeukId36evD+1boxxqfO8D8U047ND4HgX1E+3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780158814; c=relaxed/simple;
	bh=RbGmgT75T3WiGu2e0PtRHf1DsZXBgmcyjf6jFrk0zww=;
	h=To:Subject:From:Message-Id:Date; b=NUCs6WLyrC9NJKT8aCptbVTgsslc3iS5+neaxn7N7gOB4DQwfPzoaVIJIJm7iarDirCWPh9YY1+04LpkJG79PQAMjndSWz0ggpGROcU+UU0tLA4CS40a8MV78cRHScQfGIk4Q5Vs3W0hqFJbN9OXqQekcFBgmiT2uoMq6b4xOmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKao+cl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKao+cl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2E3C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780158813;
	bh=RbGmgT75T3WiGu2e0PtRHf1DsZXBgmcyjf6jFrk0zww=;
	h=To:Subject:From:Date:From;
	b=EKao+cl1omYyR/00bxanXn/lXlBbklKhXdZkTEVcv+rMM12u8gjtTWPkErQfqiSm6
	 ChcVZSPJUM0bk9L339L/GTTo/YHxLWKo38A9hTI0HUfgrlcaLhW4zHGP1gMZFZ0um2
	 N7/jcdLHbOZQj3tBGdPWyDkvLWVthLUe7JQKTVVu09eEN2VuTUqv/w8RibfFBcXmHz
	 8EqH+3zx3XYrCQ5RlThCjtqDqWZGohIIYMY+9O6f2S95Oe96ML26lC29vVdUDOwWsr
	 5RVqsHmZf0qx1to8FesHnZTF5EiSMNzmRAz2PbmBBbwa78L4sXfmnthG5Csj1yPBUQ
	 UyXiZ4lvnRt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BB3CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015881368.10163.11527749601954641831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3552220f1862d6d6bea2c9bd8f73647130bec264e0dc52ff5b688015bdc874
Date: Sat, 30 May 2026 16:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780158813
