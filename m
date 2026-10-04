Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489254A8402
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791147034; cv=none; b=X8O6Oy6jG85ptxU4bvVGcY/AfVqC8phvJNClmtFNc12FYnMndGatHACexSV+ygR7+yFrlQdVTR47yS8nE5/d9kV1hmoNU0WDZzToTT86tvGPvhdH7QlOl95QOo/MDiGnsA0KR+WSUMDkZdGswrwW2hIv4Pd8lX7u9XcxbJa1d8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791147034; c=relaxed/simple;
	bh=Lv6WgMiWML/kqRHRnFx6kIIUPdRlERF8hkfV11ftXL8=;
	h=To:Subject:From:Message-Id:Date; b=T3nx2AtE68YVjbSq7q+RcOiDhFzVjr9gGD4syyA1NHOHnVN2mrs8APfOm+AUH7PUHvYpwQKtytyA2vHsLcQjB73UGnRe98nIrMWBpxqZAAWb2ITdiHVMVX2ALH+GCzfI1vLlYFMF7XCz39SRo4RIOznzAgNz/WTTQGScZmymu9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPcYfcMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPcYfcMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC93EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791147033;
	bh=Lv6WgMiWML/kqRHRnFx6kIIUPdRlERF8hkfV11ftXL8=;
	h=To:Subject:From:Date:From;
	b=rPcYfcMgddwKQIbRzS1RivFXBoD7L1GNYs8nA+iEkEADhF0jtVdgTIAajYm18CGAa
	 jRxrCCQSZYllEc2OOwppzppltVvQlTWNsbLlXBdVmHwcYUQ1Ytz7QljeqnYF9OoO5r
	 EDA6f0hBSQvy+Qx+6H7Ng9GkEWgQvMCVpLOAabCzEeL6VICwuKFwzgObqIJoog5V43
	 3VLQofzrPT+u4PAAipAHS7BdJNoar7nt6jQa39ELrgV3W855eQBSlJ2oejOH8c66fW
	 9zy3rQ8zXJHUw3cMCGLkJi7w2l2CitoaeuaDEgqabUjU4exSTZVbrTEMcqjcWk4Wh+
	 4VR8FZ55JSZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9646CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114703368.8854.7853717840339288493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c0e2f4d458952c7b52f4e15d16f13c89047367368f49b63d126fa2fb029297
Date: Sun, 04 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791147033
