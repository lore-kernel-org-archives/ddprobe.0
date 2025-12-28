Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9C21771B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766943234; cv=none; b=GSFVWXc9huQqxMWdr5YVzzS45NX0+pdQN9spUI3ToazeaxSVHIpH1u+so98bgEh8QITTsbIRuza965RODgqHAT8UEZXIvPvOQ3SyxHV0BnBUEcssgZDwjjhSeWxYRNmZe4cNDzG6AW2JZKMoNsukDcKP+2nso3xp/DLIqtZrcHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766943234; c=relaxed/simple;
	bh=v5+/gdoo+PsSUCelj/qEud5FH72mryCXYH/9J6wM5Ws=;
	h=To:Subject:From:Message-Id:Date; b=nPrwBKLBId8GiJYoBy9So1Is1kBo2Xmbfo1zoFbkFJ41wQsGcgsSNP1OH9oxsKrYlMUHIjCn7OQstwfTkhgRpbc5C0dwhT0WlfnP4iJCNJYuCwEb0skqREAIrXQrP58mK8IA0bC2ZpxCR7zhtUJME86eYbZ+Dzysyv+iZPTtnCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3bWvvoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3bWvvoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB96C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766943233;
	bh=v5+/gdoo+PsSUCelj/qEud5FH72mryCXYH/9J6wM5Ws=;
	h=To:Subject:From:Date:From;
	b=e3bWvvoZMaFJt2er+z37pgBe+enkQY1DzAG6O7w41J/7VkMbCf6TIqBKH5rb/j4gf
	 MgypcC8njX2srqFdUO5ys38xC7bHInkdgpavdI6Nh5gJ/DY07qGMRYjKsNj1TZhtJY
	 f+087oi4rKx4o1Ncciqv48M+WITy0o/ydpz8XBMJDyYmutKlusHhzwD00SIlZ0LBqL
	 3EqUvB9k5g26JDUIfJYkOa53J3PFjc5D69GuFatK018qkIu5NY2gxCJF2/96/MnyJY
	 5rzTG6VXQPWqD1bwBuZJ57t0al4IvHtl1AoKSVZKsovluCkcC2YK7o4vnlMu9geSxf
	 3p0SSb2CSQ5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D52E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694323358.29681.1472568538349963030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b938fc376612d7252288fe02334b59db0d94d3a87b4ee4269aea3387fec8ec0f
Date: Sun, 28 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766943233
