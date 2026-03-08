Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5C933BBC8
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773005694; cv=none; b=uZBMUYRhE2h+I2oSHn9ABhLc+Zxza3vgRDvKj6GkWlDHgw2ZiKoN10zWAS9aivzVobSgfgUkNl2rifraCK4aj/8mp4pgqrpKgTZXqvviyq6oysAqr9r4FsUVvbpK3eqPPrpa1IH2vRsBqtexDt2NxPNPstfed3zPrr804h1MAi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773005694; c=relaxed/simple;
	bh=YiVjxXF/37Lvb+CAOeWM7W/hL9vY7WBr28IvQBxspEw=;
	h=To:Subject:From:Message-Id:Date; b=Cs0Uxky/+OT1dlz5f/AR3SEsn2mEdX/cDHgZzUZsqlvPI8fFxDLKQwtYoTpeSOAftuL1Z9uqbVTY8DAy0FX8Hb7AxMDxFmdx5FXRi5+TNnRLJGukRqduMfzjsZ++W9ASc/JQ7Z7rY1pNHzF4cKgwM/9UCrS2Q2QQg/EVAQgHwrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQPusOvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQPusOvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773005693;
	bh=YiVjxXF/37Lvb+CAOeWM7W/hL9vY7WBr28IvQBxspEw=;
	h=To:Subject:From:Date:From;
	b=UQPusOvR7Wm6Z9RW0lXQsgI+h60YXk68pRqn3BeNlV5G+6tIZ6b/Nh5d48Ay9/zJM
	 NaUwE7xCsE/m+1JNNNS8dFNiu5bpTvTQqJWGca50YzvZU92Ftl02qCC6EM8v2I8H94
	 i8gFo0Kb9Bvz2WiUcZyDKOlM4Uo18raCPw8bbZo3ATUzw3ODczyeCAMbGBxuf2itnJ
	 Dh5xadswyvqs7QVO9F8OmUW80VWcQeBvTYY6w5HaIUi0orlRXDt0PUnREe9fBvJIxe
	 kXiF/MP91C4Fp/MCTvMlY5Ns3qAU/mbjfYBqseNmEacSzizCF13ZGGCHcTD0yC5GaQ
	 Rd9soJkomsC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAAFEA8545
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300569363.15193.10498635813637455736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5916a3c341937a2d9b4b3ab5c2657fd22b90daa5aef0dd7ce84d2a874df968fa
Date: Sun, 08 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773005693
