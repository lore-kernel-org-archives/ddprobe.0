Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E6F1D5CD4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773815094; cv=none; b=cIja19yH3PxnflDtAOcXEqQlqjhqhWCghj23WRgADLotD6Myy3hdmY86W1Oia0H5+7xf9zas6G6LER0sJn3PgVlsUaZZkyfuoCxx3BAUJi95ukVXfZ74iHs25XnAkjKNgpl6qhAIhhYQ5zp0fsgbgv6igv5nlIXN5u+VWH4tg7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773815094; c=relaxed/simple;
	bh=WKFFlWlXx22RbFL3vZjQL3jQJcmNN7hIKLGvLB4JzE4=;
	h=To:Subject:From:Message-Id:Date; b=XwlJdI9hwLhh4f81PHL+yXNWphPbjrFCpF3wm1WU/1EkLPjO7witsVHIvMiKF2pgwxJ5O1FO0hJp0UEwhU2hSFSQA8pTYPDsyyAKwoki86HqqLDqLJkF0Sr3bkX5EzDBrPpI1EerDmLe0xq0aJzvtD0339fqtze8lSdMnwDaKWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2Xd9UT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2Xd9UT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCFFC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773815093;
	bh=WKFFlWlXx22RbFL3vZjQL3jQJcmNN7hIKLGvLB4JzE4=;
	h=To:Subject:From:Date:From;
	b=A2Xd9UT+tDYWb4irRF2hgxsRBV7tas0mB74X6m/aGUayWqPDga4U19//hYAplQupJ
	 dg+Ypj3L/78rx8wi6jY1lyWIowAvwu4YWpoz3VXMh03W0kAzSxBbEc3A0ycynE1AiS
	 5Jj4iou/nsajEg8r6yx2XnumvKpC1C+NJlwZY5WUHzotac+g5KLe3K6tCirURhuuK2
	 VtTIAURD1u5cni5uH1mlyxXt2GSmBycmHmGhBjmedhrGWzllaT8BwdV8SuoZ/DzFlD
	 N5rEvIrum5I5y86EbVm4Cpr7I0uY1CAXimX475h7nXhgLExpFkYwVA6Svs6g83KAb2
	 NUnNQSNCUJbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F491FCD0BE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381509357.30551.10038549937238323924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f2206b2b39f86f157d39ead4c39ca323f2a726f533099dbf810741e25abb47
Date: Wed, 18 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773815093
