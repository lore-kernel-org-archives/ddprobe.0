Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2607A1D5CFB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776599254; cv=none; b=CGd858gldBVSsDBisjFx7f1IJnpgo71v4CfBTOubY/QQjGeUQLKa5y3s/bVaLwZD36M54NI5Q15djL7SRMB24XuaWvbv4ece430GgQoeiuyNy3X8WAlLzfGJn8CwmRR3U63FXl8aUPu1AxOl3VRDmKr8SYiBX0NBZzUPFOEfSVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776599254; c=relaxed/simple;
	bh=chL7guBVRlh8Oin2c4bIxyllwTHANL3XiNiLHwmXcDU=;
	h=To:Subject:From:Message-Id:Date; b=bxpeA/5dXIGc5xJClFe19I8pS82F9k9loGSD23MU/oLl/Tyj6pssmr6wsRyAxNlBSRMsW2N0n5xtKEMTgqYZWy8RZSGT9ZDGSVLGSoYVUdp4yDZExpTrmY8p9zgEJbAqvbSBbHCqEbpr5te5KaaqkgKQdqnPZSsqfUA6w1ZqnMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpi9PzqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpi9PzqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED5AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776599253;
	bh=chL7guBVRlh8Oin2c4bIxyllwTHANL3XiNiLHwmXcDU=;
	h=To:Subject:From:Date:From;
	b=mpi9PzqIEH+5epV7FHz7FArHFBnMySR4fmr1EO4FS9MTDpQrg924bzy1lml4PqQz5
	 MTT1uvOplOqG8h3paYX4P03p6UW4nqMuEvEDaKWxQi+NR/axFowPFCIECORyBkGVln
	 TG7wvzd5O5iYVY+AuUcGrE5ObGD8rDYtmAZBNoHzer8T6UeoZmIdbh81yAqZdibIli
	 6ktOj5L33CKdJPxl/kSPg6xLzD+YyZ3LDCkE0StX4YDU/e0nYnVYNPGxirw76RO7fZ
	 fMnS3u41QYK5neLBJjVQpjaDjUTj3RFKdf4OQS54ATC8rNiJzuqsvbmdiyA44G19ot
	 /b9f/kUdKWp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE6DEA7196
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659925368.2632.2917107275758424736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3dc5484064fbff71b6325fd471c95cb1cfbbcfc8779b0a977f35558c7e5c4c
Date: Sun, 19 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776599253
