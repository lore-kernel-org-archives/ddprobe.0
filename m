Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B463BBF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714198343; cv=none; b=cJkXdBAwqf9OUgQM/bwGPiclcbdUmpU39Q+7fScUCBhmOIvoiUYKgO/d79Np6Gl9ai6xKVihEVgMVGCeOvtBUkIqKpuOmwImGjy+upLfzCaeRDd1CgEQuRU0RdP0hNbcbimg15esd+jbmiQtZ521ANXmJUezvn8Q24s1uZPlAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714198343; c=relaxed/simple;
	bh=2ww4+21W179nnUmNh5VdQg1UCmBo+saq5XrY3SMwil4=;
	h=To:Subject:From:Message-Id:Date; b=ctIuropSbcOsRpfX3eSrV4UzpuuvdSf+p/rJak8nodL0ym0FFm5rSeBqYZxuqFho4bi9/9I5bfJ1B6QT4JnronBeTswcVCm4A1kM7ES3577fua9BnVbCePuR41wmj517TpXDE/PtLyLcdMMFJsCl/kLX0pomiQVVymVdxlb+Sxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ4u/z8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ4u/z8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C6FC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714198342;
	bh=2ww4+21W179nnUmNh5VdQg1UCmBo+saq5XrY3SMwil4=;
	h=To:Subject:From:Date:From;
	b=NJ4u/z8ou6yeyJ06mpEr5xdeu5FKh9AkYvXkuK2bc+B14Lx6sTKyvkXBC4OglVDP6
	 VAxpZXPwL16aH0j89VWr+C8a/47Zv33OBSJoEljd9937A6U4uB73z0AZw/avgM2DBc
	 eGvkt77a7ytJU6kiU31kcBlwHS0a88jFqmBjgovLXO2WhF3sYz0pXM1I+X88kg17Zq
	 /vJmgnjq2KjfTkj05LoajYnRACUgkp2HzRpYWGodOZ76hl/nY/RUjuWS+650uetwfA
	 fO1IavCxKatW94Ombh1LWyTM/LQ1OGrDMY2A5gMmfAbjQ0I/ViWInkZjVqUfNza6Oc
	 X0p5ljan4VAAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E86C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419834278.22196.14674849372913816130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef47c35ee1c67b900c96322ede3a726f8ea8ff0b9765d603706156519df8ee90
Date: Sat, 27 Apr 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714198342
