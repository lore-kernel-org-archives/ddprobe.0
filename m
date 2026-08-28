Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B433624A6
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787931634; cv=none; b=PyGeBfyfavr+aXyLt+nANOKTngjVnEV/PKNAfTXZnwMerDhmxuADcl6A5ngtmZRTKvPx43xnrEtVVg0r8QA2qglCU3p82MqhZ/oUoF/V8anq0YU2vd9NZOiT0flL6/XhuVWSDdz/HdI8G9CpUxg1avo78cMpEMXQZB8PA8Z1z6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787931634; c=relaxed/simple;
	bh=WOsAA7lhP0ycvI//TTfP3JVUDDQqgAZ8GjOljsz1vnI=;
	h=To:Subject:From:Message-Id:Date; b=h5K7OHPN0WsI7vBoBjEuzjMF65lbxX0aLrGPne+wbFQVFaC2/Ru/LeUzE+/UyS69chg+nWQSe2/Ze7gn+XovdlBSYAJ1wGcbrnMtKwpVDYqA4JpkSbPQT9rdV/ZHMUezFLvG31HvWqL5j2YrsA8d88dFA3bwDelZQA54fthvWzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDiA4rGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDiA4rGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72FAC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787931633;
	bh=WOsAA7lhP0ycvI//TTfP3JVUDDQqgAZ8GjOljsz1vnI=;
	h=To:Subject:From:Date:From;
	b=lDiA4rGdEOPihh19lss3ni0oz/r+CV1nxKsXPxZJnQm+PZlAyDNfgcQL8qmrg4MT5
	 5p2OUa+rxMRUsv+caZrsSDwodiIqkzFFKNjiZQ9n7OpCdMtUIa3raxx+iRVzKIqTNX
	 CUE7WZ23EFZebSW8R4KYHFmSKCH5fNTDVkd691lNXRDpmTx82AVPxApnI4o1GUfn7i
	 cX/jnsphi8vYNNXe02u8bQcXRd3ZIUxd6IjLypaSVFopCN9RyIVu/+IqEgZZDbb0VI
	 t4mKPABbMjJ4ZfINO6F9QDhE5Oxr5W+CVely0bcZ+HNbIYJWkhuYvUeiRt/+rZ9k1t
	 ofMDOH660E3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B82C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793163370.15705.4111653613993378886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a19b56bb6ea9c673be1cf48da6700358c607042e08603060636b48851e4162
Date: Fri, 28 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787931633
