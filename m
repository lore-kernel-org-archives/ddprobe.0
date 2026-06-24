Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBC43C2BA4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782311254; cv=none; b=MlP86M5C0begP2DQE8unfi7tsr4YRqT68b9MQhTup+WmmfQN7J3ngVEJrSroP9XucUisbLruvGMOY0zee7MlSUJfCr3ZLt5AJ1OtJZkZs+9sXOO+PgJfXknjxhYr71s9/K/PwyDlxKJGqoJSCwjvA6ffuYb3FsdtSRzTRRHyCfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782311254; c=relaxed/simple;
	bh=Ogiv+wIoQ5xbqugf3LT71FCNxW6S/mAYgeExpd5vdtA=;
	h=To:Subject:From:Message-Id:Date; b=GzUMkVwWGe0uxgDGFwPt8QPOqL7lWyyQadk50ZJvXAj4YKOCjsKFZuqggSXjGHQ9WvI78cimKr/qAbwsSFtT9X+zLZHYuXMkp6oaHVN8SvncW+/aIMj5zQ3+v67HE+qPP6YBTP+BaXaWuN0nrrcAeF0U0PO21JCxVf4/850/xwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVGPjN4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVGPjN4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E20AC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782311254;
	bh=Ogiv+wIoQ5xbqugf3LT71FCNxW6S/mAYgeExpd5vdtA=;
	h=To:Subject:From:Date:From;
	b=SVGPjN4rew7Jg8xI33xb+Rchsf/9BeEE0kWZNLD40pS+Op/BY/S0sJJkf6IKzxaY/
	 qUoKXCPfSvQErDMRafADDolX+39yU0Zq0jaR6Cer/bpCaGyMi2126q9GhKX96qRKj7
	 AYDXBLFKmKJHgEKs4DGckcKESHywgGsrpLaWPTyHvO9CPAJW9QXf9W7nq3+OfdiWRo
	 aq2wWe/ovSPxsLStTYzXj//3tgx3/kdOox9Wb1oK/zexQpCPt7HsouKrGI0owI9yCS
	 Cy60rRAhVP7DxxnK8Hsusg8M9goKrqWza0MgUIwIIOJUcviexd9YpuT2A0bWYQ5KYg
	 taFbxaruV6paw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB91CDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231125381.23283.12176623632450539469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71329f7a4f006b0e315bd60c75f6c460d71affaf2355ae44ff3481bcd5ff5cd2
Date: Wed, 24 Jun 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782311253
