Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A73B2FF6
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787046034; cv=none; b=V7fPmvZg0QOoxgQFwXaFF0kDadLsNBI24NadA2sTVz/lEKouo280BDQbjEOeL0AayqyLSeJzPtmOVvSnuvsJxEBTXizeb9qR21gh66VdRLho5F0y//6Xxhwl5aXHSOsrdG9ZwciDZEP7HFftOz4bwWN/PZqaJcNATJQpoItJDvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787046034; c=relaxed/simple;
	bh=omczeFTV/yCAkiBeMCkBOAwqqoLHXyMAkyoHCczm4CA=;
	h=To:Subject:From:Message-Id:Date; b=G1bb2s48+Bk1HrOJe2wYTEHCbb2lhGJyzkKGEED9R45vwzcgXktteTb7BRzmtdB2N61S1oX71Mwi/b25n8r9p2bDdfLl0ry0B/uGwzjIHgbcNkJsHei96RdxY5UOswldYKRFX1HIr7tT8UW8glap28Az5pJbAMmXnS/YQTw1+Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuIewyuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuIewyuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2C7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787046033;
	bh=omczeFTV/yCAkiBeMCkBOAwqqoLHXyMAkyoHCczm4CA=;
	h=To:Subject:From:Date:From;
	b=OuIewyuqLKQMsS3/uFxQtX4iW8YH+vBNp9i84aDOSEVRlHQTfJAa+V68uUvHCXel2
	 fJHd7hhqbqREcKkbHii8CsF3529qamPeI59A6V3IW3bviWLWZdZ03PafQfc0Kxelon
	 /WP1GzcW/L1ph9MtT68Tc5LPKaz2EanjyRCN88I2fWDsT7+EPPat1v2yLT71pMXN25
	 Wi1uMSmji1F4tupEVHfVh5WYXYvNZj+VEFtc+UX+cVMQxz2T7z8HAy1X/BzcErrsPr
	 QbBgkcwTKgihRC99+aOBDQsOtFvQVb6Q/BvWDrRyKeD5Hstl0mO6XgbJ9suo7IYgIL
	 UWlYyPe294OTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9849C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704603368.11469.17865589307663073089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bb6d0e197726dbd1871e4a73d527ac6f395f431f25b37a8d8c8f46125eae2d
Date: Tue, 18 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787046033
