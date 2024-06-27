Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7241991BB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719526463; cv=none; b=E7yC2tlKwrJUP5uB4OchzmhtvZb/1Uc7J3Wc/JRRtzjY7+yLCzSGiTUkf47wvk7kScUOari6GtwDpMFqT5sZyobpAYyQrmH2zHRV2N1K5AUVP/Tomc8t6vVPeIcSJC245iaroWE4/DzSGbx2QtWh0jT7qQpMsyQb/YPKUJSuHH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719526463; c=relaxed/simple;
	bh=hsVXUuU/VJ+7vdlZrMH955aaqE14+LWWWC2Oy6C7MDQ=;
	h=To:Subject:From:Message-Id:Date; b=e1XiYypQMzxqnlHQB+gXr6pEcisL5Q7CMcMVIQpainD/wKjp/yPbNF3XIDKPK3JhkTkgEtrIynL+yxmpU9qtMMb6U/VUpuNw6Uct7BWCor9/8vi6Ui+74gHYis7/vOMWSKKFbSOPLY5L1L6dE5nB8J2GXkKda5L7c5IwZA+tUjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co/kWKQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co/kWKQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D934BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719526462;
	bh=hsVXUuU/VJ+7vdlZrMH955aaqE14+LWWWC2Oy6C7MDQ=;
	h=To:Subject:From:Date:From;
	b=Co/kWKQhMnyrko9w+NnMvbrWwx5AJyj929HtzH2TMva2CVh2kIR2/OK3cumg9qQaD
	 LMu/fcuCkDbH/BhNGDsN19EjoCt0bSilIGrxJvyQp1HN4V5dMliQf9k34ZprsjI3gC
	 RwMXkTPtaBAp47MmVIwyz542jWcjSay6Fk10MN0Y2aBegPU+06LJJ0Upxqly2q4czP
	 G8xivLorkh2N189YuuhIGUqU15d3FB5KxpFw969ffJOe6FqCHnFoux1Z+rZCee1z2E
	 egeJEqnn3KFBfnoV2BZ5hJtcPt1/rVFiU+TWYOhDb1YWdOM9e/N/k2KJ9ye6abulBM
	 J4fTVTDUxCR9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C543CC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952646279.14071.9392850119687246400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47ce3ca880a5abfa1f100b0cadc6089b4dcda3aa7b1afd14a3fe987760767fd
Date: Thu, 27 Jun 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719526462
