Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7E92D0C64
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777660654; cv=none; b=Sbf5Xtkkyktd7LH6do9YRc/1a9GazKUX3F/jBeqpWBvjtxEL8W1jzhApTUt7xdeXq75uOpbBr66XfRQ8I6Y6em7rHeHaNC0atdAwXf+7GKhMtfHRwWq97+4f226fXy73a3a4w/KvJ25DU+RWBy/fNcZH9bPgC8hfLbBAI1y3orI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777660654; c=relaxed/simple;
	bh=3Y/DLtHHATIfhjcti4Odq2Ml654q/HbQq27B4xxPABk=;
	h=To:Subject:From:Message-Id:Date; b=I9N9Be+4MjtpY7gutSHD0/1nVSnzV2tz1xPXtL0nfTNzsoES5uh0Y0bS2yl8NKZkb60/UBlqVDRLEIsz+yk8qnon63+sW4A/07B2xUQWSRN+nUp+INpGlaMj8J4Rzes0Roo7kpizhi9nnuCo5kpP3ygRYCRCJAUbPDGzEzNvr+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFRnczk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFRnczk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA97DC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777660653;
	bh=3Y/DLtHHATIfhjcti4Odq2Ml654q/HbQq27B4xxPABk=;
	h=To:Subject:From:Date:From;
	b=PFRnczk9rwAxGSLSEVIaqRbZO1vifzMW+4ToIISsUU/Dtj632dfdWXjOEqYn2BVJN
	 HB+e2URem6Hs9z5vLtWvqgdb1URwQHTkjKLBs6vZs5pPpcEeuHVok1boXYz3p46D66
	 va7W7xiKPoy3zCpftvm2E/tGVavKhbrB1k/D1oPXyUs0b6AAssihZjF+1jOVS7V1oN
	 866TQEWjmyQcXeowESeVRyZPR6/yi+8zJQtrbUp2LQGNGooXWUnrzXbUYgHc/TL32h
	 JJGrisn7HkT3/7F6Ze+CdU9ZegjnzEF82VIRSOqfG7o+ZI4sFGvi2Lm58/S7jplRvW
	 fJDjaiy0b4WSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914DCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766065368.22811.14000278738295430459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12c079eecc3b032c85917bc3d4b85b8636fa7f2836f310812e8143b457e7669
Date: Fri, 01 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777660653
