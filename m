Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFA4245019
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764658374; cv=none; b=T1npl66kxw1MgTdgFAL3NtO8CQgVlv48vnvKMdrH2HWQ9iYmPvYSjOQLWpw387iIsH7jJF3+ouVy0skhytCOQ6jzH39XQ59kyVnOfqFwPZleWtFsxy/dBnuM/mfxphQ/DNI/Yoqn5fXeD+nLFHWrImoieP3IM2sjWghSpBMG5pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764658374; c=relaxed/simple;
	bh=1d2KZu6en9ruTUuk/4wCc0vYRC6kKYHgf2J+SMFnrik=;
	h=To:Subject:From:Message-Id:Date; b=Tu5y5jS8YR1sA788O//r40vFlQKOyx+KJGsskpItlJttaizhgapY8313BgOvjM0Mv6pwTdK9X5GJK8PnlsTukQGZo3TUuRRrml+rWRhxF1RxgmwY+BtyphCl3aZdFB9nClsjv0IqufdypZ6xxMcQ2NXuWuo50Px9zGNSTfGMQ5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7S/ppGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7S/ppGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63CAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764658373;
	bh=1d2KZu6en9ruTUuk/4wCc0vYRC6kKYHgf2J+SMFnrik=;
	h=To:Subject:From:Date:From;
	b=u7S/ppGO91h7oGpP0m+sVuCNRrL+ZnzXEvR579WTzSbL9XsoXJrFjxng2L0PF4s30
	 pANm1tqeTncZP0CYkdOPEzKp8LPikoVqKa9s759D5+zEGq/pMdzA6LAOYCo2QWTvj8
	 ebFCm19qHqd+PpCGMi8aqQy8xuChdPI2KbROdrxaF63NkzkZzc9SFys4wUfd+hjyK1
	 FMgIlnSy5OdbHsCOUdXKAOd2fBBJ7M7lx9FDr7h4K+DH/+eR5iKqlRBjojtFYRCzxk
	 xnnvX9PrtPEGvc/LeOjaFwZ7jX7Xz3RZ3XtCZidXggaJTL5R4upjHiW96bHmQdVf/S
	 VZDOxBe1O3eiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083FCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465837358.12439.454163876160270059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496281b1b9995f856f7d48f7a43e3ef245191047fcd501845d80568f5ff00c69
Date: Tue, 02 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764658373
