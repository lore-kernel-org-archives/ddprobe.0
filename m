Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F991D5ADE
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743258594; cv=none; b=mEaezlpMQyfYfXGUDce9hlzXiIcOzNDEySdR6tgrTQkRkuYyu/QUR2t8ZighqzZDsNRknoVwP1ebXIPc2ayI2iKIslgroYqRyHXgDUc1884uy4Xewbt900HuZC8Ki3r8lGRuGLwMlAJiA1WOytoLJvU0ZSR3G44sH4PIQmpr/8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743258594; c=relaxed/simple;
	bh=3Qw6CYpIsz6AEXVgjUGGLx8f6esHAt7pg0ahQuNAB0M=;
	h=To:Subject:From:Message-Id:Date; b=Ak1bwJAwdnSAQtNkDtnn19ZJgH4cGU8Drs+X4xcDwxc2TzKmfXb2nWflP3nmFBr+QWHqCgHl3NZDNazonmAJcF9aKQCGTG3CF0HzYcdPROrNEopvuuUlv5UlIylBACYVZ36S32BUkWl73VS5mFdmorJodcbe0kkJqHWiKeMKk44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBh7CH6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBh7CH6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9BEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743258593;
	bh=3Qw6CYpIsz6AEXVgjUGGLx8f6esHAt7pg0ahQuNAB0M=;
	h=To:Subject:From:Date:From;
	b=QBh7CH6Lte/nm2fsyovXrwcRWF3oHUW6AWx4GzE9GaZVQJ9Ko/MwvfRhQzxcPqNFr
	 bc38iXpwzH8hn68yZTEn3Jol+T09YSUVH+P9yvwRH7QCON7zGd1mQW8Yd0PO2u7q9i
	 0YRQhTOBm+FlJ7fxu/e2xfwVTclI7VA3pyqVyRdjzld95oEAlxnqMZqXScMErfRwu+
	 jO+Q48MZcJ/cZ/gLTJl0CFypCSpe7WhNrPhcui6wtEPgdJWiXmD4mXUMikzw/23eUr
	 DeEuGariFoHe/p9eGLjAJuehGwAuGOnKcWqfysISwwhjDo0RSVW9yG3Gkm3ptZrLk2
	 79T41blehtj4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0143C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325859364.15738.14607368936803101944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc365646989db182b2976abb2a9740cf6616bcd27bccbaddb0180308da1abdb7
Date: Sat, 29 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743258593
