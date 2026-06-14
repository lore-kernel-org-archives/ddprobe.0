Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4DC1922FD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781409394; cv=none; b=c48Zr0X7Jn/889MGEwlLhkag4UR0ZZfFQGi2vzApFnzrgTicIsuCJuOW7AY4t2FphRbtJ6P5d4Ml5T8/70xjNnVtYTRMHwUZ/TZAJlTY9G2/MFlfkUIMuU313c5Ba5Q3MCS/+P0EdltfwP0jner2FzeMTwMjU9aiS616IXTJUw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781409394; c=relaxed/simple;
	bh=dZT7KFfJ4IxtOEh1vov0dmt1iC3v1itMIkUzo+Ap/qI=;
	h=To:Subject:From:Message-Id:Date; b=bXQspnBWcHefXBYf3VxwgDTPNnAj5ivfnHw1rGbB2POf6e2HomAlSB49QSXo9vvy3UGB+u9IxkTJlR7d/jGjfuubLrujoRxchIUN0xAAvWuKR4b2sPwZwmTkqbIr2UA2dSLm6KhpJg3O2o4KJ16SNf0VdxWM4DmHuCOncgReFUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZFhQngk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZFhQngk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4A7C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781409393;
	bh=dZT7KFfJ4IxtOEh1vov0dmt1iC3v1itMIkUzo+Ap/qI=;
	h=To:Subject:From:Date:From;
	b=LZFhQngk/R9EpqzXqcblBUUl9Gdygn1LrvzBaBC1fSCuw/73ZTDf4TBmHoNFR5H/w
	 XffKNyl+VN41+p9likszog1vEcA6l7dtZD2XY1/2uKzU7mcg+Y9fD5sLv+XrEHaOOE
	 VvzWqL2RdOP3dDC3f02fbGf2sNwquTDy01Ac6uosK0ApIIuOTR6lNu+g7+r3GsQuMq
	 8jOpn+le/78vT0JzdW7Qy7sMDdrCjut8ia5WkyT2F7zAXLpHwTUcNNYlYLVgO63AiI
	 iSWfve/t/L0VDyoDkKBVtGEQUGY6RbiLaoMqQouDgginITE7w4+Vv/0Ct7cLrt2ZfZ
	 zOMsd2quL1HfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC34CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140939369.9072.6568121550419492353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fcaf35822fb7c192b571ab04c34146a1407c702e1877599cf2a9507f01a4212
Date: Sun, 14 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781409393
