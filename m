Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371774949F9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780649674; cv=none; b=WhE3WXXGdDBW1d1beVq9IZ+o/w2XuhHsA8y+H9VVc0DX+VIiYTE/YDE2REODsFe0XRfCo1x2ldaD2HxZuLbNUJUz9huIAT3nWBWD1v5/q5nPfTnyHJBsFNz5UZMfAHz5z4XeafK7WhhBQ4wcUeU+vpr9GC8Be6cbh5HAKKftAJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780649674; c=relaxed/simple;
	bh=dEnH7nFkatQoN+xoXgy7ICETCzsl8sDBXK9pRVXg4IU=;
	h=To:Subject:From:Message-Id:Date; b=grBIK1VH1YNbFoZk9XrICll9MzfbkR5R9PR6E1bkUnMNcqNwihjO8cPtFV9KK9ZWjDH8jpZOD5ZFV67vnsycdED+6BneXoNgidi5U48rInOn1BBmo8MTRUTpdDAc9PNAxqABISpZcBdPn59It/LHDZ+zXIW/NT+QSPIxTOOjJGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQCLdnpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQCLdnpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83C7C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780649673;
	bh=dEnH7nFkatQoN+xoXgy7ICETCzsl8sDBXK9pRVXg4IU=;
	h=To:Subject:From:Date:From;
	b=FQCLdnpRMAJWeY/5OWlM8MyDwqh07BFrbdvPsTjpJ4zGV3iYGnmJTUPoM7UzVXVK9
	 CMalkcL+ZTr/xz9FJpM/feGVNw383UsCaXVhAsGTfei8/3HLPJx/GZR60EzavuZEPS
	 uqngylC4RgCrvHWX0ARunwPzgObTyHPBNbk575ARGqQKS4Wbe33gjs/F6opP6a4Tso
	 Pktf8hg+ykTGve7rdLH19Wml8gigjH2CzY13XoWtb3QpFtxUCj0Vez+T9+KbK/ASov
	 phF5m7D6tmVZLnC8NLXSzPesOSz2q9h+JYOBvUoak3oARWb9J8TyCzBGlVpQLNpwwJ
	 VGmXIPJeTedSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0A4CD6E6B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064967369.3300.4156570393992002057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6f51d7f96ad49873004647c7d9877a2e38526b87b74573459b7fb832e8dcb3
Date: Fri, 05 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780649673
