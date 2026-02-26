Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B376134CF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772066694; cv=none; b=QO2J9twKVOwAz08PR4Irgpyx6zRNrx0yju7CqBjs92efRzWUyC0NaWdHCWy020kD5zvCnLydLm25NIjyX5Zgr2qwoSPzU62c9eiUSH0aGruInF7iqEaqUXdXdESZj9tpGIZSbuKtPHUy4MDwqSFS3sYiCjiQhyJilyRJ6Htl9SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772066694; c=relaxed/simple;
	bh=yx2R5WKZ2FNRiDmnxzfM/70eFvzdiFJNtTkBvoKCj9g=;
	h=To:Subject:From:Message-Id:Date; b=ntNXlbwzPmGgcYMX43RQ1e4qvnNcT2XRNK6qW3Vorrn6Eo6v/1JbMIM8v2ZdxZjx1a+aUI9dNBkkdgWI/rX0DQ7u6lWJx7o0eOlMB1SEL5h/k0cOoo9IzVGsy060PWF40vqIrDtV6ETTM6lLkV6hiRe87MJ31UX8vZ+rJpgaC2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Os2Z5Vae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Os2Z5Vae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A5FC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772066693;
	bh=yx2R5WKZ2FNRiDmnxzfM/70eFvzdiFJNtTkBvoKCj9g=;
	h=To:Subject:From:Date:From;
	b=Os2Z5VaeLpyDPEyhV+Mcup7EhsPKaihXqrSl+7UJRRRolBAeZjKTqYTqKNxMFc76W
	 S9Mxi+RWdzYOpf7D8uSWDf4DdCJeFPg8EmLQWSf0+BCqk+Bppt4zFF8S3UumQXSov+
	 6o5OonL0CaxYjcTCy8FCvxbwWTs0bnK9HU/U5gxQ/5VHQLevpOquqNiD7G+XnrnbYA
	 hOHsoKCdcn0U7vis0UnH3jsjQ3nQYAC/3tdSRO1bHzn6dvIGmXn4mwaIpbM5HbDCu/
	 tTuNBtFWVXq0C4LEOFGuluB4i1RZAD/U3J1qAlVqT17gVwhcNtRTJ7MMg0XOTdgCel
	 rDZCo2gvZe/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDADFD45F1
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206669362.14956.2138810650125358859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fa711411fe6cbb2d2f81dc757bc1c38c0433b4af0186a5f9e631433441af19
Date: Thu, 26 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772066693
