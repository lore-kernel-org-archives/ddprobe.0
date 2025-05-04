Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493DCA29
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746358194; cv=none; b=o0at3IXNtgRbkfXNX/qB9Rw6Z/HoWu6dzsQb741CJP+RPKvh3/KZd0r+DwaOLFtplc3055JB3Me5rC4tbjCKUshlu0WnmOX3hcoWQUGHUc3N0k8WU5X3hssWqQJr4PIsDD/tQB0dvR4qapCTW3eMiC7EPBDoGYiKsEjUVwUnErc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746358194; c=relaxed/simple;
	bh=9C7TEiA+E7x21DVCa9lZMpr/NwkVkhabx8Ndl9+S3CU=;
	h=To:Subject:From:Message-Id:Date; b=oLH5wO19btb6UFtGycFJ90IP3CnTDPiF70pyMFSRDL/QJ8XVWLTM7xr6QnCZkdn+8UHqkrSl3nUXhpSG7PPwvr2GDRowG33m7dXm6a0UMqVjfgvu1Fz6Yiep/ebl0wjJvGUdSNffiLFfDVn/FuZde4An1yfUaj/NrGVJZsNJUPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO7Gic9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO7Gic9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F82EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746358193;
	bh=9C7TEiA+E7x21DVCa9lZMpr/NwkVkhabx8Ndl9+S3CU=;
	h=To:Subject:From:Date:From;
	b=DO7Gic9NynRQ+aQMobXLZ5WfBgxzZozCnyfzqqCA3QPeKmYXOxeJsGQsvRidlTUJ+
	 i+o6Il5WIB6YCDpqDjJCYSSrnUwC5DVcHUPmp8P5YFECjpZG+AWFOIKNofnvgBxlaz
	 xoq5CLJMPggfnFqDZBlvhCUpiz0/DjnjBkEILNmiEIYFw8kKE5vtj7kECZFtA+gA/+
	 XSkL5N/ZulgWIupGJdEVGIZbgYhvqk4E9s+4t/iplxYSxAnFjuNPbThMIP5gKbPp9N
	 joF9Xds94jdEw5MyNIdLzRngUVCIJ/LvtyQeDzwfQR8FqBJNkxqmLDvqgmtkVYezpF
	 pxXCUl006/j/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2CAC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635819357.10720.1126842478334832124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15e50dba815da60b05c45bd70aced50622382273aa6e54587fdb63db9de3829
Date: Sun, 04 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746358193
