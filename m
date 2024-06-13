Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6153D2A1A4
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718251703; cv=none; b=eFiOD6wmlt6KocMjt+7cOezOPGueMMX8FwQDKhykscEzhZq6sc85wOvqc+959IqVE77TtBbIYFcL4pLlC6IxXMJexg/KxW8Co1k07lqxBM6o5FxHxw0VilvLunzVYz1XQgFE0JRJYz9lcO6qtyTkw73/Odg9Gi2Q5xleKWCgEwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718251703; c=relaxed/simple;
	bh=gAaxy34/gKXr8gKsIwyBHfq+u5pBzCNiIUfAnfNYIP4=;
	h=To:Subject:From:Message-Id:Date; b=QE8ELqHqSK2ua4EC5Dh8Dj8peo0FWmUw7+3l0JgJkFazaZdLKxKUilVVrjOh5jwQR9mwol5mAhYY+G4aARXQGUswWLzQ3B5fhUqhtjSiXAOD4c/B1SDJNM8vbv7Gy+yOZ7VUdIBLiFIPMVEke2ezUzgBhYXI51RRi8Sd3KvSSrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VApt2r2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VApt2r2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE46C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718251703;
	bh=gAaxy34/gKXr8gKsIwyBHfq+u5pBzCNiIUfAnfNYIP4=;
	h=To:Subject:From:Date:From;
	b=VApt2r2roZkObqOWEaMIGnbGTi5cpMImjJ8r7251l1Bmg+pheuLVjjD647+xmxIsF
	 nM+QXE3KV/WBtidWF1Hnvb6GebRhf1qOsIedprM/I4j8k8R1Ypesc864UmNIOkDk7a
	 hwvHiM2MSq/2ZOv4uoZvy8wRFgCBqbo+3eDzLbj8j0rkk0BQg0yW4C4ZEzEKpB0LSo
	 5mmJvj0yf8Hy98yODsD6oyY+hk45A5ZTw1o+pkYv4sLmQjJqiET30dg4TZ0AuPPByI
	 fivV/fGIBpbVVMRBiGWN2IEdAl6q95Ihzw9IBhmWYr4ex9WfP7G/XXJx51rwVgLagE
	 /jkMgLQazlwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A23C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825170281.32161.4945671000938917901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac6f68750f41040af903761b7587db772dfa235a3cc512709ec699aae7306cf
Date: Thu, 13 Jun 2024 04:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718251702
