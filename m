Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1928F5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765695774; cv=none; b=MM/v+h/k5xDW7dykLk9vv/TZZEwtqRDFqwIIbQkqrxnsMMvEOy1FxQW5fDumS/lMvrY7febiMhYQlnFtWnuSOSDSNT9mH29owuP1UF9+LZAehys0h+Wx/4krvNcM4Vo1imcirHr4kLzWTgoNJC5tqc9o/FKdD04WO6vUaaz9QNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765695774; c=relaxed/simple;
	bh=ivS/4e+ML49/Cg21kmXgVzk6F5rthcCr1LXG3tRGuqM=;
	h=To:Subject:From:Message-Id:Date; b=YFUAg3rf/oJNzzz/gF2ahyy8/YlbCfLyEabUOfj/Hdv55ELN9KW0I67CvDJACaWviRoy36OdxeE4Srko1xyzNUwY+usQtnc8t/PIeDQJnCdBZP4Gy9y3UEMVNbqWORiMu9gecjkyhRlkbPSD10EPzKE1O01GVmU5pWiY3TprXZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIRGRj3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIRGRj3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA60EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765695773;
	bh=ivS/4e+ML49/Cg21kmXgVzk6F5rthcCr1LXG3tRGuqM=;
	h=To:Subject:From:Date:From;
	b=mIRGRj3cXfWe23RNYcUG5lKud/FKNVGLkJD7i3EGAqC/NuW/QsXGWZJVXI2pgln8P
	 a6WACfWHXRD+ZuHnzBOw1HPjDabxNftu3cmO0ktIGq3htFe4DEIT4TNyT5n0LAl+P4
	 u8WsZ5hSW0laXAZtLY9I09WfQ4NPP5R5DE+oRIGq3bgZZWkxkIx7alogF1QlEV94S+
	 J+hkVEdFIE2RWWdlXTHxNaBioW1kgn5tjXj3AFOEMu/wJwIDzZaxXyPpRbU8/7MtbN
	 HqZSSrPIhB7tqREmHYH7IRvINTkfc7Tti0S/35+Z2FamV89Jfb17UkkcoWtKpa6ZOx
	 0vRx6OxgNBrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96561CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569577358.16152.10662004418425578043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9940f3838e7f4e9fcbdbd20faec89f11455eb22a4ed556201e4a1503d8461d
Date: Sun, 14 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765695773
