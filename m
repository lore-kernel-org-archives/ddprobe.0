Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB1210184
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743532194; cv=none; b=SQnY7eswYK+SuAGYGJ9JiZLwVf0I7ZzojEjwhYBo0ury+ZYyYRNTUMPxDk4ozEkuZHs6tQamRLOrgIWI4czkcauo/6L/T7OFVFJtI34iwbxBIKwhA/CKHt0425X+xEk+HMT3T8YwYvzFzakXvcNuqZSAGTdrphpvpoWFuFcC81M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743532194; c=relaxed/simple;
	bh=o+U4/c6Nc3Lizz6m6NFGTBZT5uSl8WLYuuofHJnr68M=;
	h=To:Subject:From:Message-Id:Date; b=Zjx6LstLaJOU88LPdIf2Zo3nw2mucp2z9CsIshIOPq4mGEOkGQb3mo22L/Asfs692el8rY/B/ADzTB4M47K084gejAXNs3W585Rv2Fm0WZZUf1vw76zVWUR8yM34N6oWz7ZEJWFFakHzjHf4HEnX3goMJDUk8RqJEqYy8Zlh1sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAYW+7B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAYW+7B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31EDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743532193;
	bh=o+U4/c6Nc3Lizz6m6NFGTBZT5uSl8WLYuuofHJnr68M=;
	h=To:Subject:From:Date:From;
	b=lAYW+7B8vAD2yXPcstQocmXc9zzDTYWAyYBiCUSFFcgETWEmtbWZjR7e2QHw7aRnk
	 1WE2CtXH+3aAK6iLT1pkh3/Eldq3c95yiI6X6tZNt3OSn0IXprBdDzrCFdeIOl8VDa
	 pd11MdjdjXW2KJJW5o/j+wc7Kfuk8jah0u8ovEmLaGZEwU4532v3Hy7x7T4wWEAmVA
	 XwA3xmivlv/IneWbl5U5yhtkDVUUyJTy/L1i+c41p2Ha9p4xzzt6L+j3mzNqCBmSrH
	 GPLWji8Dbf2ELtSGYWsVJUIANcoSHzU9Q6QcUPZwKkC6z7irmgvu/xfC1XFPNpvS+F
	 k2BRF5HTtb5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C212C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353219362.22625.13855951087404648876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9acb7d51a5436bc1f5a61e4d6b3b149f1889efb2513ffac7049b85948d69d0d
Date: Tue, 01 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743532193
