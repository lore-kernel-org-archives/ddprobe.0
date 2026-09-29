Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08A3A1E80
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790710234; cv=none; b=RqxL4X35loDYlhL4woYIB6AwmBTuwHDMy1IdFN+tSKf2yIFsy4//C7K37FTVuljHSQY/RxKEQpbHVPUP4iUW0D4fO+lUvfkX/88LIHwJN3fsTy7PXjTT77ICKscwWcBVrEnQ9xjd0nlFoMXbNlWKq/LjPc491SXNUWfEr5rhl14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790710234; c=relaxed/simple;
	bh=vjyhCEaSCg1YYvgm/JdVJsaAi10OJ/RbjaI0s1A+Wfg=;
	h=To:Subject:From:Message-Id:Date; b=EFPddXJ4wwHkazJysX9PyIL4XEFzTxYIZpzB1byAOgH/mO1PcY2vn4hHtlHJ3z0OVrhT+2BJ3xqx2x60i55NG/dpvLYulRkpXniiPlqD9kTKczaOFlEJx8w53n6RUm3y60+2+rkQJLqkaJV8DPmEIWovjmZ0G7dPdcHY2bl0/kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6gmfpMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6gmfpMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD818C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790710233;
	bh=vjyhCEaSCg1YYvgm/JdVJsaAi10OJ/RbjaI0s1A+Wfg=;
	h=To:Subject:From:Date:From;
	b=p6gmfpMJw0NFxTQvyQktsiFRnayQz4dkcKugAdVu2WRENvrdQvI7bGYE2XJIh1Pfr
	 B3swfN+gZRyf7jKXbK3ilReuaSypabu5/APsjjsg4/sSzP+DK3treo5itRttbbo3un
	 2uzVeu+ThZhomlqvFKQKoOpfguyhNDJDQCrZUAzXeI9RIGRDQj7snuNDE6q4ejuUj1
	 ui/z82rTCkBg4Fa+44fV7KdmRnK539psylBzckq8TYZA+frYSnbZLLrwVB9foyEPwO
	 nH/Ljls0JJuV10QwaVDTb7iOVE42kfz9QDsSqX8CjihXd0ZmkJgxXSNb4QjNE4x5yj
	 +DfzBeOH7O60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81DCA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071023369.16550.2527588579228476233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033c91e267eba884ad871e7e3fb6d3302e07fa8d8257fb480a831a6d4b264912
Date: Tue, 29 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790710233
