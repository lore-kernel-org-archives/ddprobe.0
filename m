Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217781798C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723409154; cv=none; b=km2BVKDeFPTDuO3md/6cbDuk9Z3syOxpsFqh7Rb7yvdatodzJAePlFwohHN9I+/Lq7+WJmJH95Utoufo1bBy9oOsczjwPQzHr9Xl0B7TfI1Qb4TxXGrN0SovvnSpsDEc6U5deY/HDoVTgaANT9uxF78Et4UwoNcgb36vQ4BD8AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723409154; c=relaxed/simple;
	bh=rPVdhMKFbifhglSoFqINuuJtr1jK+rUlyOtZwSrz5xA=;
	h=To:Subject:From:Message-Id:Date; b=lrB69LpaB2/gRA/0H5WdolUvYNl8wIgxWMK1ComtxwFBhHp/XU2Rq6g5vs1kscHlilH1hCfK1CcF73mIN+Q8W2NDJRtIDVUd2RiwuYwq5RBPAxBay1Vzs3lmNx4HyJSphCeV/mdGZrTTbiViSUvWFPXLQYX8BtPJDjE+syWJhQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdN+Sspi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdN+Sspi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC918C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723409153;
	bh=rPVdhMKFbifhglSoFqINuuJtr1jK+rUlyOtZwSrz5xA=;
	h=To:Subject:From:Date:From;
	b=bdN+Sspiu2vWz8AzbcHsKKGB6anRLAgjYEi/6TQiyLbQ+KUCdJe+doDAwYHQ5nGoG
	 YDyMYd2XmUKiNtzgV1wTK110SOcahQKVxwWQ/i6RXG6ODWGfZsEE2ZkUvesZr3DeN3
	 DE/84C8G8IAbjtFywAhe2GrSCDgDoi0+Nk/sMh8OJ1PtSvNUqsawFpR12vH33ZEwR+
	 Cy2lSNckAKm0KaR7HIsmwQjBwTpQXU7DIKJkA6/0qEktOrEQHW91TGvK0VLR0NorNC
	 2BQsGQb1PeJv806imksSx4iEtdfBMu9YLlBP/A5hPZw9RT7kQCbM9hC3tiZzJhyME1
	 K9uisHObzHDkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F596C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172340915357.14039.16136706069709447967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fa8e733078b025d866a288b2b45130204696d08a14c6751e23f77495672cdd
Date: Sun, 11 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723409153
