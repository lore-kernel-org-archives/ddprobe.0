Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DD31F92E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924794; cv=none; b=tkgX9ra3bacpOeQeO4KGKDRhIPt29tm2P5vb2tv4N/W6SGnpOZk3oeCiVo2HlusDX1Pwsy5GfwLsu+ccgx4w5cGl8rJAXqKOzGN2zFhNJ+XazIWd0iwAr2j5/dYXkaev2QqScokcRBHQ6pMz11ZTbegjsxwWcYSUlAMMhqg+syc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924794; c=relaxed/simple;
	bh=pcVTmr2ZjBe2HDFcmT64wJ8dbCTen378Z3F/XgSzq24=;
	h=To:Subject:From:Message-Id:Date; b=h/KSPlO3pEGTG4or0riy7F7I9dEL2Yq1AsKt27TJ9I6HS2XYJXFg78PKNy+I789M3FfenAG+BMaVFXN5/binurzNCJb4IOJT2YpQU0Tc5YOyU+Zxs8ogjyddNCxg4JMRXC+vewi2B1JcZtXg70akKlLqLUP8UMsfi4K8It8QqUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCUYSAkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCUYSAkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F354C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759924793;
	bh=pcVTmr2ZjBe2HDFcmT64wJ8dbCTen378Z3F/XgSzq24=;
	h=To:Subject:From:Date:From;
	b=lCUYSAkNngQTyv3VP09PHZnw5Xex6p53N6OYjoE51G1Tr1JyHfyrFXK9rea2uDBFw
	 9bGZFPD97cT98mayrd7A78/KIz0LNyaULnrwhczBLpSAaiWlHpJMZjLV2Nt/fu+vdj
	 QrCu0jhp9/chp7RsIW4HBTeUZX5Dd5jhN12F9YtL3/MyZVNfmiY22wKaTvWx33Dlr7
	 N7Zl3H6CRMOOiyR0SYNxcZHgcg36vUGavsJzIUTxzCHx/obsQXzWBvpqKIuGUWnYdX
	 q84+1x/KfNlC6lYY1tzJdhK3btpF6XhunezwObJuHaoqX2+WaBZ5vrt8PgV8z0+Rms
	 Hmo2EDlxoRYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F426CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992479357.20917.1502578248141803519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60cfce5bd5817210e245aefa7c797b5b884b47e54006c685cc54694832d8188
Date: Wed, 08 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759924793
