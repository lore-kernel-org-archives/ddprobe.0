Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CAD2E62A8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767203634; cv=none; b=VeV9pGuzd5tO5LTfuXP7biIg2d8QKPYBUbWpXZXF3cBM5O7m03TJBixhuJgqSupTQzzWZ5sVVX7ytLXE8M92XDCtEge59lsFj/3y6nVM+X0bj8yjV749Gz93Yz4nvLf4z4eqxxvUDUOTa5bixIqcVbnO28Dm/WjRJAqQ+WfN8fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767203634; c=relaxed/simple;
	bh=sq3Rm+YUxHvfCe9440jH7HRdd0kwJ9VwKtXEyQgHKiE=;
	h=To:Subject:From:Message-Id:Date; b=fXhLGf3Mw0D0Z2W8ZxIlM3IXU+rllnMhPIjAP2y1bKQ65iRVrtXxXBlAES8eHo8xckLN2oEA1pvju08ki0zJtA3ae3Kle0CSDx5CboAI0h/kI0i6vJR1kxx5DmVos6HirXFapATDERJCSNpqDZDmM4gKLBKKzhoEiwy8eGABqew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDRCGnMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDRCGnMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D5C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767203633;
	bh=sq3Rm+YUxHvfCe9440jH7HRdd0kwJ9VwKtXEyQgHKiE=;
	h=To:Subject:From:Date:From;
	b=gDRCGnMrAdU7oYTaumUxRXsjW9GVFzrzPCeefPZ5ps25d/6IFXTBzOndnbAfhcAR8
	 k9f/Z7FPvChRNQl74EGrs0YugyWuuTzkF8DFD6vrW8CnnJEA5NErTcpA9A8UNKC9x6
	 hQbCh/3sIEVtOFCIt9MWfUnAXKavyTpJQM7dlgJ8d/AkRX+kbXkGRkil0ATAC5QvLZ
	 AQFsACEQ3pkYLfEv+hfigi/BNXsjzHcNubDnOKQwUOUoBWiQGKSl8YmvSzSAJfPtSo
	 rCY+JFAWJRS9sQz1pkbKTDFhUZwbl4GdQkEsP7zDLbR8Ofi7/MZOjyYIhQWHlZm1H9
	 v1cWuNW1eYmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92492EEB565
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720363357.2644.18215907375095854847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f774f6aa5f7a79adf06766f6dd4086846ee754268705c2bf8ede7aff91efa748
Date: Wed, 31 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767203633
