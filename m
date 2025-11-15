Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351D627732
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763184594; cv=none; b=XEZFsRmOUwiBM+m3EOogjiEl1f5Vf7F5WzW569QJUy2bot2GpdtgyHaoY8goqI1odVqtK5Bz9tlCvduvv1MRdRJMXZOs1fA5pjU+jI8+YDy0MXlVNl91pyiENfS/yXXjplZvjCoJdvW4EXj9DcuKTqRRPwx/CWPOxXP7lLNDAqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763184594; c=relaxed/simple;
	bh=4nh9MMfnJux8ZYwIyD1QlY4hfqPtiC9qyWkOIGXWvdg=;
	h=To:Subject:From:Message-Id:Date; b=quVZpmwIo3yda5AjN8qdUQv+VMQajkNST+0uIfjagx5dHbRhVqInlJarDlnnQKhWQVHGSVmtJYUj5ufiKBzeBi0vrHvyLBl2MIZVDgPPkLXTVc2aM4MlenqsJiHdKIV7qpgNlIFlIa/dQWq6iVzzClYAMkdjCO1V4Pngh8HtPN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My07t9cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="My07t9cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9329C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763184593;
	bh=4nh9MMfnJux8ZYwIyD1QlY4hfqPtiC9qyWkOIGXWvdg=;
	h=To:Subject:From:Date:From;
	b=My07t9cm01c6B8N3XW4ci9b9xN+9AAL9Qxngh6hNhKg5yNE3x6ESxvmien/224w7Y
	 NbORQSTCqFXPg37V46uufeKxP/cO4kaEIHh0GBBW7a8CN6wHrWmNxBzKOPpHoKkqt+
	 SXeg8W3kXxCAWbXRbrvfM14waj5xzxJEszO10Lxa2imVRHZ3YZK8QYMdJNBB6bSpFg
	 R/bLSjFsT7aiNEHste68YwJZlyw9le8RnPKpqz9XZcHDs8qeCFiLWwdiJEVYkkAiaH
	 mVdA6oh/FwtYyV1OdRjWdR7guf+lSGY12pchdkUWH06W81mq2Nm3jSWIx9OcuOn0RY
	 RjxT8g+x6ysbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93177CD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318459357.23622.9469605246417814541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d235ce9c4f9554a98a31eeefb77b2194e4a3b832573366220506765d7193f9
Date: Sat, 15 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763184593
