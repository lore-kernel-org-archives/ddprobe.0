Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0F02DC76A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784324314; cv=none; b=Endfy9AR4LOhOmwvDiey0622ih6sYICJHiMQpZzv1WlpPEsAbmnBxVk692LKuEiSd0mGWFFw03/I3vtx7KOfB6jCOhp97eUWlDqyfNYMwrK/bqHuAD8AxesBqbsutK0OYaoA3AY8+6XHxRoFmunYyFjespQCgQMQTrqe67SsOMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784324314; c=relaxed/simple;
	bh=kBnlRsZDBrrkZVNJ0BuC0wVFcyf+cL5FsbDIyzs7k40=;
	h=To:Subject:From:Message-Id:Date; b=h1gIyRjFZoOchV8iTV43DGVApJJ8gpZ/671bxttnVNxTvnEpxmZeKxycaScINtLfTjDTp456B+LA+IASb18aFtsTNbLoA9ejBEMUqvw+jMshGO+Tljtl5241yvVIxvKBbJJ33cBtOXw6aR4M/ot4HxI02TRDE6c3VOmRBxqEnJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx/Pc+fJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx/Pc+fJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C9DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784324313;
	bh=kBnlRsZDBrrkZVNJ0BuC0wVFcyf+cL5FsbDIyzs7k40=;
	h=To:Subject:From:Date:From;
	b=Sx/Pc+fJh+AWzS/RO34FsJcHrPnfxSXcK+sxz6ls6YrI/RjG21+uASR+YBRVBG50b
	 mMf/+ZT1h0fvYey/8lqPvr6q7lG4pcYxLirDucgjVWCjTIxCpqz8WaB7j0d7jTxfKJ
	 YIubJUhrKVmb4ZK27n4TfNnK/N5F61GHJ8moKGSPz4e6iSFkEjOhfCfK0qAqmUHxMV
	 xNRahTeUHjD21PSaO4JI7xBz0DLmfyRGjbZGnIugIBEW3HpfN3RPkPCi93LxXFZs+k
	 uPJTprHZrU9+9Fre5XoMTtlVmfLxEvwdidptWltsyE7sfQmSOu2Rb35ct4KE6l+rHI
	 PaQI7P9UDr89Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04F2C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432431370.26898.1546924551831316450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771f1bd7f410035b99fb6fdd4e3edfdc31bdbfe33fe95cf3c466238fcfaeea95
Date: Fri, 17 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784324313
