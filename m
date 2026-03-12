Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B30B40DFB9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773278694; cv=none; b=qjdOOI/FihU6uarDtbn0Uj4mchkDQh01rZXeX2Z87WAck+jLXLT9EB3ZwIGeve0aPSKQQp8tVwzoarNhpSE80k7FTOFqFSpGCj8jNxB/L4IwCXNr/oqaLIhSogqXs5C+6J7XePjCZlVAon3bt21d+m4ATiTDWndCCxZEWFYn238=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773278694; c=relaxed/simple;
	bh=Jg4z5gNt0+vZgW9wQmZexUocMjq+S2qWGszN8KttE5E=;
	h=To:Subject:From:Message-Id:Date; b=GuW4NhmLP45cIMepzwrxU5BaW9NxiGdgbeW4kvZtLwGGDg+8kur40KlKrTSeOvRZyO3FQfjPWW+CJHZY6BPLZSZYsZAvfxyPHbay+G2iiVujmBkvfwwG4HG0ZzAbuHb43JBknYhUVfz8yhOx/q+D7Hg1umy0iPKpwjc5wbnspso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoQon4vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoQon4vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773278693;
	bh=Jg4z5gNt0+vZgW9wQmZexUocMjq+S2qWGszN8KttE5E=;
	h=To:Subject:From:Date:From;
	b=NoQon4vdHLomCBMmt8sCqkPDesD3P6wZ53ibnI2yBF+8aQF+4RcfOScGbm73yFxqd
	 fsIe1YDEmb0glZ+Kz2hT3VeM5K68chl9szi2OpPtFcZDy9UErRKwx0RjpzeGwUXIbu
	 fgcLzXfxXHmIwZ9UcvWO1+gXCnLW4YOexeGWOkS2uloP67OCjxmC4Oz0WVU9GZKPzI
	 x42BAb02MhyFWLQWGjfVJcdDWxNxaKsqvKnAT8cIdl0qYhqRZc5r1TuRRhMytY6Tox
	 ybnGDRpotmP/pFvPOG0Js7UKkv79EXndspEEOQN44P31PzxB+by0WHUCmKCZsAP4gv
	 rlObcdAvCfRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FC103E2FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327869358.29529.3384539978541465894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9e1c97aa49fcce79fe4072da103981dab019b1ed8a7c6fd45e55aa628123c4
Date: Thu, 12 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773278693
