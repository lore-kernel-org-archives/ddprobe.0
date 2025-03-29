Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BACB79E1
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743292794; cv=none; b=bAa15BFnDAPqx15bKvPlKeQPEuVSvumYTwVueXb1CLuAowNb8sRcem1lliLZn3BobGwgoVS18xJvhihmRDp7Fe+wHj7PBoxibCNtbOWwzhnPgwWlpSxTR/ynyJH2iM/koNmPHW53P0qlrDB7EhtAbv65mQR2xpEAQEttAv9uMHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743292794; c=relaxed/simple;
	bh=4qaCXF5hRLreQ6H24+5dXFCb5h/9R7mYrb9FylcH2Z0=;
	h=To:Subject:From:Message-Id:Date; b=gXCoMsnAY9EybNCY+0FivKR5HkVgIiKix2GfGLCu+XjcIaORxRX6f+QAnlHEXMWxbJVEt0kkT4Av0zixotq4DY+C6HAK4vgZleeInW4UxTEoKLiadIjCnwu5BTshXxE9eskNyRt3ENLBrjSudByOPMITAaYqFSGv7sErjX/Vl9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpzptaB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpzptaB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A6CC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743292793;
	bh=4qaCXF5hRLreQ6H24+5dXFCb5h/9R7mYrb9FylcH2Z0=;
	h=To:Subject:From:Date:From;
	b=KpzptaB428sXBx1Uu4WzWaTPotN2hDYMvUbePZdukDba8UkSEkUJ9uvREwmFoYy53
	 VOpRuIJaF2SC80r8n61qY/IVkoaJ0ya4vxyLKEEQeKJj2hTm9Q7tXWSHX8VE6pL83A
	 TPnR7j6UD5NK5c9bjJnWyfjPapWh/i63Z4Qp7hp/QK4zeqjSJMb/pWDOIaxo9yZ3K7
	 Wk3uKknySpWk4XHkqs2TblwP21ewurQeO24Ao+ldX8F9mU4cUzgXiRXhDmXj0Bx4Na
	 I9AvwFMhTSOhEs78QM3IEsYUQkUSmep4aInTBHG+BCTvjSOK0GbL/ELvMEdpe6e6r/
	 B/MK3bSH3TGkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07E3C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329279363.3127.11646564316360100488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9911650c86b34c002788eefe490a20725ce04ac531aba8ed5cab731264fe89c7
Date: Sat, 29 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743292793
