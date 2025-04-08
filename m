Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306D41D61AA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744138794; cv=none; b=KwR1Ua19wPS7Fj08YeesyJdDeRurNVgl6qZiNt+b8US55SsG2iQqDcHy9RVM8QqdQeb/XRnzMiUDo758S03WaIRQwRj7qN4ca6HqLZDrXf5RMunXNJCsQTVb/chxu31C39Okxb/ucTRCT2hq/FWXkIrqlIqy56RlWWwlvx+uPKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744138794; c=relaxed/simple;
	bh=dhdwiznRfJb+AAK5wzBxk074qB4CAMA9/ZYpc+JQzUo=;
	h=To:Subject:From:Message-Id:Date; b=nRV8t/HGe7LAqfkQ6l/8H9Nm7Si8nsB2VjYxX3TCKLv0wpIAmnhp/rBf2zmzHJ0ThNA8b64LJRHEK9SCeU2FvYxBncqKcqiWeI/1NtgJC17tcSpMX63FKtx8G0bohypVaRRDLBMqHX/1b+X8EH9aMGbI7D+eyKE5X1KmpU6gNrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtDr7o27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtDr7o27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA8DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744138793;
	bh=dhdwiznRfJb+AAK5wzBxk074qB4CAMA9/ZYpc+JQzUo=;
	h=To:Subject:From:Date:From;
	b=HtDr7o27ZukRjw3VNcTxCkWCLmdCnkmHFwhkKjVud01/Ivkml8vJcbtiHRTMl6GTO
	 uNNW8ga+CkueOPm8dMPvC5a6DUcuorhP8e0jDH7KEXuaDXmfvMpbGKGmI3I+u1Gm8/
	 lc9FOwBFEayjJlRhEAcoWKCG+u+V/XCssUa1kqqytFM/kklDwZnT1uDUoo+7RKUN+G
	 lFgP9504oBFL26ohTIb4tICxQyLJBgqAssncyHlWxsSEq0qMQrfQvvwN1vImbhVCaY
	 yxH6qU5V/2j4prubbFlu5DecVnG4O2Z7X2S5+N2H0T+kfvBv1I3In9a/z/oYsBFAyf
	 8PBLKmx3o0yKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F039C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413879357.5898.14576640533081357233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16342e04134bf4ec796030c2ff987c30f6e868764183b0e3751e21be1448209
Date: Tue, 08 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744138793
