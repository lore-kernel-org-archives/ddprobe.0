Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239152BCF46
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781969794; cv=none; b=eaWR+5jx6QLI+4X4eORDTQRqscLZ2rfODMxYApUqguHgFO81Hnnx5AiRJO9+WkeUaMFd2OPwGIxIXXVJzEZXIvBadvtFXtj2bshVugAXqe1ppjI8IhqjowUhuSJHuU5mR8D9TGCiCqzPc6EgqVtzkjewtN3KNTaFpb5xvsN84RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781969794; c=relaxed/simple;
	bh=MT8xpE9CdPk1YNxfVWE0p+WAud5ZFB/nMhXcfYmaLKg=;
	h=To:Subject:From:Message-Id:Date; b=SHUDbjc3r+g5WE983y68jQMW6dEdJEZ7vk0c1W0eY1NvO3/sLB7OAyfFfownOF2mO0Eqg1wASTEcnEYaEMBV7JhhpUzLhJVt2V/ohKNIKDOyp7jvh2VvzsJAr+9Fuq3sc4vt8pCWPwUTf88t7GWFwmL9MLuSH5g1tuKnYyzL/ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuC1rZ2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuC1rZ2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05D0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781969793;
	bh=MT8xpE9CdPk1YNxfVWE0p+WAud5ZFB/nMhXcfYmaLKg=;
	h=To:Subject:From:Date:From;
	b=cuC1rZ2xB08xPL0jrSwptG2QY6rWG6tvLilZvjNI/V0n0dXCHUUUCAs0rjXh/qK3D
	 qKIpTVBrkCqWiS/N34ly1DqjFIdEft9vlS8a3YYCoyCeIQblk/QZT2eb3BGDonil6d
	 BKbWxUbJj7wcChNXpClzX5B+FJLZ4M7zBDnrFKVX/7WA+V496rjQA0L7XUiSad2/RP
	 FQo5xWnU0JdLRU6LumEOMSQ+bHxAUiZvkKgavQbid/trrnYxGqj4PPcXUXu08/WbLK
	 J924ZkHV4PTncTfIdOuEYpnobVCk/4/Pn5F/W2RZ/mhneRzlt+b2wjslhaxybQeBMd
	 ccFIH+ssC4rjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FC4CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196979369.14252.16753348466244165490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276c9fe0f89c939efcd2525eccd7b76653f29c1479b92e7c8e0438a5f753e90c
Date: Sat, 20 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781969793
