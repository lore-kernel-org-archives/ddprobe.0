Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1993140DFB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777076854; cv=none; b=HPGsO1p6l3B4SoyDChudtI9temmrurR+Pa+qQq4RzU+qU4fe9ZDZT+OXFEtLBizdmgdeMy1pL0y2r8YuZDbJQYKKE/mXGGxxr9r0J3IFY+19AQ4m03ErC+SR/tbSQhs7euEshViH9Yaht/xuwKoyEW+HEbS0dWlQ3AFM/zpp9j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777076854; c=relaxed/simple;
	bh=7LzIIHPzAuuL1UnDGkOqZzmT0lOMhq7HB17+nWlwXXo=;
	h=To:Subject:From:Message-Id:Date; b=Jh5kl0m0CFDgS89vO3iCLm7kGH4cP5pwo1l8MQYtXBN8+UsLSPEW008XVYX/OhMAJ3/GPvlIzGl1wpfK+qUspjCO58zXF/olqsaiMnXJFP/4rHt5DgGaPHoGIWBq/uBZh/QlaoDc5kkE66a/fHXDOPXPtMq2VssmiL4nAC/Ijd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfaZaGYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfaZaGYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D19C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777076853;
	bh=7LzIIHPzAuuL1UnDGkOqZzmT0lOMhq7HB17+nWlwXXo=;
	h=To:Subject:From:Date:From;
	b=AfaZaGYuz0AI+bEDIRTP30E9gnP+t1kL8aCKdlRepFyRCzFQhRXXVMTNJyoNH3Pcc
	 Cw3cNj/Q8TuwscsK4SswaHMdxnj9hVfQDMLKPI6/n0wjVBWWjFVccul3fCRof7bBgq
	 Ap3ZypD1Jwg9NswvSojVnBvgMojvZDEC6lRk1kaQmVEKpkzgVjrlungciHFK3+3tUS
	 Viw8aukI2/xS+kD2cZ3qN7LXDPLgYI9OAqLkaRar6IrGuLOOVkad+DsK4ZpQGEkc+H
	 qfzBDJO4ev2xq/2YVM7HjBMY4AUIb5eHLGn+FvduAnbTJK6CvQVyeh5N5SDFkBJPGB
	 70lbNV487YTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1907FF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707685369.17427.4226019099496040530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f999c7937115b455215dee6cf78d1de2d84e4dd04cef81b5fb451fc71c4c44e
Date: Sat, 25 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777076853
