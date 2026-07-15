Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE3E189F43
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784127514; cv=none; b=pqM1DLPf3yyAObmAoYz2VOkpWQv66JA/YwooRHZDDKRIn+IbkDjeWtQOYxC7k2W3VQPjLIzoqZDiJVyIR3tAk7zlxSKRgrY+gv5Sr3lqvobTK3Zm+OC+ZLo3vYEekuFwmoAToXf7AGgm3NZB6bIp3lJYS/LbyC6Ne1X28hN2HxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784127514; c=relaxed/simple;
	bh=TKljcAAsLhXL1ZYawKnUfdgYX3Qh1GGsWnNVOXmFmPA=;
	h=To:Subject:From:Message-Id:Date; b=i4Iuor2KV+Fgkhyh7q5qz5v47wiMffjf8m5G6Hxr8z6nuvisOvxWcUbDtIscTwQCmczPEAmGYUeQ9a7Mx3ynUSZnmuVy4d3qS0SrakpO9ptQqK3HajL4PbL/x+zOyMfGIaZJohIzIniucyp/UbKyGBy4P0sMiV0Lq5u7npJ2R2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7uUNDeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7uUNDeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3151CC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784127514;
	bh=TKljcAAsLhXL1ZYawKnUfdgYX3Qh1GGsWnNVOXmFmPA=;
	h=To:Subject:From:Date:From;
	b=p7uUNDeGrTUviIv2kyJfycScp8FkjpEj4YHv01QUB2PAx964e1CbO/Mo2Ha4INSQr
	 CPYMX71pvq4UGgsKEbAK37IXQDph455myM6QBgQXsOg7+cjNeiVk1ELn2PawTgMLrQ
	 MJilIE48SACRt/YoeOhTU0Di6zHkol+sKSa9oh6AF/Q3sREOqTKyD1tfe0HsNwDYuV
	 bmswpg1H4QX4hh4B7H6GNFzPMFxJWy1ZNpSMdao/reGlqOOsgbmbXKLiaZ0ileiISF
	 QSk02H2fhDbW854MkrwqiVt90PDDW36XT05D79wPow3uM0uQdttCF9QuhE37NrbkEE
	 5dBdlVM40CYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCCA6C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412751386.12740.5989156939123723548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f3e2537ca7d8a8509a5f5ca352169a897f7a0e671c4ae4cb8adbd14b66d473
Date: Wed, 15 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784127513
