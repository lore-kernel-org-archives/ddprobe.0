Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98013368264
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768373634; cv=none; b=LRInNDh/MENuPeEOE5fqWe0FTs+J3o/0bJb2rXk238ye+6nFARb9dqg5u3gjr3bUjyWSlUBWQHvoiZVpgMzwvBnZHy9abY2LhcT1cgLstLnKimzFwysthZ4OgpaNBn5DWuDhudpQXN3XCeiaiT46qEnraZm/GjJEKHg4PtEJMkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768373634; c=relaxed/simple;
	bh=QL3v3ZZOesqibOzOkwCDhojDznupxoeYtyW9JBW1JZE=;
	h=To:Subject:From:Message-Id:Date; b=E/BWzSmCTypkiOpNOqZo50GsE2Lb9xubMzGy7oXyqMF4RNm+nNcXHYq93S/WFF0LnAoZXHAXNau2Q+eWzPlUhxVHgkjPdGlUy+UEH8K57An8xFVZ+cWtCaYPHBAm0fsNi4ueGhXWdM8AZYQXnD8ec16ZjuSidKHyXteRpUIu0Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z31WMNJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z31WMNJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F021C19424
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768373633;
	bh=QL3v3ZZOesqibOzOkwCDhojDznupxoeYtyW9JBW1JZE=;
	h=To:Subject:From:Date:From;
	b=Z31WMNJKiq+htvwPm1RzLpRsGDvwjwoYPwkagY1vBe6DZk6HsV9c73WXxfvaY4QaV
	 9kW0e19qXoEgs2RTnOufcxM3WoYWJFswHaCSpIE8t+3CttZMGuH1hDFoAbtqCcDzCa
	 AWdx5WtydgDLgCdu13fE8QMiWlYDs/wDoJy6e6B338vC9hV0ApdVyDxHrolYgi01Zm
	 ZCi7sk+QjfSyEYuEUWuafhFVOjsci17jZr+a7g3gjGRQ6HlGLeo72Uj3jRD4iGiqks
	 xKC8A8JLjUH4UYOl9W7sX6JVJeXRGW4mqBSQLQas+62kTs86ruzDjnCG6QJVy/Pisu
	 fFiFCC6kO/zbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2EBD31A13
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837363357.23244.7986514710386098903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83289f8f5670fb7a1148498b3ab36d6b60006bc0766560148ca7503b16a741b
Date: Wed, 14 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768373633
