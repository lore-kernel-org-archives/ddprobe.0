Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3972E40B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755949195; cv=none; b=TY9cDBFeTDKthwW8fzVqQc2gjipF3z3CzAOxshza6gS/3XkHmwrPE9O97FwvrmWOBiVEIOV+CTZqWTMAo60QDwHNEieHhDcneQU70kJGjsinXCmck5CLrz9LdfPw1iLWUtlOMs4bZOcjzB4ZR5ejv2EKEv6dni/slE1j2tHSBAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755949195; c=relaxed/simple;
	bh=byb07YWvs2olKJZfaNN4ap3Ch1KTXv76hbCbEWKSWgM=;
	h=To:Subject:From:Message-Id:Date; b=nXXpOGQ4ilyIRkYrSqUwuZ98LQQkqR+zaWGLnQ6EXW1NCqlrf+p0tqLm8/7tT+3OUqC6ovfFIPMW9vanIi8ZLN+0+lmhbbKjAezjnhOxmiCNeoGRlDqao5MoYI19r8NADRWDDzhVa/vVUFlTiuaMs3JCtyF2wPmnunGqjjGcsPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz5mzA+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz5mzA+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409DC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755949193;
	bh=byb07YWvs2olKJZfaNN4ap3Ch1KTXv76hbCbEWKSWgM=;
	h=To:Subject:From:Date:From;
	b=gz5mzA+Xk9DRDnH2iEhSgvxIwYlhYRl6etfly/ZXBd5N7iFT+6AXRgFHhkz3HGwDp
	 Y1K1gF1hfcVkb7QfyDuS20wcNJFHjW7gL6U9HsrKExU2o34AkceAGNkSopF01k6N/B
	 P00vbRuvJopvNf4B0cHvhWNlM3c8OQcepqzzEz45keuCLBA2KYZWWxqnlG93mgwPV1
	 m9Y2CUFgP4CA4KfGRNOWUWtFaVHjbApw0qTkQjTTx4UXEjpGWGmaBG0onxKoHk990G
	 +4WayuOVzBQiJ3ULPZVSDsTX3bCuYWqImnlNkHhPRD8iIKxL6ZjRUqTRTXoAYLwKxb
	 p2xdzhQQmTgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175CCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594919357.19067.15368131073518194423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d813c0a619c20499474b9f1a96001e1d22ff247b9ee8528449f7be1775154b6
Date: Sat, 23 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755949193
