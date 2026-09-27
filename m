Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E653EFD27
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790516435; cv=none; b=JXVe3ctuk1WEzazWUMwaXwjZ/13UuwmznVm2gqO3SQGpjx+Uodscbg4w3Zk1BQvUnTQVpZXrUcR9EiSaPlDCfzkI/JpubmxYTmM6Hhwh2xYsbjCqsAt+zuRKyw0AOKZh8zs+4gqVXWk5Qg33MpLb02MtcP3NY+bY3QUSSHi5eQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790516435; c=relaxed/simple;
	bh=Ukow86wr2Rbzq0A5bzZ3v4r3vDfGSSh3yZJGT9zOHUs=;
	h=To:Subject:From:Message-Id:Date; b=PMwkC9OSJd4I/8DMbuhz3hloKQPufFekrsttdZrpuUX2xzMWJVX+wp8lnGrQb2rKQWdOdO7WVTA56Tt7G9tBy4oHRqoPB1EnvMMQ7j+lhrn28uCNGOoxF8wX6Qk+UnMoY6SeSDb37FvprCaFU3V2nqswwLKqX5sJ279mC7MEdbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfn5zhV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfn5zhV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA667C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790516433;
	bh=Ukow86wr2Rbzq0A5bzZ3v4r3vDfGSSh3yZJGT9zOHUs=;
	h=To:Subject:From:Date:From;
	b=jfn5zhV4HbBJPptX0O1ospGxWLL1TnzQr4m4Ads+vIjFpMH9qWbMO6pAYZD2Yumdq
	 ZU99sQy2xq+rWqILqenTgXqRok+v0KsaMzZQIYEIX9iy16/j8UyvlAMvhJaHzIlKxP
	 LPp7FbyJG8zvAbFrNbunQuYFoSjqNxmH9P0W/yomUoUfe4B8V0sHisW1twEUIhpCzf
	 Mc/If/R5cFCZQs8thZ8oK6OfAusBAI4hbeTpldVYCrVsNT+QyqAqE/OIxG+Dl+bz8O
	 NQuQrUZqdwI5XqMguAjXf10QzaY+wBbZssOnbWDdLIb7tMiQ3ll1O+udk1uGV/ny9r
	 wHxlLAO3ByczA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3538C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051643371.470.11705460779475272524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374a06ffb682485e5e973ad6f00b7ca64929cf8d3fef8c99ede58bf1aa223f7d
Date: Sun, 27 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790516433
