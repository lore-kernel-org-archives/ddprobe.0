Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C29922F00
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713831623; cv=none; b=YukzKSpquDtqj+T3VGrrYGue4FTruUpK5cY2esRoiPKXPD/5/llefUy5o2YWUr5uQb2ImTjQg22Shp9+Ijn2BjC01/9lmGZs49As7YuwR90BDCvU8NdW9T+d9LOwnVQSXHTEaBVw5wC9/V6RIz8QO2GvSFn0+53tgQSRBIIOGX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713831623; c=relaxed/simple;
	bh=8mA/02KUKKKgfojlkWV8gU7B+AAO0g4Dre4hE7I4i4o=;
	h=To:Subject:From:Message-Id:Date; b=uzWaOwW29LOvyEKeW+Mq/AdJFYWYkAdHMTTjQo+KUzCyFhESQFG2aeso71zUyvV8gahBI1XJ1AOGvYTPeAZiTzZS/tOwBkz5JScSYOKKSK5saje1g5ho0oWjwzXssZQP8ChFRM+y+1FNWHFdahXJe72P+bIcv7oh5b+DO1+DwUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKJbQX37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKJbQX37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE246C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713831622;
	bh=8mA/02KUKKKgfojlkWV8gU7B+AAO0g4Dre4hE7I4i4o=;
	h=To:Subject:From:Date:From;
	b=sKJbQX37R9pYuG7P5lki7mVJQuL5+4VVb3usZe6ZA1gKCXd/siUdHYujnIdc8a+NL
	 krSQaQ1toJGhI3gK0BlVPidigug7CCnbH5h/S43AkXXcho/KbHvNVYZf1tyyk2mEj5
	 B/vFSDt+YqlR0usf5CQe+aB8xIVv1w5h+L3iB6HFMzXvjYyyC1w0PogMvX6DjX+G2w
	 vzhfGK/5OXbkE6lB/X70EBfQ/C9PKSh5u1jW1nAy6Hh0vi/PBva8oVVaJBBbT73V2t
	 IB7cFpWdUP1cz65l99v3TUKFi9GvE74jhur8v4i63h5rWvbePMNviku8liNwW57JA2
	 P6qkvRvMIeSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C542FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383162279.9531.2670908998936315098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703d7352c21933e3e92b6afb5dfc9614e2341f97c39f772d4d54f1819e435af4
Date: Tue, 23 Apr 2024 00:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713831622
