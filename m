Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11724EC4
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741042734; cv=none; b=iqt7Nr/X7Qiq+xq0ejKTHQwZunKAUxpG7Sfs7o1moyHPK1S5heCmZnzOO/jMYE6CS6IegekfoZdqNGrUnmnVNpoDzKUtQagmRzmEITJPjn33JmC2Lf/SUM4OLQYcG4d5OCWxRqeRHMcNUTUcvX+siHLum5OpB00liudQP3isue4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741042734; c=relaxed/simple;
	bh=vVuhF19XBsndk7ljMdRJrDpvJ8eWWwAfAEljPKAp06A=;
	h=To:Subject:From:Message-Id:Date; b=VIUDoU+vKpc/7kFBfuricgbF4NkHkcUE1AuqomOoeylmM3z3U5p3wA/wyMKqhl50Wr4m3nDs6iNWlhvprWk52tE5qRhJuxrZ605owGuePy3hMaRt1Qk09X6KnvnePAnzR9KaFkYu24M/xHJRcNqutVX/Ldl6j+vcUjeaCKyX8sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMdmEbK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMdmEbK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5971C4CEE8
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741042733;
	bh=vVuhF19XBsndk7ljMdRJrDpvJ8eWWwAfAEljPKAp06A=;
	h=To:Subject:From:Date:From;
	b=dMdmEbK3IlBwC3+1ViLkpegZjrgVYuIymRhBLalDSU8m9HwB/xZEbc8sUMTvBLR6t
	 Cn1vWoUFtBjxDvTdDc83cVCb54GxyCkYIVxmllPSRmpV5XHQnNSy4qO1XJ/wDkGt/n
	 yCnt5NKImeFcDP5EWd+iTeJrkVMaefZcen449VyoXD8jcAuD+PDHJJwzdLpb7ttHwb
	 cMaaYjdYavIZV9rFeW0ze4bEK/PaJC/uxrGuqj2WLIlTF9t8sNxXlwPjEn3rNFKgOy
	 AixinuMAojk8x7CHehRpDuI+6SK6cLz3bzFt9P5vFR9+wts+bsaRvW2HeSXjloJh59
	 TjGnEWm9fkaCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB93C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104273368.21386.13103924296227099292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbe70a35e73d6414d81bb19a503a86540a46bb72961265ea62fe4652662ac53
Date: Mon, 03 Mar 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741042733
