Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0661B2E62A2
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772329494; cv=none; b=NOpkIHjZRQsce1s4MA9NDztjVto5HiSlEqr1MGjGeg923L3cN4CUmZ4N67WGJ95gWBjTs39kOfIXwsWq+Ear4XzcsLGNB4SsByoFUjQ5ehuaXA766HoX1EgOqaAXxjlgWvEXyQsXtgMd7YltXtZOAvm6KN1BZ3o2YTI6EzD91vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772329494; c=relaxed/simple;
	bh=2ADiFHiS8pQ6hNVA1vIvlpJmzlW9R4e1wUzqZYo0dzE=;
	h=To:Subject:From:Message-Id:Date; b=ODT0ebKn6Ap7xoBzprVs0ryFiSf4FvXgKOaAuONMrVN+aXn0dTjyLyI6JgGryXAOqj8geIOzCklBejOJ8sbj+xAqPLvUcc/LmKt+LdupPqi0Bqo/7ZxiRwUe0k7NAh8MNMLsvNjNtNQy3SuVHtItj7fdhmygKkyGIVruBQvb4ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7be14JN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7be14JN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC775C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772329493;
	bh=2ADiFHiS8pQ6hNVA1vIvlpJmzlW9R4e1wUzqZYo0dzE=;
	h=To:Subject:From:Date:From;
	b=Z7be14JN8E56+OadMJ4DntvgGEOyVVap2HkLkGO7isdIDZfTyuoYFVMIwVdkeyyYo
	 vY0okSi0qUjKgSbdKknWYM+rCbNQpbEZ2DxzhzhmmY9OI/jX8pKX5lUEqIW3li/Ssm
	 Q1QlIGqx4vACcUTGbXW9nNmSH2wDRAxxcEGJ7eBBrUgGCQhZWRMSMu0XWimQVCYJUL
	 b9JrSuQwRiLsxiwwShc+YBNWOBK8ruBOCTItIozYvFNTqI6ixTg114UfWBXrqbkIqN
	 kb+1R+Oc3GJdcw897kCmJ6FBSsmW5LlLkMpblM0gOM1mKgzhVieeeAHj0u4NdBDJnT
	 WE/9RD8LcIYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E86FD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232949359.17310.6614445979876837405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d054d5e1454bd77370d73c2526e51208c3f1653e9bab79db7152ebc29144ca
Date: Sun, 01 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772329493
