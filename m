Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0647C3101B4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774154694; cv=none; b=g6RdQuuHpD5YMOijqkg6kMpQCOxXetKnekEEz9ilUcvQlD0YSuMATl1InBBqWwN9q+oGh/p7sA1sPTEfrDudJi/N1tpFFpfmThEhFmMICyAx3R1TuSVfOw22t2sMit7P7bIkXOTqIqy1xak65S8Msx7U4URJVPIUpryoKrCPbb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774154694; c=relaxed/simple;
	bh=cuqymc7qvDlnHaBgJzgvpUjOsWOGxzRa/cG1sNnEj4M=;
	h=To:Subject:From:Message-Id:Date; b=DBDXZ530BXYASuLFWbHeQPkzm4BsE0DY0FcnvnAazkUgeF9WxYsgKDCgdMpoGZKH4YwC4uAWELSLGHr/Gflhh60Auu81AdaSQWypYyqoIipB7fz0igyER+jja0kUg3ImtNf9N0VvDln3YdrYOLk/pH1b1vk4lEDs9X/X3fsWFBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiRAd5Mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiRAd5Mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C9C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774154693;
	bh=cuqymc7qvDlnHaBgJzgvpUjOsWOGxzRa/cG1sNnEj4M=;
	h=To:Subject:From:Date:From;
	b=UiRAd5Mt/CLCwUN50hUoIq5D9anRhM/CMZLj99/mdfhdeOMhYqfI+2oXrxqKb0ZMM
	 BBpgXQ6zWAPjbcUzIQdhgrVgxNDX9omCgbbEIKvBcyX+BFu3iV6N9roUavZG+iyANU
	 eB/sx9Pbcz0/zd4MQgBBvMGFxqJ48B/hEhisGp+hHSrt2QJl64T5xYcbBYkcg41tAe
	 MD4jYntvutwUQ8shsuGwMWPltxP+xgiPBNu96Z2hS0VpdYq2eKCnHyI6wruWMSvfc4
	 IkwPY8Rys0M3JhF81cxxfaZbnDV7pl9a6Gr2/Xz1tSWaD1KyxNOgoRMKm6z/Fsfl3B
	 3D802IPOSxAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B39FC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415469357.15633.1604904958874348218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6c748a3ce013b6653d471c148b570f46b224e82d18b18204bef027fb2858a3
Date: Sun, 22 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774154693
