Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394A985270
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746239994; cv=none; b=DYEWgggSH3BDBtdKGoeT2sF4o+nFllVCBlX9FPDpCKtzwjrEWfcovEV6VTTVvLaIng83apW7D4/iMucy3AYVZCI1+oVpyPe0heDY1crLjX2uJnQiFkN60MXdIY+JAIYPNctkATY59neUZCTlrWwt8eoA8T5Z7FN0vBBLrKOkrdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746239994; c=relaxed/simple;
	bh=BsA6GpEa4n0Mz+vD9rC3euCXU5nu+YatE5MglThs72s=;
	h=To:Subject:From:Message-Id:Date; b=ZKyrPZXukULplF3vsSVlmzyPf2RSeAw2y0C26Boe58kUexAwrJeMb+HVN9vSIwMtD1DN2MA1fpc5VhPCNQgR5hVU5soJgr18kmdtL9GJ/OD4q2PKHu+MBejnWthBPCScwp8fVPSYimSDWPdP6n/T8WJ9TBIe39HyRmdBWc0NwBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb4TSYli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb4TSYli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746239993;
	bh=BsA6GpEa4n0Mz+vD9rC3euCXU5nu+YatE5MglThs72s=;
	h=To:Subject:From:Date:From;
	b=fb4TSYlixbxlhakJl6p1Oqlbl5UBJAjY7qWWvOw8FYtDzedWxhTPAmPdF+m0jy7NA
	 ZkPLLUJuwtmzkT6V3wVCfwqtRhEXqjEkLgKU7YxR4O9P/DE/cC59Oyty1GbtldWNsR
	 hisrFHRj32Ov2KaVbG1cEqR9ScKZ1NSx12CWPYoOKbf74hBPCdoGij5BEOUiPu9Ddo
	 /35U9xbKZ0lrenb8RV1nj9fOv0TNf/+hF2fGgOHfLmt0cBFH/TYtm1sr9+LKSWwxbZ
	 IZVC368cDVvnzGLCa4YS1hd81XkeqlAH8PSeo7c8/MTRowetmofSqjOKJnB8wf8hvw
	 Kl1sFwWFZe47Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B0C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623999357.21092.15132824877175879694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf1aa785be1b500e28af226cc3ed8571d12fb80cd487c3477fab6a71c2842fc
Date: Sat, 03 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746239993
