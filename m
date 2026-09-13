Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D1330FF08
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789327834; cv=none; b=mdljbsydCxKZWmbn7/e80gIopIJdJ/efummCGDTZeNCnw5TgHjhwcaaCa1Xd1aLUuVilKwAhniCyChFPq5jrQX8VxWicBRxDuCM6sUAE1pbZYLHzJ2bIRq/4Zw5f2ZBQQEKPIJ7etn6SXc2ARlJea68FPjxVNntBBeUy9O7baHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789327834; c=relaxed/simple;
	bh=oALdZdvYjzryZc46cIABLcpGjlOGXeNFrB01jz4X4mE=;
	h=To:Subject:From:Message-Id:Date; b=eriY+HDgw/DKejgcMpYC03QdsoPyI+9kVGBZk5GRKYninJErrP/odr22HtcgB+saD3/NrYCGOAQ5w5LFE/0m32HC29ng8QQuxGZOEog8cpSAfaqV17Avpz16k1FphWco7VnGdJvPTboalexgeGWqepbDjiKcs8H7dJ9mEyS8IIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+UNhh8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+UNhh8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF60AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789327833;
	bh=oALdZdvYjzryZc46cIABLcpGjlOGXeNFrB01jz4X4mE=;
	h=To:Subject:From:Date:From;
	b=q+UNhh8q3Q2ipZcIQvVIb/GhSVcmTFnkQfkSU0oSclysQcM/pBcXZS7nds/GQo0cN
	 dWpU1WdQWNzhxgWN0uSujv/yRNtQH1yGXj5IETvoznLeCqB1QFlSNl61OxIi69ord/
	 vo/soBVD/ULFA0lWRvJz0QGBk7PlcbBu7TkKyIuEbsWpViLd7TrVDZ7ChLAabOpeEt
	 ZBo/n56d72kD65ulOKlQnWeHgPZHcScfTNfwYR9QbsUlQOwRGDWvdi9/Q4OqYYRAU7
	 jy/xAzICnibHuOLCj/gxbllQpLEjgGF3/T5LtR3iFZNlZf/ChiGSi9Mani9HhMHDWi
	 GgO1t+haNimDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B550CC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932783368.11199.6840763071371010339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7068f458ff6c09a0e4aa2a5b81fb6a05dd721ede8843a4df3a6e980f46b86d41
Date: Sun, 13 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789327833
