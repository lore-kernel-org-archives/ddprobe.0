Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC9F3DD52F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775834854; cv=none; b=kZKXPs11m7MPMGCCMKjglaX7Jq9P0baZ3lOomuzSrIS/jt4qy3r4xjDmXzEktosSmaeVO970/2r1LL2Sx0JywksiCqGpdKllhEsTz2q5K6/X67p+T/PtsIRfs0qzN8Aj7biEUZ6ZBdj7VSTI8l0gSr9s2pkC8SKw25Bhyq0zxdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775834854; c=relaxed/simple;
	bh=I49LB9KEV7kotzwILZ9WfMJaV7q1BZteuxnfwnfO6wY=;
	h=To:Subject:From:Message-Id:Date; b=CKKkpXNiMLgSfrpuHQuIK/lM7ozQj+VZFUrp7mIxpmd2/0HRm5S5hBPsmgUoIpcYnCBLYHi6Zmlb+nF/yUh5rx+QRVysXUJzuOooIX7Yie2DYR5eGnS4pTokP3Y7PUW9A0nMam10smputOeq+Z4gOqTL5Nb2OtCWW9VcV+i2NmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJiK0l7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJiK0l7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE14FC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775834853;
	bh=I49LB9KEV7kotzwILZ9WfMJaV7q1BZteuxnfwnfO6wY=;
	h=To:Subject:From:Date:From;
	b=QJiK0l7htzOojt9nTq2jHWJ6FxjTJYAtQ2Ukhfs5IE1r4UFnqwFCn4mbXVntLBYwg
	 zeBTg9J6FS5kW6wBgn6nDyDHrhOgTIMjoAchr4WB8onLMFQR/Zn01ocNzXIxU8lXBC
	 DIJGButk2+r644HtNDyqLSRJpHLmxBzP3YHzDrKdb47WpFz7PhI655hou6Q1h7ew65
	 n5cbySM5gLkwqsef06FjUasStOOV4Irkz8GwF/OLvipAZlhFvzaBoYX9pcJOrGneKG
	 NSqzKwA8VCnIfW1B7Cmejy/xvAqm095Oi+ENWM74fA0TAvR4r5YLrkQQJhhe3ryGRC
	 qr2ywEL0JGDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD94F459F3
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583485369.317.16829182318043295910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d450461a8a621905c07961990b9ef4daafe0abd59b295d4c866591fe0c9b7a
Date: Fri, 10 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775834853
