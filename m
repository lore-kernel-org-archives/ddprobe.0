Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C2B1F0E36
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743777594; cv=none; b=VIvb0NpUyeUmCQvjiQhpmwnRNyykqgxgpOQ1WL5tmXSWTYj6rfa1H/rv8bctnrdf9fvqXz5mhV2iT/ABSdyrB6nLCC2a5iFjWGVURiZx4YVCxLiHsvfyb469v2IJAf3AI9RbmnpbUBsQQAgb2zM1cALYJBUj7xIO4I5OaEvXeQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743777594; c=relaxed/simple;
	bh=3MTJSHVUWJ2XbXS/d3JOStXnfbPKkNDmd8TMU3hutRI=;
	h=To:Subject:From:Message-Id:Date; b=tYlRh2BirQ19v8h31RdUL+xirduU9wn6VVCtdGcep0VAX/NVsE8+1VXZuyc6NxVkQdZLUdC4B4BS6iA+QV+vnaHx2KLVHsRYL/pDgpOIJBs8nO9Cq1PQ+kgqNPkgEl2S4YRaGkOFDSfCj65bK55HMhwCypWMiivnih7W04424zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6A2P1uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6A2P1uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704DC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743777593;
	bh=3MTJSHVUWJ2XbXS/d3JOStXnfbPKkNDmd8TMU3hutRI=;
	h=To:Subject:From:Date:From;
	b=J6A2P1ufP1xMR7GEL54p1YF83qy7kSuI161BXKZeMDV3MyVaGlyUcR8XquNlclfxD
	 2UOW35B1VgXTL4z9CULS69H0t2U0lm4M8BuYa8Ovoa9+obm5MtBbXhZlo4eYwDsFk3
	 phICI0qHQBTauUZvmiX6/ggwIrTKZ2QwKL+UPVnlXOJx9mRaa/BKLZqN2Dy+pkDECH
	 CVTu3eY/P+Z8gyF9L3j2sA3iJrP64zhcywBFd5UMqIvusOAGgHQipkCgoHoxKQ4VWi
	 MECp8QN8byHQtPeGiIIfymIThCyxlaos6R6WLepHQ4Y0mPxwxLEEUHOF9zyJlZYeUD
	 Y+e3hM3cbSJ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC7C3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377759359.1601.7400923702053391848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a895ae65a2cfb0b91823cea03cc0489654b087272034e69329893debad20c24f
Date: Fri, 04 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743777593
