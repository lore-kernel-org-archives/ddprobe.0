Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720B363C77
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785957034; cv=none; b=GNxPSL59OSdGyB9AwuFspnjinuLToKNLIXDg9olrDK5oGLX+b+fhqjHYHB47Ta9RqtcRErCj8QKwCUx5YNUuCYtoWN1hoxYX2IoPnAwFjxXXXpiTE73OhXGu26fgbs8nT64Ix8F1e7D10ZCB5fe2WCT/EH4kEd/XlqTlp02QDLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785957034; c=relaxed/simple;
	bh=fRGILcETbTO3eOdbelYSM5srETSwSC05l81xz312f4M=;
	h=To:Subject:From:Message-Id:Date; b=cgF1e5euIYmELP8ehRlDRtsF40JEHRtqTJtz+HOKoPEs7gNOaK8Vg7twsJrDqN/kmHdu0kBhUHr3mAte6BsPMCK61RJKhw8k944RTi/nc1EqocWapZeaNa/b/MjvlGlDZ2CIZvTPVZP9ZPTN3X795ZoN2pfpb/HU58YPjn7x6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFFwL/Ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFFwL/Ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A14C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785957033;
	bh=fRGILcETbTO3eOdbelYSM5srETSwSC05l81xz312f4M=;
	h=To:Subject:From:Date:From;
	b=ZFFwL/OtaP1cUlxSlBP+OqTF18bPryj07ud/FbvvRsvBRH2GjHN7YpA5ZEQZXpuF5
	 RF/qAQxgfwSgPxd9Eyi/qQz4xra2fbVAVk61BWOlWH8VeZFp5rDAQQu5O04MnnGJG5
	 8p8aprsDw4F01IRumluM3Fke5fXFaIydz29t+l08W74X1XZijqLN08ATdVbSIETMd7
	 VSehNu2K6NJGJns3TDvFrGiV1pA297GblULPuKAdfejXsi+UW09AT9RhlmdFJRMds6
	 RUoq72lNnLh56WG8avwM9PphDL2xe/qyVs2Eebs1WsphmzeLuBBbt6vOT1orZgHors
	 k3ugH13wRjH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD6DC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595703369.18332.2143494512017924977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079a4c34a547258d3768be730c541b7711546d6e0be97f048deb63a8fdf0dc28
Date: Wed, 05 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785957033
