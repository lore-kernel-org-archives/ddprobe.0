Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FE515E5BB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785113434; cv=none; b=QMnhqHTtjyAIX1gdD3fBL7WTeqkqRnowaMn4QMVkJs0Kla2K9+sz+wRJAMVrqxkcm6zsrJNdR8RzXTHSVfBIryEHH+2gw4t9l+HEbPNyLJCbYlEoI77iCo1q08nxXhPuYmsdDf+Oc0Rk//RFzhz7jdeLSF9kx985V3nb7NYwduI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785113434; c=relaxed/simple;
	bh=YFGSV46HmbuDAF8ZmC3ypR8lMhXBJ77j3U3nhPNj2hM=;
	h=To:Subject:From:Message-Id:Date; b=lnCljXiOeYpHE+D3lBhe5JEvqs4wc8g/C6Ov0drhPHcVtoiApoNdc4vh1OWS3Om5VSUsC6wyAYMdsehIFc06Ohxs6N53sk1CMdB9774egL13FxKKfI5jE+d3C8IBIu2nNl0MZ2q8Us/YN/OecGqj3ZvPVscs9d1/HcZmsfJijN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8AIvcaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8AIvcaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785113433;
	bh=YFGSV46HmbuDAF8ZmC3ypR8lMhXBJ77j3U3nhPNj2hM=;
	h=To:Subject:From:Date:From;
	b=h8AIvcaEb2G42BirekyOLVdstU/uYCdccdyzpofycWbodup2iT8a1QbAX+ykSieDc
	 bIH5qlt0M+GgZak1MRg04e338Q6z8vSVbM7MFg/uz/sj89LlDK61djCWsndSBmMTfr
	 /BA8gmlkVcrUMto1zxCCQkv5AHXz8mtu7R1AfROSbqzl/K08N1TrIr43Dv0ujym8Br
	 Vl2deVoWLbnjfn7R45nwSlen97WDKri7T2+GEen+QlpdGfRLX0K5EXCyNm7tb9MEIQ
	 idKHp4nnD/WH1x4MUxDkjHMQCOQFXrKzPVr3wpFb3gGzS+uVZ2caXdgKtrK+v2UgB9
	 JRA3Db0ZsFDzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE60C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511343368.19762.8059465817677517707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e4006e68c4de0f4d7e6116988b9ebee3c294feaf50643407bf43269e4ff01c
Date: Mon, 27 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785113433
