Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2594A21147B
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755470995; cv=none; b=GnEDmheGz4Iri/co6r/y6Zrn12SlHExnNlrs9h1ZvRC+Z7JW7e8uox9/UEH0RuWODP/Yfv1BFTeXV4nwunwKbRzD+KDxdqAt6sMCBppL6/EOTicbkPqBQ0e9PkAhVyVLXRuRgTIRrwsGzWq2qji/FA5VbRpS5+CiDL+io4WFaQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755470995; c=relaxed/simple;
	bh=HP8zl7qD4PMy0RZBrWbYtBRdmGYWbb/KUylnZUmUrnY=;
	h=To:Subject:From:Message-Id:Date; b=RnpNAirUU+0eLjoYV25TnbHDhYd6AR2da8GJGWn2yiWmMzj+ORld+aTkxjM6zpamL9m5eShEvUpEac/RVJVYiczVHv3MdBYw5in4moTRVZj7ukAGkNwzYOvj8zxkOUNfv2aGyiNu2AKAEKHPV/d2Lc9Q5Kr+/zo/P9krM4X9y0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dz/csbwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dz/csbwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755470993;
	bh=HP8zl7qD4PMy0RZBrWbYtBRdmGYWbb/KUylnZUmUrnY=;
	h=To:Subject:From:Date:From;
	b=Dz/csbwoHthDKUUQ4CItD4MxweOAsts0q6F0Q1BTgEpGyAsXQEDWPXhilzuGwo3Ou
	 uTNoetNZFg9On8lBBt1PKesWkQMfoHxQwSCgNvVqz0qkXWOfAkBSBVTitVM70x0vXF
	 RmQPV9V0/842DgT1qilHj1bs5S9A3pAd5Z7H8TPX2PQdwd6x56L6eaMS3bZdrhxi3Q
	 byWRdYU+UgR+y2FJCNzanPF3RSkxwm5KpkGmdyQHgWOuzOf3V967dP7riMal3WCL4l
	 MkOfku/dceN/mBt05WX/T117lY/+zVKpmgEZwp6m2tc4NpttXgd/0q7fNxT2A540Le
	 jkurLmb61gnTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E92CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547099357.22795.5804614715849547028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5f0a1458acecf5ac4a91adfdde10f06b45d73eaa9d645f2b2941faebaabec4
Date: Sun, 17 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755470993
