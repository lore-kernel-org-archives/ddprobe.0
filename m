Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729601D7E5C
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753310395; cv=none; b=AMcJe0vX8A9RodHsvTv+ziAlzmIoNkrv4RaU1TpZnjkYwysaZ3UnADXNG5moabUU2jszUH8zRsNVflEjMfmD0C2AESAjkkZGR8IXA8gwuH4zw8dkk3cTLNivRIO2ZoaCm4xm1tRfeXF9tldLxkeW2J/8HFIxgNdtWJs08t8/mEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753310395; c=relaxed/simple;
	bh=M8rH57U5wmcRZiTjbGnTl0W1mzMnOzQxamkCtIqj1UE=;
	h=To:Subject:From:Message-Id:Date; b=bK0zE8k2Nzg8F70oUQ3RZvxDZSM6I3MC0wCe0djqw05NbtsrFYvUWLmDfjw4h02LJzMeRi/Qb8vbO95xk+Ks7N0Ng4Wo8zjjhM8dy/sse5x14dShFbckvgi5MvnAl6fCWQmZsjVTXFcCdNby0EK2yW2373O90qRClGKf+G4954M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ut3DnLfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ut3DnLfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F89C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753310393;
	bh=M8rH57U5wmcRZiTjbGnTl0W1mzMnOzQxamkCtIqj1UE=;
	h=To:Subject:From:Date:From;
	b=Ut3DnLfkkTlEvcNmZ2Pej2TXuOLQKY4pMJmHhnKcgLhqaiKOAX52SlpFVNWo+Dv+v
	 Qa2fIpv3rH1sUziKVk+0qE6rj8FidY0xa1EGiJf4CelLx7bRDQpJX/J3oCEhyP383t
	 KZbPabViLqu/+ZIZuTj5VYZYnQCh7ZgahP7f3DaLWEyBzPsMPQbN6yvOrwD2r9Vi3u
	 Y/Hs5aAQMTZ4i+AvUbtk6ovZ1ojdqdcdEIy3ighhCHllYUzYflMOsOJXfDk/hfckZD
	 MCag53q89OH1zBc/BY9q5oMZYUtFj/L3YDGxbPOVGSvAdf0sLdiNGBSG0YI8ks6IQh
	 t0j2hjnlNUYrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA5C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331039357.17031.3787495119774304429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11813216622381df7c875abfa55a20362fbb1c4e6b8e5ab71bf83a66fa967d1b
Date: Wed, 23 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753310393
