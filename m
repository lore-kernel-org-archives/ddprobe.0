Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB0724679C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788814234; cv=none; b=OjyYzHlRqPPQZjQEHwcMkalYBwWZOExsvi60hcvKO+NGRd/xsDakxcWsSYjsm3tQr+cER3LofO5WzLPtQaJaoKaZIhDSbGfsYcFRL1o01Prr3Nuw0Oh3DICLRIc79nNiWhZvPEqZLw2eZd16XFnKMdRBC3pSTi9/YHYsrKMaTp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788814234; c=relaxed/simple;
	bh=pUZdxzfY9AltgFa+Y3tQTbrCaJO4uYo40K2edmfW9AY=;
	h=To:Subject:From:Message-Id:Date; b=A6sKmpgqX5xhaXcs3fXg9+tkGqX4FnZiSxs6b8uulH3CzcfNyF5lPIfGL+Ua+NDbogDYS+JcABczXybe7TLtpQLn5UYdz4Y1wsTKeZcy46etUfZhf5qGDQw3JWddjHuN1SiolIMCHyQ3oDSu6udXeKtdHFEH8UcKGsB8mKRdQxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2oQ0RcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2oQ0RcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1939C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788814233;
	bh=pUZdxzfY9AltgFa+Y3tQTbrCaJO4uYo40K2edmfW9AY=;
	h=To:Subject:From:Date:From;
	b=F2oQ0RcQVW5pGDeqFFOIprbNVreN+52v2ykZbXtpV/HIx6OZDJvqVB7Butmxla/oe
	 DKYpVo3zSCZufKm3BczA9PsEmdBKHb+hvJA/EsEaV4ImeuQqtpvBoRzDX31fGolUCS
	 70/8L8+AbG3wJbSKj88jB0lP2yGOZdZRhkNp0dNx5R4pWSlwSmc6O3yk9kbZxNE1dx
	 wKIQChvWQKre9TR/Qw9wEac47pwPL3riqkrtLqXJLJZPK3fbBlW301p49nRBXfE3ld
	 Zx4h7eCg8ICnZ+mrIjOfoe9Bbr3334zrtrmb1wJ7XYPjda0IH4SVwfurW5hTBJPQDY
	 wjLdf+8cMf7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE908C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881423370.8603.15723038754500987423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a24921ec1997fdfb7a5b6e7ec012facf58fb1a4fec911960fec1b60c1fd0412
Date: Mon, 07 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788814233
