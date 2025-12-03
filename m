Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D3D1E8826
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764751974; cv=none; b=TBO5LrAbruUrfybhl2Ul5wjCRVfV4+HsjxuFRuKmVRt5CjJwqMNYkK14yHYsulKpnCnQTIrX92svVtBrQRlAnj7MdCrC44TqKQXnG95VZDQ4Fu63wNGhal7uSthlG9wDEE59wt6TNvTNqhatG0MciqHlYeJptYfmOEkLGROiH+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764751974; c=relaxed/simple;
	bh=bFcQ9BJEkNVxWapuFKvGiC38bEwe1BsY7LvY7gM7byU=;
	h=To:Subject:From:Message-Id:Date; b=tRA5qFGS+PgfF3gDC19ctUob8/+b7punMQyYIXLlpoGc3YcuMTs+mlzoraRUjOR0POWfKigbg4onGcyh8SUZq0jg3YpAbYy8d78nlgBYcVD7+4DNTJY6IH/JbZJIuaajqglYCyk4N+FQHlgWDEO5c6XLqyc1OJwEGJTGBZHYqbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAlQn0Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAlQn0Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764751973;
	bh=bFcQ9BJEkNVxWapuFKvGiC38bEwe1BsY7LvY7gM7byU=;
	h=To:Subject:From:Date:From;
	b=XAlQn0SbIldlZAovUTfQPSMf1crz+fVzCRMJLhQfcRxS2kme0QqKPBo+zbcM+WzEC
	 ETUQ+BzzSj9EWrW7Qn1U5cqklCnpIxRe19VIL/nWNEerxKaPtxVavWVEyQMPwD4ygO
	 RezdLVnmfj8UnAoWu+R+3YpvbDqUMV/DF6M+1B3Ygvli3lOsk8QWcJRCAb6uA5DU7S
	 iMRonpX/yjyNSnYqF9h7cXXxSfczLptPbcAbwx/n+jcOQ9DBbCfQ2HqtXc/mw2PhbK
	 uiIkfc/NYL0VTdHdqetsgNr4iTerhuKsEsmNL7lbCFB88NSkVP45qsE395IOjPu0pB
	 KbhsJypqDdEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF9D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475197359.13124.7093658943612394176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77088a86fdb98e272f9907d36e84d9675d35b9bca0b9d19a19d725b2111dabf2
Date: Wed, 03 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764751973
