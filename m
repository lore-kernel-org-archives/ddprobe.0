Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB2D1C2DA2
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733732754; cv=none; b=R3GtAtBmdmidyXEsVplm3oQweC+GjFv5vpan1eglLlWvY7Ju+uzB5qQDSPv6wzIkX7wu0Glb0EB9mDhbVcdlZQ+hkAB5xI4wiEmRBcAaNVAhlR5nJr54mDWZZA0eK/wmgnRJ5dwazZ1pghJreYIWBJwsVwKUBG6w6u+YwCE9Umk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733732754; c=relaxed/simple;
	bh=3G0Em7pXFC6q7bL2c5+oORtlaReR1RLidJ4q9eQRreM=;
	h=To:Subject:From:Message-Id:Date; b=ifcsoKdiZPGsj9/1MVwfM4mmJj14vIk9xVZSIfN/S50xYenMvx/nWqk38/5ogyX1j/NtM73ot+9KORZ7w2N4vCBSwPCaZqLphYJ16PRy8c1HgNTMHO7nPKCr/4YqcEzrtAmyyLGKhYwgiLvvkDswb4ozEpkJOOveVd4cvXFVZC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vd3SMrFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd3SMrFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAE5C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733732753;
	bh=3G0Em7pXFC6q7bL2c5+oORtlaReR1RLidJ4q9eQRreM=;
	h=To:Subject:From:Date:From;
	b=Vd3SMrFoBIaxLOjX6oj1XKo/UmFG9CuBNYYBsvsqJkGkxlB//QjU/PtdITEDK0mSK
	 glWfu9EhfidpF66qlro+APLq+A5mYwfg6qRydTsP7pU16wRFvcBsMo0H27wDtik+NJ
	 kK91DhhLrp/ir80+NF4WDRifq8krXzv/8ozk1Fy+MItFDhyf6lgJqLvcbPyGA+Hwgq
	 F2Mi/ayAxnRY7gYSPpiEkGvUBZMYV3JSLPV2lHY9CPanX0nj/VpDtfKvlP9yBoT/wm
	 ZjG7BFByklGq45iGOECMIDAXWPPXl+3iwlt/FjvPBR0d/wit41WE5iDWdUyE0IptpC
	 ChxjWYfJDtrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9780CE77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173373275361.5169.18277413547570808738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5033274b6e8ebe1f2ef56a7956c1c60c0255e8d5b13f1f7bf2d55697daeec2cd
Date: Mon, 09 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733732753
