Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FE4430
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730601954; cv=none; b=rdjGKqhfjkCHdiqVi5H0ksovGmM8KZGOxdT/ek1BCo+Yn/92pkUFlbUMv3T3aP2HMU1rTSwZwhNEThx2ePr7/borwjkDnwq0p8Ct5bbyzJJFYZMsI9X0UCvUKsBgyyyhOxzM9qTlLBz9s5PTwJ9312h0Gdt7kD7MbcIeyvuHboY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730601954; c=relaxed/simple;
	bh=xNWXA3DH6lnOznBJ+QZMPMn+9pbwTbpaeaOBO2HT+PA=;
	h=To:Subject:From:Message-Id:Date; b=TfgdYs7MAOKYyr6isjakI2RXfr/ibfDSfwJokeDN3VvC0tMcfBW6m0srKDcq5H9wkHMFikUsprYDCoH49YyUPwCBVl5jIzr96gMbASak1/3HiwFNvgc9v7AGD12O6r6C/qjfjab8Vo9mg6Iv9nPZzvRoJCQ8r2hkfgxQejyrytU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbffQBrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbffQBrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5279C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730601953;
	bh=xNWXA3DH6lnOznBJ+QZMPMn+9pbwTbpaeaOBO2HT+PA=;
	h=To:Subject:From:Date:From;
	b=UbffQBrVOL5QNOPiUvDBFgu5U5QMJuj35Tn/GADX8mP2IdUjIBe0CH6Cfq5BgZW9v
	 WfAaBGCARDTrQcOPFURmWhVSkcgbowVesLXdumKI/kLTkx2yYcu2sxfdhDPSMMkMH6
	 aDyvlnSWdEHqiJivvN8JyjhidNCnnFsAbcMlc7nFnu2M6zyNUWFiqTzYP//OreCvmx
	 JL7zXj+P27QEK2GMHyx4A6wbyop22T73s5P4/r934Wr3TGMluWiZhDv7AD1N4yl2iq
	 eE4MQqVRlc96/VQRVuylLrN164DK+UBBLy4Dya3sEdgXrUXG7QWtDl1Jn9oe1cNrxF
	 RevxFzYyqYOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E5E6780A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060195357.25964.15311449147784831470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd3c8889fef3dc03d1f151c9523b75c2b88c2dc92205fd7fc9258e727bd5fcd
Date: Sun, 03 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730601953
