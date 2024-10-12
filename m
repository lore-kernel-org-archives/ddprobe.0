Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CBF17BBF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728746754; cv=none; b=XpfX38Pixyy8j1nZQFMfn1GsKrjX3h/fz40qkhhXUQrHZH5LrRYdpFn8j+BJ65ohc4NABIFXLjhKW9+VjmN2V7w+LIWOK7Y/3GoGxrBKeoGlO1YLRggVB6NHJta3mfFS5QsWeb/IJeYC224RVLsN2mgW3Np5yUIiR7vldSOIwfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728746754; c=relaxed/simple;
	bh=IOYXlGwFvtdquDirwzZ1iHcDHGPE81ipHFXybBfcTlU=;
	h=To:Subject:From:Message-Id:Date; b=B5LdSoMXt3xXUXzMU/oTLzO4FcvYKUU/fQU9g4ttT4edcfWVj1lSRKRuk/11V/k1kAETryBiFbx1vV/hVYF60C+RaUYgB0k/vZ11FkdOrgpkxHCtDW0yE7ecgkvAC3Ih2450Vr8JkUoh1YgOttKMinKEf0/ZSZ31bCINy6ckC9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qsv6aMbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qsv6aMbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8465C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728746753;
	bh=IOYXlGwFvtdquDirwzZ1iHcDHGPE81ipHFXybBfcTlU=;
	h=To:Subject:From:Date:From;
	b=Qsv6aMbWdAzqfMuOuP35pxxRDJbErcNL/57u89h0Xm4jmtsuEh535rV8+lOPg6Q8X
	 hm/rZJmAV0OyGxyb2q/JrT6/ZpulxCDUsikW62ojoQ/lKz+y5zvXnplLEJ6t6icYre
	 STCpOpVo050iGnChKy4722qyW03/78lSwimcKsCnL3dGehk+jiIY4LUaGfv5r4XRhS
	 7JEWRRpeLxixj8PxDm3UEcrZki58K2TqAor85XyLy5pcA2Js7hCxEdPpKqvTkz4qaU
	 HYxUZRVopwE0Bz0ju5mRnzGjQOPGxnvaUe2/QlChlPdVV0wzzI3kT0KdQm3ch6Wth4
	 bUUZglVC6jFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA3CF256B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874675360.4820.10002056384303878943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e4c6fdfe5cebfc8585e9ee495f53c7e4f6fc6286989256ea80899db4903a39
Date: Sat, 12 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728746753
