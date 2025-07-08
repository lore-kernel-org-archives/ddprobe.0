Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364A0220F36
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751956195; cv=none; b=pZIXBDy9YY1y0Ng2jWxek4s/mcuDyVxiJPcO7IFz9HWgY8Jx8DXMkGEr6npbwN+H01WXPuZjWfKBrHDWLBjGvbC0fgIB8CwnU6DadPBmdaPEfYONb0uXfAsHbLO0PZ69DMQA0MCqU447MfbS8Z8YKdWNxAQO5As3bwVAjNxHqkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751956195; c=relaxed/simple;
	bh=7MdYKTYeRepQDSn8ETxPLjESdL+vGgWbpCrkngFBP5Q=;
	h=To:Subject:From:Message-Id:Date; b=MlLUIEQPYvyNU2ofZbWI+u8pwLIO14M/F+6Wpq62LzXK0dF2aGXyItHaNmrw79RhagWPtVRXeyLDt5YIKtMtJMgeVrDHFCTSrAnWx6IKsiAcVZrN1rIplAKi0NEzQbRQn+a9RZLRjUpzGA8d9SVypmt5z+6iDZCmLGeKgOQeJQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClhiIPX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClhiIPX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BD3C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751956193;
	bh=7MdYKTYeRepQDSn8ETxPLjESdL+vGgWbpCrkngFBP5Q=;
	h=To:Subject:From:Date:From;
	b=ClhiIPX8Z3jB6cpYmn2D5iQe+riQhElj9M/PoZym84qDq0LQViCdgoYos4PZqlN+Y
	 /F+dEJOv7KbLHZvzRuJhUkZwVsxOevsSHLGjtwAF9m0jRo0/5yJmBkzS6AVGPbum3M
	 aoL7QvxU0WvU80sznG4oD00dTeb+9LbvH6ctfBcI/0Rr1UkATDOK2GxE0Dy6jLgKfx
	 JWnim4Rwr9RaeefElmsYH9eALyY6xGHFgCbmBKyaDf87GEHsEJ92Day9hUk0MVQkXe
	 Zh0NSdgUNoSvN8+2c7OGBzRmBgM/GUYtHY6mB6gqTGXwiDApMn19abuIFDUns+N394
	 qebyMpxjeydZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D8C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195619358.16803.13961365508283863651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a830327e3409cf2b0a4652daf1ec7e739ad8316e9f5b102edba5a168f1a3f35
Date: Tue, 08 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751956193
