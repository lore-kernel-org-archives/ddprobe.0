Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD34145A18
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738310154; cv=none; b=EVA29KDIGqLKiHAwrhCaULJYSLpeCjkg4pilM5ct6uaBlZ9vCNgD+AlTNhyoHs0/1trMdF+64GgpniW/ROxRGFzEVd3F2ZaEcE4PHmu51rUQHUr+t7TDTWRbNiTjrv7v7dfh+u2j44sH3GalrLuJyIY+dQ5fic0FNleU9VZk91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738310154; c=relaxed/simple;
	bh=VrDsBGRRxTr/U2JCeociRQto1OKNozIIzLBfVVizMiw=;
	h=To:Subject:From:Message-Id:Date; b=qnjV+p2r86VUNdJ3uRU628RxU6X4VwJxmUSf1nF0pxszgDItj/p4cqOKdaQ8kMR+ZFTjRwespiQT9kc99TtYmjPoAbCAbE1SVQ84PTGyAeJ02Z3h4GqWNzUpGFxlPul/DttkQE2Bzw5dAiIEyNMT76tJg9gfeDWFXMihvYmws64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCDNs3eY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCDNs3eY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BCEC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738310153;
	bh=VrDsBGRRxTr/U2JCeociRQto1OKNozIIzLBfVVizMiw=;
	h=To:Subject:From:Date:From;
	b=gCDNs3eYin3e5nsdy72nm9qkLo6C8agT0ipX1+HTjdT7rS1fe39+OsM333F1RDB5M
	 ZXCMUo+yPjmKDg6TkfW7IXf9wCRyPTruja5KoLrpKzqCAHG96GtqMn9UnD+UfWow7c
	 cAf6csS+Cxz1rXBfKvWsKsDmt3VOyjG87scT1cSPGO2jAZeViHMcTkIM/BEqYDJAkp
	 fFZCX24zixP8uF3TmeDkykeOv4Uy7NIAcD6N8xWC+9Qr9+FNd7pJZqTS8PlVHw98XB
	 29KwjnpZ3Jd4Noi44VZRcp2eRUWzkfTbfjeB22x185+5iEnmXkEuDjCVcqVTGhLTN2
	 4bz4e/wvpZVow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F235C0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831015364.4138.375350270799792289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89ba6f6be6ad32365879ad45f3af82a23495b34798fd72a204f9185b532cf60
Date: Fri, 31 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738310153
