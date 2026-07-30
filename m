Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4333A43B3EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785419434; cv=none; b=inlN1inBGWZFx46uFrQVwdwgEvX3Q7nRA5E7T2JxeETU0SvFYiEfl5Ics3ZpwKBpiLMrEyM5Jlou3/JQ3QutFWuD1oOj5f0z72E43ejL9Lr+u3z3eTMxQ3iEbxnBB/g1BLEOZk84zKi35NW02c4/q8T6ifq1LLGUywmsKkipHBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785419434; c=relaxed/simple;
	bh=n7LAUhvvf/BD/vRek2I+/uH6tDk21i8RbCZVPsonFbw=;
	h=To:Subject:From:Message-Id:Date; b=cahLIX87LLUthpJtKiNvxhFcxiq63WUcZpG/2VgbVYrbKh91XjFrivf1X+IJwfqAqwyEARYKoPKfDt3eJsc89i+C9lLw7G/fOU58zsz8BI88Oa+9nLa4JvaMkeV0lc/NXCYhlRz0nIZJQaUNLnCvz5InfYAfCyFMSEgNHW7qI+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9dFZzmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9dFZzmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD54C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785419433;
	bh=n7LAUhvvf/BD/vRek2I+/uH6tDk21i8RbCZVPsonFbw=;
	h=To:Subject:From:Date:From;
	b=E9dFZzmfG6vNGUE6NpafKZgYgGfOmbaGHtfzOyzfKBBg0HFZLMQfBNMW7IXwnyxUn
	 fWiJRvSsiAptMTQ1cwRtdv1/HgHDWNNVNf5JenMuPhe9BHWB2Wsb4967Ak/Kt7TqZn
	 9uDDByY6NlDzsWajJM61YOuzHl/4oGLvZ+rIyZXZIQQCfn/tQ8FOMnv2lJm6YQkb1h
	 y5Tnojm+jOqG/Yq6Wzo57nRC7FrBZ93IMGdgAoji+Rhu7LzFRcpec8sDQe50jGPnk8
	 1pyFYd5OXqBrdz/v4WdGTBCOOwKipvJY41Uvu9xGx6FBjG2KdSc+Iq2inJEYs42ff1
	 nnrUtvSOKow5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92E6C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541943368.31520.758324839772612769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d45d0667958cf93959fbaff843c4c86743910d1703b4b276127d946f4bf94c
Date: Thu, 30 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785419433
