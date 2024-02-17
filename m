Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F312F1C2AD
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708201097; cv=none; b=HFak0X20H5XJpjzPRYaH6Mq7ZCiMMX8QcGRcoy8w9Hfaol4TJaRYToA3vsy7GJjNKZMFGDLmW3C/CM4/AlrZhyVn6w4Yme7Bp6Gyy7V8a2cT/Sr4hdrJkR5bKm0RFmjbT+d8NckcaM0OIg9xV6qsaUWy8IHYhcLOO1agU7Vq7AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708201097; c=relaxed/simple;
	bh=YV9kZSFA2lN4dYOY5ALW1m1+JGYLSGE91LOvCF+aV2c=;
	h=To:Subject:From:Message-Id:Date; b=s/I0v+4MKeyD5UvOmtvGVwtDehgxF0azL9a+mIfypfqAzORX2TIOMgAfOEIYEspWm5F2U+XsW1t2s51ixPe6w3+zcazCeORRfhyVsAeUR/sY/XrmGChP9zLN3eeuxXrv19+iQKSDhV6+xLBQcR3aFFiStpVzXOVj80q2xFDU/6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOtMzBkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOtMzBkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77862C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708201096;
	bh=YV9kZSFA2lN4dYOY5ALW1m1+JGYLSGE91LOvCF+aV2c=;
	h=To:Subject:From:Date:From;
	b=pOtMzBkPBG0wd1aT/o/erRBiFfnG7XcgR3w+oUixjYDmP8CdGlVgkZU2xiJYK3fpE
	 ByCcaBt05LfUqT0A69Ctt4MHfdkxcb/GEP+8j3un0eWoBEXT3VoEX1b0bO/etVO0Kw
	 KIXMRs79jYxC8TbIbzx9+OFHgwdFzrF2hGQ6wKY73e3fzQiX19J+8O6umxz8kGEkUn
	 Zcjx10CW9uq9RrYGZmRgrYbsYnDzVRbff+T3kW9oyJ+J72zns2C2l+QArcVMRXihF6
	 D6cWTj7NG004sKBWkbGTO0ZwZTlez6NK53wWPOQ6BQ7xMIpVQ2kdxQyW147I+9iFc3
	 IdfQYgvQhEzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDE1C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170820109637.23148.8832822300643483839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca17683601103778fe3b3ebc182ef6f409917be400b73093de69df034c21cd1
Date: Sat, 17 Feb 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708201096
