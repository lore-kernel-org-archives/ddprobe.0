Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C5D18A6D4
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728513954; cv=none; b=cTX7Sx+HmXPDmepd2WyAZAFZYmZFq4DPtxQV7misNV6EXhDO5E1qLIqVzqDJouj9bBizRaOGojjfS20tYo19K4dn90Uxu6fITkxHnz+C8LYbpvW3xiNpNpvjEMySc6QmdVX5eYqibY81Gq1hVEm+uB2WED4PUkBZCYY/LgY+dCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728513954; c=relaxed/simple;
	bh=aWlRvQIcYEF6CD86SuW22FoO0j3p2SZauhEJ7YwFWPo=;
	h=To:Subject:From:Message-Id:Date; b=RcBOeiuF1MnzQdjj0kZ6XILWwSXNwsZ8SANK35CwDFlTYVTGWog2D992CPgWfn8l3IC5CDolEdKJ2dW0jOR/IxUK9QEi04ZNuiGKUwbHjNdAAsrajP3ncaqcWQyqeJ2XT5UxnRpiPJofCN0fGclBTsxPNjjd42cYr/qonN+AdBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C45lQPgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C45lQPgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA456C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728513953;
	bh=aWlRvQIcYEF6CD86SuW22FoO0j3p2SZauhEJ7YwFWPo=;
	h=To:Subject:From:Date:From;
	b=C45lQPgYv1q57oVGDmLi7reeIk0PtBMhCGpYRwrKqxfyod4bhGZdA1tYqWDwUDkkC
	 95+ohHCSd5lZDiz3D4U3csj0XyHUtlthVa72GRvRjXgqhkzOpYGEPKoFVEBJKr+yYO
	 zGjbN6maY1wcElj/nffhqysRNMm/UXvng8C7JQyPg1/xjoStIQ3ChSUmWSGZ4DfhkC
	 Ad8jdcHqpprYTgWoXpiDdLJR9jjfJBC6azdTR/GyDKEsKB3feZvY5UL1MsUKHlYieL
	 IRvOI/e71b8x+aNe7QYL5t7ar+hSIMu8nenq7bIDCJZZtS7oXa+atWNz9v+CUJMJVs
	 mG2VbEW2Qa5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94955CEE35E
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851395359.4960.11074022416142848385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6466502e4442d16c9df6f799dbdbea5c4f882439208eaa98c5c78e01708b4934
Date: Wed, 09 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728513953
