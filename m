Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61CD2E11B9
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776097653; cv=none; b=E3bVMXapS8c2J+qfEL/bssCXHHxK6ST23it35kQlppjeFqcIPtpoQCbAPZhU9ghn98rmE1n94Dn4PwOI7SGBRFBfXlxXwMzax2uYprUfYEQNTusM7pOUj54P4a0jkiYM9bBjSh7ABD17PbzZYgmoK6e+11K7iu8gf5Qz4gpTlo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776097653; c=relaxed/simple;
	bh=LHSQktBaqzJ+7AuaA3aMciOAcM5JO2O68GOPfvnej40=;
	h=To:Subject:From:Message-Id:Date; b=dblki2bUviW2pe/02yqBWP9Px6ylnweNrRCSop+yz04HtqWZNssNeYkNX1mlebnTkw3UGs4aHKlElllYlwGkMDT2nKcDihWxNLYX/pn6p7SzWTzYsKOklza9+FJ76YklMHHGh8RBt87dIE512T7c0N1kd+CXIb1VaqDq9zsmi7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFlM+etg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFlM+etg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0AAC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776097653;
	bh=LHSQktBaqzJ+7AuaA3aMciOAcM5JO2O68GOPfvnej40=;
	h=To:Subject:From:Date:From;
	b=SFlM+etgDOumRM53ybFSJ/eEav8MN0+AfQaPffaEx3st4sluo27e97b9Py02mh9Bi
	 xUAw9MWkOoM5IqVbsM7VvEjlnhwdC3juBQOLdGF/Sxa/DgeWTpWKlQKua0mQwB3W3r
	 PiLv1fzq9iuVQ2ccFO0sBrFW2s3sE6k+JhC4aZhWO2ooAyrCoyInKHutF7aC2B7pgJ
	 wge0Y0FCeG/ByxxCsAemUmjVjB/Yqy7F1lL327OW7dsF+u8GUY/z0b4ybhbkQWz1hq
	 DTHcu00I9B44aIRpKKVHMetY3IoSoU8PWNwJDjICnxztgsRP0WQnf/QlBX431Gg2dF
	 9lYqB1E3a6zXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF0F34C65
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609765369.6742.8533194647755000324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0db5dd920088b91f7067334f759a63a2b8c1ffb2c50d3a84d71c5fc31460bb
Date: Mon, 13 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776097653
