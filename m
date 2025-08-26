Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D472D2496
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756250394; cv=none; b=To7f+roSw0DtFrsDvrt+U4o8UUV/ed4R94Abmp6P4PCmbmWI/pgNh3+4LWdsH8SjR1eHVfQLE4KZbKJZf7C/Ak8nwiJX2ls4Z05QY+KoLU/rxeeacTKlUBX1OW0ERhySdE43bU7EfaFbExLWakQk1j/sES5/tPtfS/EYuXz7PUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756250394; c=relaxed/simple;
	bh=HdKw/LYJsC10cB24327ENSQGOmz2MwjqyFkj9nleBls=;
	h=To:Subject:From:Message-Id:Date; b=GHme8ocKE4on138B9ep9Ru+gLRellR4+hPzSo+vf4Ctb586yS8kTXk3/yJyeMl3RdeGayFIDgWN5N9t/wIQqDAejODnONDLjmYaYsqpOfW2HOQU2lcdmEXG3wsvpMu2mEUgUyRNoiota3mkOcB14f4kcwHVRK7fmbmpuL6Mrswo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F92FGEK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F92FGEK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756250393;
	bh=HdKw/LYJsC10cB24327ENSQGOmz2MwjqyFkj9nleBls=;
	h=To:Subject:From:Date:From;
	b=F92FGEK+SfSrLcp6EaqBXMWnjmWT4nXWR6Q45r3HTTx3luQPd8nouFrf6PQbwahLS
	 A1sic8pIc0HeV7R3QSq/Fzow79CyL1I0GsYczUVqCBENrOtfvvVRROc0KZ7jyuuV+R
	 a0bo85WXAHTiieZFEV7RFHBHfJ86F6fjnhCr46gX/JsHSBqEcvCo7yfwqk04SHgGvi
	 mlish9QlWIxU1Rivmf5mbjYO0c5j2OJsWVySCCuNClyTR1EEl6TOLZFXgHyfKBABof
	 6yBRNHi3g99zJwLj/jLzaDVSYUREEDnn//uMv8rucyy+KUMJzTiJ7WHut/4WNb/rkV
	 oAJhNV/y+CFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F261CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625039357.28719.18066856482241157752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cd0709a631859a1cc23a2feb54cc481c70865130661f468241c9023048366f
Date: Tue, 26 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756250393
