Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D9020326
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747032595; cv=none; b=JEHVYqMSYaUBu2oxzGtNSTV58UoLveDfFiyOex2eNOlfVfZ1PRZEKaJ+ns2kiHFcLxWyW8yySoBjCWe4RNFvmo4UiH+gboVddVX/Cw61fqRbbr7ugNPKQ7Wyb5yZPAdtcbWLEOScKkWL+uTovqwYH2VUc2TUbydigYGslqLmWcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747032595; c=relaxed/simple;
	bh=CS2G9QPDTn7KFWWZVQvPUV1JuUzOR44vEdEEjz3enpw=;
	h=To:Subject:From:Message-Id:Date; b=sTtRcV+9o1+uvVxaFG3/lF4jv8EIX7HL7iXmHuTB36YjZXWE8/pXMLk3+JomNgaLtLUG4o7OpEDr/cR33UFem5Kos9YmEvISX29EfgpCdKzyKM1GOwBkP+0OiFIiItfGIOXwGQJucIF8FHQ1MlLBHkh/ZQyX7qs38g3UCMcRbsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIKrU3U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIKrU3U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747032593;
	bh=CS2G9QPDTn7KFWWZVQvPUV1JuUzOR44vEdEEjz3enpw=;
	h=To:Subject:From:Date:From;
	b=KIKrU3U1EjU4dKokYAHt/cgBYrcN3BwsmgxEAbvwA/JLD6/jqasRRkvw85B8j8Prg
	 oYhSKe1OW1J0Cirxt2DKFmWwd6kT5Wc+DXzGE7jkMLQkdyaxF0NJV8q5jGT+6z9fJ8
	 huvFMJxmdl4dJRa9PpTAY1+Ml+VgUEqZSed1CqiZlPF5KqDTwlmepQO9mbinXmWp7T
	 2YLdGMQo4ktBBFbe/dUmegGe8av1V5BXNKCtoxJ8NxLSUuQszLUtwqtjj6KXuCKOS7
	 /0jYdUDGh2JX7Cv8iw+XLEqW+ACVtlbyy3dAL3mV73NN5fFWwluwCFt2VmWWMTEoqU
	 sjTXrg2N3b9Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52CC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703259357.3935.8659877809772129995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a373487ceed1dd8f4d8f46371a1f276efb5f85ca30a849d1201ff82045582e
Date: Mon, 12 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747032593
