Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C682222CA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741690134; cv=none; b=tM0xI9AXMNc+q0i8rYiodZwPHSCXMIBr7tlVxgqP+wj/9u7ur/utZ1CBdcdEsu9i6hkZpSR7JEYoL5tjCnOIWFolv7e+OxTEDM6JgbtD3NEWjpT2ZMLpuY0gN0otBFb+RGiWIM3LHrFdWTL6ljzSQUirYP7rt8IVbI6GlXKSEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741690134; c=relaxed/simple;
	bh=vW/wcMIoMFXTBR/L9+tJU3FpBRkfbwCbDI72xbuemvQ=;
	h=To:Subject:From:Message-Id:Date; b=G2qlDfVglnDKrP08jcVUNoSrKOKeH+KhQAQqfPzq1vyqfm2KpL2zc/Gm8/wmZ20s20XlkoMnL2lFeIxsi/u2aHp42cBfqD8KRwavr1NSLi8goQA/M+jU9Ug4pSmyt17bNlEe5JV9QqfqchP3bDaJzVxQ6rk7+YB35zR54Mm1dNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWbnfvDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWbnfvDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB51C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741690133;
	bh=vW/wcMIoMFXTBR/L9+tJU3FpBRkfbwCbDI72xbuemvQ=;
	h=To:Subject:From:Date:From;
	b=qWbnfvDJAUxWjRn6XZPnZP5QdOzunl3BEOQYdxzn8NxNCPGdALWzw78PY8nXIb0x7
	 ryT3SVUKwCSRaUbBHJnWQMv0rriZEpnPOhQaNf1c43S9xM76OmpDghL5k9uNaUQ9gR
	 sFdxBI1SNOox+g8Eenc6BSqCV75+IMZeGU4lTWMzwNPyrzt0Bfnx+cEIE+EWi2o+oT
	 Sy2K6LgoktzLTBFQgIoPiIcUTP4qyVtNQ5nncGssh4tmEhWDlFSl0mt0nn5JO0gvu8
	 3KUbuHuollhhY1vJ7AS7itlnwRjpGRqHebthl9jeoMOx/6Et0Tymk4NApHbxZ0j00a
	 GeYUoBK4jt9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B164C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169013362.8427.13019440737291356311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd96e83c2a69f0a56f0f12326be5ce994ff7d2c306b84869f876258f17de074d
Date: Tue, 11 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741690133
