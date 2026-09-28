Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1036F54705E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790563234; cv=none; b=GmfesSMPPxc+o4nSozFgZBIhoVH4Z7bacr5wpN1qzHnB1Z996jDaVyaDtp/S1lQLtGrBTdBS5f4WnAf1rbpWU59eCfH7XUiGXKKg12adoGTvCDlyb+FnDm3gjs9M3KSOjlhZweTYUe8ybHk6NO19KylAfMG3AU2LlpW+l5cYy60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790563234; c=relaxed/simple;
	bh=8dGPZou4jKfY8Dy39UiqDOCFfajEZbTG+HF0vZrPKG4=;
	h=To:Subject:From:Message-Id:Date; b=Ui36GmPZzjeBLC7iIaJ7CeAErgww2uIjOfnJEn5EPKlvxFetqZr250CgCtaOjTzRR0f+c79UyyfP82KhPlJK/yq5o1fPk0o78ZGRG+Sj/llOhrNqt8VdAdhY2tvqL4uxf9+5LNh0fyN/xJcIX4XSLsUgRnJsAmLrUP84FfFiDcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnYkcW7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnYkcW7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B66C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790563233;
	bh=8dGPZou4jKfY8Dy39UiqDOCFfajEZbTG+HF0vZrPKG4=;
	h=To:Subject:From:Date:From;
	b=EnYkcW7n2XubmsU7E0AlM7F78wJbTulSc88v2SwU8ApaYs1BW7UxWS8kd/9WaUGG+
	 SFcY+sRrwWWKAzzeRlm01ME+htc9sS8on84od8ikqO2Z3W9bbTCh5WA7dxwMAPioKc
	 yP5QgwOXOPfd5MBufJTY7X9QfrjhaWsiBIuU7jsXjKYxGfUizOuV0gXTqEG5ufWQ81
	 u1/Ry/IXAzgiZmRwmQvNM+e+5Esnn9Uf7R+VAC1WjhMGTJ5ULxaroxkaoDR1p6Lpjb
	 I3dC1dsTD91aHTHJWqS+96kIFHFo7YEQzpPuxjQ8/DEIbS8glVUY4IAxjmLUwi0nH/
	 TqkTyZpPFkp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22BEC9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056323371.20452.1631764481236775049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43eabe77b667bb76a089e7e6ae1311cb07eb94098abd0437dbbf5535d41cb7ae
Date: Mon, 28 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790563233
