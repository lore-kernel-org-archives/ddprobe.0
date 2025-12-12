Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E4A30F7F0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765582974; cv=none; b=KCEclbxTptp9NLeAzqjnEHzdsX1z2zxgI7GUm2cWCgza7BJ0/v/VubbQqdCCLy4TcZFUw8sCV//tPNdgqCboZXBcow+oUdQa20SKl2d7WPDX2uzBrrBeft11P1OPyBVfNQ2dPyrWAprLIgmt8zLc78Vf1OWwvMWS7VMLZYt7oBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765582974; c=relaxed/simple;
	bh=7IqUZs7lw3LuyG3LbbS7H7MtOs/609i6YpJB0wOQ29M=;
	h=To:Subject:From:Message-Id:Date; b=scSb+NSU4d0PY6yjphVye+gPTpfrVyqWikSUqhJ5EuMoBdBnvEW+orBvVPJpkjKRV6mP6ZwPqyxxHsXVHlqMLBrVDovs+9hQSLN1QAavqBG38JCujBJ2cY7WaON4/HfqRNG0o/6Sh+sHQTWn8xAZN3PxGCkPv3S5ces74dhYIR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2gXMk24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2gXMk24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9ECC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765582973;
	bh=7IqUZs7lw3LuyG3LbbS7H7MtOs/609i6YpJB0wOQ29M=;
	h=To:Subject:From:Date:From;
	b=Q2gXMk24ssaLidyUOp+g7/jBIhAQ6WMA8pjsKepU8c7uZqJHrHsv9Whf18XPJDkgk
	 2oA9eE+5JnyKDlWOyGYEo2Ndxyr9kBgN9GUmhFBzl2t1ubqBAPZqgx/AF3OsYCDvUY
	 lxfJ46S3voH80qAUdCfmjUNyI/A5G4eZ6/fs6kOCG4HNJv5dfmP+1W4ZizDo5zZ1zv
	 HEPDv0OpDpWh9xqD5/eBYn5Sj/SmBeYGoB53tRhK3zEXhk4XCtqSLgQCcBWfBURMK6
	 wNSvd7J/La3pXNmP53g61yLjwN7iRE7+lAZMY68xmPWujVCKT5sXFUMF3BwNXq4we1
	 TiSSCxCpvhmTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE2AD59F53
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558297360.6017.16320922170201178817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67e977acff5dc4fc09e4ccb468c7afb22ef44f82791ec07e5d5773c908cd1a8
Date: Fri, 12 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765582973
