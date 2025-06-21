Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4971426C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750520994; cv=none; b=Lj3JWH9CDX7mC5uUxxc2YHy8yeBuqx/IiOhJVcoX26Zv9/IPYbiHnp8l7AOpaE0q0Feebki1OtI+F3HGT+r42CLWmlBkYs/MN7ApdgM08jToEirz5ThO+9/EEE+397qCCgX2fpDaf23htzl5cRwDwdFIgeWMmtMkziwhp33OqMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750520994; c=relaxed/simple;
	bh=lbgm9JZMFPisndyOWI2/l9beHgATbLTkN63qkciQVtw=;
	h=To:Subject:From:Message-Id:Date; b=hfhaCpeC9cELFSfKEkzjBCBKMor2I7kOBY/B3BX61hTe1myAG2jaPiMZXPExp4bQ2+lcvNAJQLx2faRexramj1dIfNFVW3GfB+2XSuIj+R2AnGjvl1luPEdVldJtHsshd8U5Hrapvb1YBqe4DIP4bYJ2xIos7YF06Fc6MAe8c0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fh90RqMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fh90RqMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A356CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750520993;
	bh=lbgm9JZMFPisndyOWI2/l9beHgATbLTkN63qkciQVtw=;
	h=To:Subject:From:Date:From;
	b=Fh90RqMDpEQwd6KOnVM/GXNjF0ZuY7m8Jb3hRHG7lO0nTFHTGyvyA3445nYzRDKP5
	 d+tb0j4dC49qYmABNgu8YgWtvL4uwElnrUQIdrS56DtZvEQd6e3IytMD8yffA0SupS
	 /bm+illdSWUy82hrToT1fQLcqFGv+asV2QnQwc17qV0xOcvRBp3J4Mu4Kz5eeHK3Yp
	 sVbQuLbFVUxjtT5UmCp0EYZ9On1rpmokOw8NOEtlS9j1vZBD0b7fdtPYkfoaCeix3e
	 6VZzfvxbkocI1y4XkNV7YxuZB/M0nmFbZ567p8ggfl/ysGkoos6JwyHaRTg7RkmlE/
	 L4V05j0xPEW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7BC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052099357.27344.8172979976114223104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f9807d53070bcb9f4c6d57542cbc564549f6eabb135647a3861cd80fe2821f
Date: Sat, 21 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750520993
