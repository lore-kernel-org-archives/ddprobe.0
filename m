Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5BC1758B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 19:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713036563; cv=none; b=N3axMnughV/w1Z22ffv98x/1Fe6rd4EDHvCHE8NT8rL5fUf2oVuHCE2Q7yjRZWdQm41MHwObPwJCU+RswgtXpBy+iePON2AbV48PbtSx0P6ScYoVN0IGBgypyIR7EZV919W8sqk3FBTqsHC+Dfm/c2Vvffap28LvGiBr1MLpB1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713036563; c=relaxed/simple;
	bh=YvHee/ZEyXSxSrtlGO+Ahfzbdt0FGfs0nby53ywcnlU=;
	h=To:Subject:From:Message-Id:Date; b=EIEoump/QeMy74Jqydqpj0yQCxtUqqb0+t+b0ylFcLQu8nicniwm6QNBSVnKlNykxspvHiyh+aI9aPfrEBEyFdiToPeSs5mO8vnwtjeRlWjlXEqsHNNp8lcl/JSKYTi4nbA79GHCLfsR+DAqxYo7zQZhr1NR19CqK83wK4ajuA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6lMdl8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6lMdl8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ECC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 19:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713036562;
	bh=YvHee/ZEyXSxSrtlGO+Ahfzbdt0FGfs0nby53ywcnlU=;
	h=To:Subject:From:Date:From;
	b=O6lMdl8o0bHwVIOmM8UqNl6IopgjOyWQQw7QBMcb8sbLKqmGlbJDH2KweHC/41dWx
	 LOEib1ANsxm5cFp8a/9yrQ8CVQnv2aKGasmNm30UnhXDt+lhf4WMehfAI0AKwrC2jC
	 RYn6KLDIS+Ed3xS3/8fg92QWV2ikwxjdOipiLQ91Hq6s3BxFvlDwJVyk4ZlNTghMU6
	 4vaD5pY4gIPMSyyQlQVyTf3xS1Bb+DqZsrdSHiQjzAT3pzTTBKEcOLOwyrd+mraSPD
	 5ayUExItQzyO/TCFpNzlEkFGUYapQ0WkhNWvxiTAqMWeMkpf54XGkQSP1juTx86TLO
	 ouuuO3s93IGBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC259C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 19:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303656275.17792.14097850952272237720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc96a4927573658071e411af3adecdadfe8a05539c2238366228fad2615246aa
Date: Sat, 13 Apr 2024 19:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713036562
