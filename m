Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D2B2080F6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736549754; cv=none; b=t5IUlFfIZnQHXcwzVa3BovpsvUk7pUhSHCYmPc/F4kTyNoryiBv7WdrZtvtAMDI24asIbLLRDHFNar22eIZ/zBqxZsk1MxJ7EaZKG486eNeM8hh/y58v9ahjWTlDpT2C4PkZzGCC/DwEyvpvQ5DVZtt5gPZOigOvDO00Jqs9cY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736549754; c=relaxed/simple;
	bh=+pH7J5QyNk5TQqEPqdydJxFcllhyFvUi2H/H3fcl69g=;
	h=To:Subject:From:Message-Id:Date; b=KxDVp32bx7MXn2rooCRD75i8ufJGUBBJADEmmEHZS2q/nfkP5/9bLmd/QYFwHMsmg4amCbvQHRCZJ+8gB/6YYXHaMjNS6CB9FvV4RBx7v95k7CaBYOVVpSSk2puf9llUFsMhiroq9m3rMO7uzYhaQdUKegAiQZVp0L1izJoSXbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4sS1cES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4sS1cES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B081BC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736549753;
	bh=+pH7J5QyNk5TQqEPqdydJxFcllhyFvUi2H/H3fcl69g=;
	h=To:Subject:From:Date:From;
	b=W4sS1cES5QK/icqPBrDJiL3t6cHxS+7lw75yQt9bHnBOEYihGAe4jw9CziLuROSCg
	 ddn3eaC/Bnoz8OVQzqPiSHErunX/3sHWnLzY32TDz6ikFwG7bggEesnoFpfgX+lY2Q
	 vggOCkuEkBlTYDkp+I6CqhaXox1hyTDdlA95IUpZz8DS0KyUFq2Kd54BVD91kiWUzG
	 mNlKfo7dBbl2eVRFDJBYNbl4V3LuiT3ftZaZ3FATQGYDATnqvPqaAidEEesPBCMWWn
	 r+2EtOyDzHZAVHS6LxMRQ9nFt1vjnbCv4khiTaSzMgg+EubcefAyb5Ax3j8zcy/Qnu
	 5FiG38ybEhxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C825E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654975363.8512.4466619077576441405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60cf24e058227951dbdfdaf727c0eb302ddd0daa5ef6d5ecaa0cd311c367de6
Date: Fri, 10 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736549753
