Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AED3B9D93
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774436094; cv=none; b=axNgO3PKyl9oJ23Jk+xjcv7AMR/gJygU5rq2iuDyO8w5WykqN9eOMZGiHD8JBRMtHghZ/zyCKC00oQm0fpCiQWBX9lrZvW2TYGr1bNnTcq5oFENw/hQwaymkq+GxmFqGtxeC8kQEqxsR/XMoiNYFGbZjpQvMDj6ix8pJGSKPHmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774436094; c=relaxed/simple;
	bh=evalWBan0GPRnkhQgvXB0u4Wn4k+5jGJmIN2xPmupow=;
	h=To:Subject:From:Message-Id:Date; b=MsMpuLQRTLD1cTiktN1TKiLdBQy9R5r5x+4ua8CN4Pe1Ox1kZ8EOxvgv4UrDr7ROAJji37k8fWLvFTwpeI+ivVzrySa0jOh+Vqs0fVgp0t43Xb6+k0esSrGZdas7Mt9/Qmh2IOglOZoRziHpIRcR8pZzS8CYZ7164n5RRtBAK/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPbKVawB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPbKVawB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C5C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774436093;
	bh=evalWBan0GPRnkhQgvXB0u4Wn4k+5jGJmIN2xPmupow=;
	h=To:Subject:From:Date:From;
	b=gPbKVawB14VSMf+4W1/n5zD2y6j+yizRb+AWlJIy2Syz136RqwRVVZDM5BQH9JsiG
	 4Do2oDXIZ0yEtX8DPiVjLW4AM14Lc/mBUWOQzkVZ1xmI9xlBX2K05KahQf9Tyudz1V
	 FSxQaQys9UTxnE8hDMXvPY/62FFhUv5706J3CG+Z/CYXB/J4Vme9htH2KFPZOjvS4S
	 8qlwyvyhaeM22T98nI2VSIAGItPg5H7p5GdEV894OHCdH7LtzRZJRwBsm5v5kNxKCN
	 0x7KSUEw84ObKRitGinp5XRzvLzyodVByKm3zvfp3eHJhjfqLBBLL78P8efXYGox4v
	 1YFPpDYRQYZmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93704103A9A4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443609359.24551.11026444989092588485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9cbe2f88daa8fde99152eee3193a849a246a53439fe0ab9af8d5cc80c89f5d
Date: Wed, 25 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774436093
