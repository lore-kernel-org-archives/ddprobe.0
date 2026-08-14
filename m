Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4139933B6D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786680634; cv=none; b=YWh3zeASHVc74EtWkFhfXHk7MWo6anchao5P2Xcics9HY17qwLgbHLVdQObaIyZQxChBeK052I52b7n4EoAReduhONpqlAJoUR9b1eQbfdLhfARwCAFALvL8f8FvuZQNnFUINuPzy4e5+i7/osBci0cvTEZ84fASBdslNja+4hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786680634; c=relaxed/simple;
	bh=G/BCQFCm1XbJ5HZ1qPckJykqCp5o6MLzyJMKHVaCcO4=;
	h=To:Subject:From:Message-Id:Date; b=XiYEMDVhL9SG2tj0ZZFC1F8OXGu594H1VVNZ0o1EZhsEMayijrsiqlpLaxLhctfqVq9wkK8tCc7o0Olh3/C5+u39BlbfviahfwOFjtPv0zXd9G2ZXrvXcd6iqRJy9efu7lJOofIvk0+RtQYVrxR0+1ztjsTBsljPztfxCnoDyA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrleRwsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrleRwsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5C2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786680633;
	bh=G/BCQFCm1XbJ5HZ1qPckJykqCp5o6MLzyJMKHVaCcO4=;
	h=To:Subject:From:Date:From;
	b=GrleRwskMuP0bYB/brvuZ7klGxxIUIiXyc6GRPK4/qLadc6nHj5dIylrN4VSgx6C1
	 3/MQIlCpiAvxAu5Y+pA6BGmLLzx3kIc9IV+Vqsck7SiheJO/aY1Ohv38GG4exq1a4Q
	 sg1tzcdL7ejjesoNkOlZKpDAQUM8fSUayUy+2b6be/7JkT/OPDa5Oi2LbR4AAAtx6l
	 nWE97L8fBQ2D5mVwTwbPGc/8dUp8NI08uOgu5Ppbz5rMmxG9H8TprGGc7Mi0LhxnZi
	 rgKYUeE8c8fLRTjiMzmRaV4HDoxR/oTNj3Gaps+rjP0r3m6XZeq4bh45eyR01KThM8
	 oyiLdKRt3H+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB9C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668063368.13392.8691308405749841445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41414cec2adeb835e203b399bc9f43b2d9d07d7273f3e85e243b7ef434a49b37
Date: Fri, 14 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786680633
