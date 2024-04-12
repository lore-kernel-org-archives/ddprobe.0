Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601D55337A
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712915963; cv=none; b=GMxYVnGNMjUTGhZ7Q+9b5j+HadwT9+wd8T5iBiDtKxZvvmn4S/+JMWavmFWwzR3P+hZM3LGL1+tptR8B5Er7l160cZmaPCSU9spmVlyb2X07iga+WAsDfUI2h4FFJOMBjFnJL48obmeaKGnQ0WCB2MST5u4BH7XdKJqSNAc+Jag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712915963; c=relaxed/simple;
	bh=xySv4wVfAY3vey5gf91HjNKWSD7eyqK5/wreerrpt7Y=;
	h=To:Subject:From:Message-Id:Date; b=GH2PbMUbkNWhrP+CF1NjPZUjQl3GLPgu1sIK8rgPyQlOpAE1PSx0I8p34Zsuf/tkEdAcn7D9dcpYcGZurdHIqIAK969BcRMSD4nVEL0nRP0uiAkwTvCJan0QwQSiXaNy7UIQIeWxrhQVZym6Hviy9i9WblhRynwgUdV7MNcaaTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz5ZEDef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz5ZEDef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC695C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712915962;
	bh=xySv4wVfAY3vey5gf91HjNKWSD7eyqK5/wreerrpt7Y=;
	h=To:Subject:From:Date:From;
	b=Qz5ZEDefGUgjP7AmPtpZ4OlMo77Tv86SZUoCHHK9JUqXOmxf2Ih/TeaepVbR3D8W1
	 hu105gDdaJ/eJ4sgXejZ3NszDs1gC/N25BxnBEDBRceTW0rKkBjJRgfTlEkw4TNCsS
	 Lf9mabknFHPDn3br6tu/Mc8xZbeHRUEgEz6brSUG4l5Dse+HnBHIHEc0AmdtuCgUTU
	 BWlEcuyqiqsJmCQciv2Tt6FNvM2KJSp6dDzP87Y43PnQeYv8VOKTO1MkGSJqnV7+Do
	 dJzqEVY0crKfx+GoYsntx7ya2X6FXjFXEFYG+AOMpd7gZSVLqVkHZPEOmdM1Td35sK
	 iBcwMd5z5F9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7296C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291596280.4142.14861309070285841623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27accd35da6110a415c1c40037fbdf8a1573715222e9f38665a562501cf028ae
Date: Fri, 12 Apr 2024 09:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712915962
