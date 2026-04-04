Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BAE1F1304
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775262334; cv=none; b=OWtYBS9awwcY2ZBirkFIozzF+FirmchyluY1ocRO8Zp5aAi7pxa9q5Ev7zfLvmlTe/9yAx78h5bfr0E3B2Oq6k7RLeLEDnu77buVwBJvJGn+kamvxRUHtGDA4viuafVR1En4ouJTh8IZtAlpzPTREh+8FgQPPDWWJFFR6DS9fu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775262334; c=relaxed/simple;
	bh=onBXBrAclOzoYhGXBPClLieYNFTfj/HqKD4vcX2XN48=;
	h=To:Subject:From:Message-Id:Date; b=n93Sn+FeNdaDmaB25Cz/zHImjsx6ujjTgX+pa/Gq/ZRDa4Qv15y5XESPIWW+ZaCaIB4QKZ7LLrops0cVKjm7HMncm+UmqoGfZqmSmb2L4fLaayPDiUA62aQXHhIbN7y7631yDJyVIckZVNWMlPSXdfRomIZS6f/ZqU3pVP4kRjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QapwzKaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QapwzKaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BF2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775262333;
	bh=onBXBrAclOzoYhGXBPClLieYNFTfj/HqKD4vcX2XN48=;
	h=To:Subject:From:Date:From;
	b=QapwzKaDVQ9AwNSzdHUReYVcHoWTN7KWe8B/BfEjTDru60//UpbeKWpVQkSQeHrzz
	 jKj6IjJ6tE+Q0mS424JvGodvC9W+q0g0YIsSjQi0UTtpgIvNytR34RkmNVhThtxK3k
	 IM1xqvfdvGP8alBoSs7B2mvlkKq7vBFD1CRYg4hpK1ApN2YKB24nDLCZXnglscuaiX
	 WQkJvOrij81KOg9F4XuriuGXOZzmjKeo1ZnA8gpBUS+MTWfvAVJaWfgat/OnKS7Ayk
	 XMJ1natwM1g9Oc0iT4VV91c62OwnqxujpuAhUW9j8+O3tRySzqK2yEgWWTMR6zf+vE
	 EaLGueahBrExg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5964E88D6E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526233369.8713.8584715443003956173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8070d32f0b5fdd9264d44222e9ae0d155f3160e4a2f0e070808b56eee9eccd48
Date: Sat, 04 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775262333
