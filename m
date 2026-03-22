Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113722594B9
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774170894; cv=none; b=pmI2rhUVhl3jaWDOOAaFM5id3LwBglStKdDHY76bGWCzYADstJGZHqnHMBsZdx4eSFZXDXkaEMHwN4Atcnd39OZPs1vMts0cx55SD14vCV7NTzKqpEkydJj+FsfKSocoWzujzOZC0pxp8DHNpZCSfwdUfR1OLCIS1iMDnoLfICc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774170894; c=relaxed/simple;
	bh=0H3CxqZkj+apeDoTFfrBf+2W4Ghb63qIl59Lqf9Wy9o=;
	h=To:Subject:From:Message-Id:Date; b=hpj7igXuhP8R+N3j4+t8eIWltAIKbbydjXWxuUjz0IqHtTPBUDoTdEb9RyJnRDtzrUX7N1NTMEEvqkNhCl+c+11uexQ/XtjGC3QkPE9oqwyJrGSSBxjedW6d8Fx47rvx4Nt1LM01BZuh3ysFZmFdX24HJ5ss4ykkzerh0DmL8IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OviEmjlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OviEmjlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16FC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774170893;
	bh=0H3CxqZkj+apeDoTFfrBf+2W4Ghb63qIl59Lqf9Wy9o=;
	h=To:Subject:From:Date:From;
	b=OviEmjlPfn9PSiyDhnpf3MsFdL0ZMeiypVYBAfq8trxbH9aetBSbIAabrKHY0vOOO
	 Gsq8ncwAOYkJDBbes56NAXA9GUa+csJ7gQ90/kT+od4bnUbBbx+qASi5RJLbfPmNEf
	 UdY6UHaLwTRY4wsY6PtXUy4wlIvbzPzie/elt6G3C3H4+feC3QsimcobkR/+DXRRl0
	 ExRzQBViiSCfiZMDT5sbwrylb2WJO4HNTtncEPkXihxm8r091Va5ijjwFcADAuTG2G
	 tsLUUyyuG8nGPqYXMugiF6KFET9JsOsInWOZ8LlUH8MWxqc7zh+plnlH6M2gW6w4m7
	 0wm4J7KzjyAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE8FC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417089358.4997.6166113324504146697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b3871c7111e6a93761cd623f5be2fd864cad0910d7d3be82cdbb93f052f869
Date: Sun, 22 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774170893
