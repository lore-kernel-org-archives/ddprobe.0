Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D653D0D1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788954634; cv=none; b=tmSxxXKL0qNYi4tR92R0dmmxQwtBECg+5pZ4ydjTEy1iArWtx2LATgjZv3bNf5+FxhT9Z6weOrYLDwbAj+AY/pFnEdcxq5qPuRffVKV20QlDFkPv2yNjuAoLkGq0bmC+NAST9de17D6p/Vyz02RGfgZQpqeeQBRAo93KTmPyBJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788954634; c=relaxed/simple;
	bh=ohkiEKSKVtqgAo8//cj78L7jkF86d12FrqWWDiCn0Rs=;
	h=To:Subject:From:Message-Id:Date; b=JxiElONhIH8hKS2xNFFUGD77ust8KsypUOWpxokhoH9EKkIRoOEONHw4ktyLaX0hhgKIEkwlVfS2arknWKnmyRQ4zaM3UleYyfyJYeUWSvl3+F38YtfhgsSja07VmLkBrx8xWY3EDIoIWXP4ylP4Z2sG+Hh3+Sqd4LZoG/FvIPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JC8A52IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JC8A52IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE041C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788954633;
	bh=ohkiEKSKVtqgAo8//cj78L7jkF86d12FrqWWDiCn0Rs=;
	h=To:Subject:From:Date:From;
	b=JC8A52IHHhj8xp7lKjAu5zCvdphN96wpsqhQwq6BInAAMqc0/CaFManUSQjX4WSyq
	 DpuJwb+aUThaFClYz18XAH4aDTeHyMtpwpHMFBP5dDqGCeB8tx70No23VnW7T8X+BA
	 QdMOZAhRUdzGOnRMQtFbYYN1gpILdoyG52v4vzQWgVSY8OvksWiBSAmC6rxuH7dT0t
	 CIHAmf4z9iUpcF9xvcHNC5hNmDhehwIzAu/Ds344SgXIb3V0RvjsQAYKmFFC0kKZHs
	 qZ5szHtniYbQY05hJFLLveiD+wFoeqCZel3HegafRwgtyFyk2wtIkMvaVAe2iwlMOu
	 W2rrvY9/6f8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA422C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895463368.31300.8422481064432352599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a8006f9cee71d9fc82e94e11cf38e2e033e8d7522cfc8c1b5c56e9974fd5bd
Date: Wed, 09 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788954633
