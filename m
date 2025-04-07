Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1A01CB337
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744060794; cv=none; b=TltSrQG6sHuANu3LLTfTcBLCBOQw/GF7LRlY7oMTarCEYF7xySEt+IUt0BxNbYg+nVnzEKwsxCbDUt8RjztpCrzsaScugqHwUTpWS9jWDOcySSSkCoCqiJUfotK5HXwNeS/NWpfEa1IbpIVPxqQxVLwguHx3aUhWBW8U7ikmGjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744060794; c=relaxed/simple;
	bh=XPWmdD1xhbBLHx/UNv7zLKWZKScwx5qb4tXv1yMvu3c=;
	h=To:Subject:From:Message-Id:Date; b=cZTLbLxyNOujtUxJLWsJ+HjH54lQPc8APMUU+EHzBuqVtEyt8WPdpkrzAW8IvTL1ncQupt4z+gr4ADgUOEyUE6iOjVs/4A1qeBdOS1hEVkGJpTGb8Bq8CYLn6vIPJQv/O212XN6DyvDmbYgj1DfZakHXWwShIQLLNFj4dZ/eiS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovnpn2fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovnpn2fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F339C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744060793;
	bh=XPWmdD1xhbBLHx/UNv7zLKWZKScwx5qb4tXv1yMvu3c=;
	h=To:Subject:From:Date:From;
	b=ovnpn2fIH1AfczUqQ/tSjWXipZaexaYYVmGe4yHBwe3aUAvv0BAsJCblEgPftm2at
	 5Rp0LcHVQJxtoNV9b6YGf5ZfsVWUrpu9i4XwhiQIzHrtQIs6jTsyUtCvhCQwqVzIRf
	 Hs7FMXNdVim+WGh/mzT8NpmMxUnxCnWP16oVPR/VxZlHekcUEGgWu1QhtBS47rMzyp
	 R9730RHoeQGQ8JmjhMSMrPUyjC5dHXnVLxHeWGD6yJkQTpQKOdkrKUF6Tk+cF93EVq
	 0qIkIobN+RGs32Hcdh4qr5rxb/rlDMPP+E6W4l1CKcv1yKcnNvScEEHRmOIxPulscT
	 U+sino0HZQ2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9FC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406079358.13434.16203331496962797095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8bf8ee065f261ad718fa42e7d097c5760e8dda2b6f32a57e78f25bed19d5b4
Date: Mon, 07 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744060793
