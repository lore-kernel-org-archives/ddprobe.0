Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CA01754B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753160994; cv=none; b=DC3bJcEXCZKv86OlbfXDInbIB6kYwgggEFd7ddN2zYMb/eLZJSN0LI2EI6COZ2NR9LkbCswExxuWmO3lq+HM9icZ6W9Zz8vG6DZhtr67ghrK3x7ph0fJYmwKNstzH/LH2hFcEk/tckxF0XOyBAD6fHZFD7x2VOR1qojsonQoybs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753160994; c=relaxed/simple;
	bh=bCUp9LU5VayrMI/DQ/1AnWFrbQDmUz9796sW9ozCGFk=;
	h=To:Subject:From:Message-Id:Date; b=okT34Hwo0uNVJnz7uTqV1qhPtN72xiqOafUzK8hP5My86tD8dofOGX6bwqKF+3ukDdtxwCkPhmR25VpoFD1GM7Rjr0vpzf8Nx5sBlgzV4wLHPyif4ZsqGZDtAyh+aOoFwo+2DHyWLBqguTqjWXAcD+4oQAH/zW+NVS7weDsO+B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjzJv9cY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjzJv9cY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A614FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753160993;
	bh=bCUp9LU5VayrMI/DQ/1AnWFrbQDmUz9796sW9ozCGFk=;
	h=To:Subject:From:Date:From;
	b=sjzJv9cYUqFOs6JqJaCgFJYiEDTa3wj0cw0oj+ZXDkvnMWQRAKuF0MS23SVEHUQDT
	 tWMHXpVq4fbhpNssR/UZKLRp6sC2QCYyIQphVU0Gd80Hr73SkXFm50CxNnQDGH/IWZ
	 ccmokgjCTn6MHbiWXPI9dz56KBhsIKj45uSdYeIjOKbzNPzQZjqOwLA35lZonJac9H
	 WM9HqwJORTDWMhHO92bjAXZbVFbB15XrOA1RIFmtN5B7A0D7sfRijISbSljeCPR2Sq
	 QnOwQt1cvfVTYf+4f00Jscxyob8shTj5M+2cmTV0Nd9/gzF2kVtGk8/F7PJQwDGwrd
	 tty8x+jlmdG1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF6C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316099357.7926.13448002036451218102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6faa2bbb3b5127a39a21583c2b3f14b53f293539e101102e83949f158d7c59
Date: Tue, 22 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753160993
