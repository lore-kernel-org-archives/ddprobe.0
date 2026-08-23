Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EAB1A6836
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787504434; cv=none; b=CFHTL4JhoXGQM2prfBgVMJQzAdZnwVQZpDeaq7PYrEZt/bJVYd8RkcXn5rtI6R2mhoJzgyt6XmdZoeNURKvtGqZoXlLvkbkgpME1hQ0HMgOLJCmpTgEJVj7fNjEJX33tFGlF6sQ6m4jKKIQPRFmxlbs/JDJNIzS73OwhfCmBemM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787504434; c=relaxed/simple;
	bh=GPrRt1M9Ain042LAaNEsJB7cMLA9paIG+JWPIRqbXak=;
	h=To:Subject:From:Message-Id:Date; b=LocMINwDXT9KvdVyICmroTLGoiIuE2b53xeRoc7jsOSnXaUbZ7Bu8zd7jP8NsiFUqTGh6iCR9bmZniO4tKzVapGkH/gzJGb32tqBt6vv7okujvo80MZ7LDLYbdtJgwu/pn9pclupKuGH/bX8NLtnK7UpELaj2oENRrS8fISUNO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhDbfHBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhDbfHBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D510FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787504433;
	bh=GPrRt1M9Ain042LAaNEsJB7cMLA9paIG+JWPIRqbXak=;
	h=To:Subject:From:Date:From;
	b=EhDbfHBsjDxPUQNXFPU8M7t5/VG1yHyVCepKgcnGdNBT1W7Bl8BFd0wDA+bJvcHr0
	 uNkg3AGW1OAbVG9N6HoCAhLYKda76KK3OYJr77QCEFKU+ArA3+T9hg3Yio55RPc01D
	 LCZ8S3NJSlZW+8hz3M+0S1R3Jnlsh9u1QAZjPP/oN8/whMIVML9w6dOj2IWUooayPN
	 D7wFO51/lfWtsL07QOvb8EcEwFk8j9lR6MvrIcSRmFsYsc50myGxxgBrgKXMpOG5/Y
	 jDpEkcFg6F+dLSbnGL2DDfPWFPbvp23GcRc44VHlGYRtnqcStnoyzJqWuFjdfb3yge
	 dGX/Jj/bKzTqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B190EC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750443369.13369.11805567099261112780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d178dc0742f9e723ff07e56d4f4f3cc108d039cb1d17bd138848ced6212dbf8a
Date: Sun, 23 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787504433
