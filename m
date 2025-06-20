Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC64234964
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750404594; cv=none; b=VmKjhA2yaHlMwClv630Ac5aiX5rsv8/UpOVKR/weyyP7AXrn2St1eNns71O1C7+n7DtNR6dOtu9wctRDukp3pw9SUjMj5DfHBhH0TX0wYuBlROCvOHxSd9+dxG3h3CbMFJPhToAMY+2oamzLOXwMwDXN6mv07fDN+JaOzv9oAiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750404594; c=relaxed/simple;
	bh=bum5RFs0g8D/JZYHsqpYzZoYpHyhW5Q/yh19fMi6qgg=;
	h=To:Subject:From:Message-Id:Date; b=BXzVEgI6VbctUwQwPwj6JhvWcnI7UDZ3Wv3y63NXAmzsgdK/Wx+QiPLW7fmmjJEexAGy07iT9o3lG7OqYUh74802u+PSLWLcZEuWiG5Wt6Ja4fveGhJZioUb9KMLe6lpQ/Gcjw3ETvgeNhPUHqA+mrfRLz6hxqZeEQRcxlPJ5KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1mrv5d1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1mrv5d1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1059C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750404593;
	bh=bum5RFs0g8D/JZYHsqpYzZoYpHyhW5Q/yh19fMi6qgg=;
	h=To:Subject:From:Date:From;
	b=E1mrv5d17Z7hUWeu0EjkRYYStv1jJ/Zi31l0ONkvL6WKRZx29EZ6jawdT3piaq2Ps
	 CV7JowYK5wfn/+c8v+oBqopHujurl3q0+wFlA9LmurHxaOp84/d6mF3WKCb5t9bhL4
	 +hqjiSMsRdL5byGyd3oXEhY8WdebqGwX9PUvo+XCmZqSBa9vlEX0nfYbOQEgqq62tO
	 1BsU5Ruw5IanK9zE3ZhzvL88T+LZtw9GVZpe5m4tdnHWb0xDMCt7brDWhBZ5i9IJeO
	 eRb9H0C7pTst9i+xzN48DcG4BFcZe/pon/wxnL2tPnc0ZP2ZdNknhn3QdR+6cPFz4j
	 kbT0MidooNshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF6C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040459358.1757.4724332822969883847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd710f14ef24b5e1e96b466ddb95c5b7371d436ffd31b9e04ed10576952004a
Date: Fri, 20 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750404593
