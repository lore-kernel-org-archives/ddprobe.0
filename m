Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3D1403156
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785759634; cv=none; b=pDd92FzDBGSfrBJ9cHLOYZuu5rnrqURO3ee8pdw2F7hzxN8Ym47KXZrMoAGBLVcTGBzXhgTmZAM2QasIY1DjAWDm+x7CWKpDZlQOJbQ2D7M/vJGIyFMPBk04c+yt3wQlmACpImbunWIrcgLpZF8u0tWll7nySZZ8ffis9n/8L9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785759634; c=relaxed/simple;
	bh=TOgsR0Lhsgi1QAF4n9B1Ykf6zGbKSMgtbOP+CsU5jv8=;
	h=To:Subject:From:Message-Id:Date; b=GX8+aa3fTNzTjt2WhpYiRCIe0/bC239aoFNS4I/V8KFOja2e1oCPl0C+ABUcg+gtZy2jIK2zr2+D2/2o3CrdrsAvRQE3TREoY2RW/BGh8jG03oBs7Pyyh8GS7k1I4ercMStiemWixmyqRir+Z1jaw5gFaPiNy0Voe1DtZKOO7eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUZACk8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUZACk8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEFEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785759633;
	bh=TOgsR0Lhsgi1QAF4n9B1Ykf6zGbKSMgtbOP+CsU5jv8=;
	h=To:Subject:From:Date:From;
	b=oUZACk8M5+dCJru4eZwr2UlgggYSMsPx1q5R+/UN34lMIwkgv1cWKxx6m2qPkCtEc
	 mj0Dse2pk3A852PJq0G1NA6UAc7oSbh9dt9iHctxalJOSms5KZAOp3gWJU/pW1NUTF
	 cuAx5I+Doq/VbwvDwjKGSHkfFW6y/+miegRmr+gn8To+sXCzLqp1FrQOGbI6fEsVtn
	 GMTO/QqjmqKVrpRd3OFrJb1baotwwxqAjvdhJ6gm//dm63KL4SyrXc3k12v9OIqYnj
	 M0XQXOCWhjdHJHEDe4Y/xKz0CGUiT02GILARPeJvAohcmqqN9UQuIDprcK+ijDYWom
	 0Y3fx9kIuCjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA909C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575963369.31334.17318841815464669408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccffcc6153b58e89b6917c0e6978d883e2fb53878dbc1efacb96cbfa4e1de7cc
Date: Mon, 03 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785759633
