Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD83380FC2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781337394; cv=none; b=mqOSwUI9+XENi8azz4yJSkeyw6WXf0YcFutr1ujyG/ov5Wp8obFArUhxfoPSEwpjlC/abwJgH/yJ/r4WN6KFRhnkb9qj5tnT4wllvbJFzj/rPhqsciiJPRl0W4wE6J0m6kxSTxobIQUFSQi00f/90KyhFSLIz/R1XBlj6JjrHC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781337394; c=relaxed/simple;
	bh=hxpSlDK6RRa1cXC2ArLLJZliKEx27+ayEnPfnJTRLrw=;
	h=To:Subject:From:Message-Id:Date; b=E+WSic93YKMmfLNBBkTd2T7FaMrho6JYQ3OIbVoczdGea4qvIPFuYh76bd0cuaoOGTfZ+76DN0X7VxUaMMFx/j4SNIbgeoZskR71l3/iVABDaZQvHYuUrjphBbXocEjiiaLoJ6U39TzQPyo1DbAD3j0oQsm8lbK+LVyuOhg1hRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6ffJg3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6ffJg3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AE8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781337393;
	bh=hxpSlDK6RRa1cXC2ArLLJZliKEx27+ayEnPfnJTRLrw=;
	h=To:Subject:From:Date:From;
	b=K6ffJg3q2oy9ORQATai5WmIVEYsZ70zAmJ1PugRlS/gx6xb28aBxuebQinW2WxeLi
	 qi8Ma8tmR3etyCqmYBFEVNo/nhxMtkmGqQzQn8QJThLVegGiEQ8lZSpBdI/MKlCHy/
	 el0A2aWSzh9FCz7ihQS5BJ1J6CG6T6Tr2yXQBHSDdZdJtVhocQDzLcIG3CuBC6DgM4
	 n5ChJj7Ea/qgADZAy5LQVE7o4h7eaySohA5ZWzHMlSrGit6mFN0nPcmRFs3od2kq0P
	 w85M6qyU7dIGNkAnqk4terChJ4Jf9n0jAAlQb+oL3usnCpF+1mYQYgFGuOUl6E91lT
	 n2xytZ2PZFntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F5ECD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133739368.3663.8789208513453420636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e80dc1de2a1aba1413d20fe8f14cc57970e2c5679763e3844fa9c1b63779445
Date: Sat, 13 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781337393
