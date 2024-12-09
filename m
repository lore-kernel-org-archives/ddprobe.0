Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D53A2C9A
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733784954; cv=none; b=J5HuPIA6yMjsNrJDT0R2ltI7Z3YSCFqScrCDJgg5PB8VPAdbwsbrGn5iVi4CK5gGdRe/vTpegPUklJ4UaPt5qtUe2RSJBX+g9qotAHcKVYbu2/l8Cs7wl2d/AX2fpYyru3ZdMM/o0eYGZ/c4ZWBGU88gZlQpDMGRn1AvmH1i5uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733784954; c=relaxed/simple;
	bh=0S7vjwyi1g2wMY9fW1pBoTJ6lJ63nDtYJQEw8kJq/sE=;
	h=To:Subject:From:Message-Id:Date; b=FepGZVgLx48/O6r9iQcBRcqe6xo2svRXh1SsFbW9ZsVcM5tYpULZZXXKOm9w7thf74u9qkjTRrVplHeBk0Sjd/dsFSS6IHD5OYvUS+o57bDOr369+jMehVZCIuGaiTqw1dYMrwChFx5OKru6RtVMQ6g5v+QHbQHOMrZNfn0Z8vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj5iCFCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj5iCFCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC041C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733784953;
	bh=0S7vjwyi1g2wMY9fW1pBoTJ6lJ63nDtYJQEw8kJq/sE=;
	h=To:Subject:From:Date:From;
	b=Jj5iCFCLNVHEF3XuynwLLMuoNKDUiziOJBTr/iS7RSTy93h15JOj5UjpsNzlisiex
	 t2ChK3w5QcgWIaOfmWnFEGIWmMbvqp/BZz3xkZBiO0HpV8vJZfQfkjGTUGtWpkLpx5
	 B5I0PvHwQBRfbGUiO6Wgv0L0pxrV657cVp54XDRODZ4v6vEZ0heqkhAU0an5P1vOnp
	 y1b4XIQWIwqeWatQoZvEH1on4GFPKBDhpZUE1Ukyjzhf+PCZm+YB+hRgLjLPFBhYhR
	 bqH6inoXZcV5DE1LoY+BN2XA19X+6krWGwS7m14i/qMkdYjKyKIqSP3mDLXfM4zE8G
	 UrRM+/GkgxROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B1AE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173378495366.1202.14424972260833436932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e74b9627430e78ce3c306ac4be5e9bcd015aeda925a9ffe6c320f54c7c530b
Date: Mon, 09 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733784953
