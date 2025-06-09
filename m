Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48358BFF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749457793; cv=none; b=RF+Xh1NZIGMiDsFSioZuOfWcANUKxDODgphhAaC1GAtO9tz6hCu3j5UXhXEep+bpmjoh513RS2oOL58avQMdke5aQL1Kk/xFFdRzA2501H3201lpgxza2RXtyUzxku4lY7Ebx0sdTtNeOaIASt9J26FSTKDciZVHkti3MD8zxG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749457793; c=relaxed/simple;
	bh=yF08QbuIiR1+1J77ZNdnRycfMwmf1Vj3UUVqXo60i4A=;
	h=To:Subject:From:Message-Id:Date; b=QkNv7KuinGQvFZTQ7dZ1kXyKN57f4gx2m7A/QsVv5KLiDhnmp1SxClk2dKoK9ZPOwty9DeBlCXDZMThNdneQckun1BPE1Y0s0ZH78McInX17KWqy9IV2BwZ/wSLP1RlRDtCWv03vWZFuqHbaC4+d58i/tTXnAQHcKVwoeI7jA2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN5GCBzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN5GCBzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E8C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749457793;
	bh=yF08QbuIiR1+1J77ZNdnRycfMwmf1Vj3UUVqXo60i4A=;
	h=To:Subject:From:Date:From;
	b=gN5GCBzB7rI3Z0NgIDg1oQ8b1AGY1gKPGN0arMHgurmQH5D8v8+Qhls1IO3X7GFAW
	 zoZ6FOySy71xLDLi3QdC1aHmsyRPcKMcRHJh2x5G/tZarMDlzbsu7tnQ48Nc011lan
	 W+oJlpS++aVx65vNC3l9MoIBfalAxwMzUYDFByhA3N9odHpeoYBHZTMmuDi0tf5VTg
	 gM9mdf7O1FVKwlA3DJ3FCMUul6LH3T2We3VzTDLPifZ3ki6qQm8/meOjqMWKAYY1zc
	 hgmCkXz+GVh7SpecKUSyKupHByQZd52YN6DgaKhT/pFi6394r3mvAigd/y2WYsL0+G
	 /wDBvajBywxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84CC61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945779358.6650.12498465687083564939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91313880c76820d90b8fc1972e6fb36f4d1db6055ac2b6dc8b4accf5a7de543b
Date: Mon, 09 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749457793
