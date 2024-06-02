Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3E922334
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717332923; cv=none; b=lSRerPuYij1oqhrJxhb0aa0LWGfH5cG3SumdRJuhinekKRHY5Zkz0/Sy1pqT+b5NETplAyE1gTbS9kzec3CgiNfqd4XgELWdhrcwAqevEU796s/g1OiUgSvrmUPcVC/AtIkd93e++lBXY+sj/S5IBBDYYcNhP9VgCmh70NxQ9pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717332923; c=relaxed/simple;
	bh=62U/ncoGDRmyV2LVx+JjmKAUVqeg+6F6T9+mCkW0ezM=;
	h=To:Subject:From:Message-Id:Date; b=Gmel3y8ko+fDStmZ1kTAdEbc+ZrY6u0IZV2qOVun3Azb0iuJHufoxGFMjjCH/qbrQfvUSFI4hl5FBLq9VEBKxHIWUwI5VNSzf2k+PCdoQt7k3XO8scGw4qbPwo9m5HR1iLtv95gzwaYNr+8pdUUgiJgcrDeoBD0XmJD+HrZiC7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abIbHCMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abIbHCMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A0DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717332922;
	bh=62U/ncoGDRmyV2LVx+JjmKAUVqeg+6F6T9+mCkW0ezM=;
	h=To:Subject:From:Date:From;
	b=abIbHCMpNayiTZ02Vf2UlThzlJCxyP36gsDZRS/IiV6mEAWu2w6/IcCM0FG/COGCP
	 S7LMSeg/HaLI2L84D0AJZ3ViNcHxdMBMvB3NfYIG8i9wlCXUHoIL4KZNeKt8q3ZtrL
	 E7FaATbMGH+FhgkKXJ1Jkx/5ugDojxCdZZbG92ZZ+atgDJFiQSclgi4XM9OXFRrryC
	 qF7DqN0Ya/TsTCjrTt0HfFCR2yaixzs6r2Sr4OjD8jZL3berw35ZeOJAAexVogBiCE
	 9AQhl/w6WpCvGdBWGYyGh0i57TSaMu6rFa/lLR1gdnWgCO5/4c8FOVC6bwwB3mTBhR
	 z3BrTSvfbot1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C483AC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733292276.22560.9358538259778311324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2196279bf99692141405121566f8bb92e709145011a4fa800be2e00ad393408f
Date: Sun, 02 Jun 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717332922
