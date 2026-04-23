Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4035E281530
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776919054; cv=none; b=n4ZRIRKO+IxLn+9GA5gfSeUV8141CRXCE6HdAUvNyTyEB6Jbbi1twaEm0P/vXTD4k3SU6Bprnj4kgqBHm8H+bWxMfv7hQKdzeP1+IFkk6gnt9FiR2bvwvUiWkr9vEnr7u4EhFdBDFM4DqnQiZtYiRAXdUMNTI8DGJRxYbflrkfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776919054; c=relaxed/simple;
	bh=7o5tw27A050FEhgSC+pJHelqGXiS9uDJO4v3wW4MuwE=;
	h=To:Subject:From:Message-Id:Date; b=Y8GqklD1CDRXnYHts5XkeeVVlloC3Q8L30r1L8WQfL2BEfX4rWNknDGvUbQCwG/bYuX+h/r/jsds9vMmB9JJb9DFd+Lu92C/kOcz+5eJqi9nqhbTKJ3FyerjhGQcF/331qqybEtH6o90ZLu/crR5m0CEzyUrqfYz6JyoGZr/24w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXHhmbVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXHhmbVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BB6C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776919053;
	bh=7o5tw27A050FEhgSC+pJHelqGXiS9uDJO4v3wW4MuwE=;
	h=To:Subject:From:Date:From;
	b=aXHhmbVXb5e+JV4OEFToPohEeeGz3DyTdzooPKo1MohbdQDMQ8k4R9/a/9idsxnsz
	 Q5Grzr2orB08697zegfarwCofhvgpDXy8eOy2AWqbQ6c78zc4kU29nSdoFhmlTgHYQ
	 GRyDVjeSba/+5Or9hTfBPjflouMl/K0D9Cq4WJoZ8wzbP3Hq0Ec4P5gDDmdQyM97Mt
	 HHfOc91HBANRXo4nUHh9aSzrmKh8A2N7PsCaSt4EhhZPlQk19U3eq9ZtJATkENYzMW
	 JQ5u3JJqExIG00o0fIR5h3jyoyqb60iyszsJze76s1AzVdXgkBrjSELx2yh7ZYY4Q7
	 NFBRQl2uojDcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FC0FAD401
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691905368.9519.424770830173057480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b307f88b226d78db3587ed64a84e350101a31fdb8dbc640c31eca8341474cc8d
Date: Thu, 23 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776919053
