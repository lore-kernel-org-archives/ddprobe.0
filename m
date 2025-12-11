Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8BE23EAA1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765472574; cv=none; b=gNvg8NLMUjTK8lqRRS6iQMmkXYMQNeduCU8sxUXN4NjJQOxPbfGg5bS790mp7gRjN403XUVTSf69uIdxJZH3iSQR1aR75JbIRmY69xP4sdiv7HejqtlwsZDunNnu70I1b5SM6oM1T8i/jJ1/vrPjaarzJXV0n6oSL8Ksn4bcmKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765472574; c=relaxed/simple;
	bh=XLz8zMd5Yk/TNAtyHfqPiOaZErcITjNz+PP1WJIOulI=;
	h=To:Subject:From:Message-Id:Date; b=aipFmnzL/GIruMNZsbNfJ2TN7SZPL44OrFz9nKx0kt+2FnXJk8nKQVQeLLg3xTaXswgW4qWG72dnrBk75NpHJ3f5u4xHfVO802XafIk9Y1ap2ECJZ0TO8C0EC5GoyHElteey2zv9w0vecG16tVhHw1zwCBp5PWELNJZ4dhci7A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxZ+/712; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxZ+/712"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A980FC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765472573;
	bh=XLz8zMd5Yk/TNAtyHfqPiOaZErcITjNz+PP1WJIOulI=;
	h=To:Subject:From:Date:From;
	b=bxZ+/712UqHp+uyN5pQmP2/lx3xlwZhOKSTUcUuryxWReW+EjeQW9Ylctx+nIqOtY
	 OXP4G1jk91LeEmb5Nl1R1k1v++DXqMcPPOADXZhId5EP1fZTBMdjavGsfLJDfbr+wO
	 +Y5XILfABgg2TG9OtcgQoW1HGgzdra8IMz4TOAEV7nM2k3YMcK/mnezUWOpSHxREX/
	 Pr6T6mDVZPsv8vNYfho5bkLBqwTZPvC2Spz8BgRML8nREqtCecMoY5JtBmnzqSK3zP
	 XeCqvutMQiE1lRoieWk6p6TfkxD97kDT5S49HzbnP0kUG+JkoPUnI4Jpa2DXcLYZlv
	 NjjVrTjBjzsFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2DD41D68
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547257360.32405.13432042067396757406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43da79cd5600478fbc349b54a037641a10bea0d1db2f547958d3b0923b8b8554
Date: Thu, 11 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765472573
