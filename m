Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2304B346E64
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776512254; cv=none; b=f49c5boH1c2P+FijiX9T3lfaV4YuHIVUK3Jkjb/Zr+xMYTnVg2L8oS9DK4g1n5L70dRpl+WHVL9Qc9MgZ5MpI+irve90e9PYRzxHALK5gW9u3ZnqC6O6cr1I7OewP7a41SZ4CHlaImJEaBVSxnbxux0Zz/Gkun25LwhHKEbrzvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776512254; c=relaxed/simple;
	bh=pc3VcJlVMfw6x68tKS3NmVRhV90VyCx5ZGCVkDF0+Jw=;
	h=To:Subject:From:Message-Id:Date; b=KZ8ryCg9h9Alk4g1UNPDSOROrfxijaiusA4tfTFcCEF8LjfYuOuQulRg1UQNk6uf3kM9nVyix0T2wLZocc1FuAE9m/eI+idZ1KVE+kk+WDwUf6emvqexY27AFomEDikBHN2IVpVKn9X3cQY3FrOWPsQuVa9yh4X7vbGso84+Tow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcvNJeB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcvNJeB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F50C2BCB5
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776512253;
	bh=pc3VcJlVMfw6x68tKS3NmVRhV90VyCx5ZGCVkDF0+Jw=;
	h=To:Subject:From:Date:From;
	b=AcvNJeB0Zv1O5xP2uW2L2p/tng50BglCAvLxyz1FRnrtbcV+c64lXgYdgYbgXYo9P
	 rZbD0fq6eqG93Gc8U2eRNgr6MY+iK5DDWb+sVEpqBTwDgrk9EaA3jVlCa6uMlhhnZr
	 fBMsTRVmp3lX9xM3uRpVDFxYH7IQbK7uB73ijUeLRDNwd5OJRkvCZFu3+eiBV5/WPR
	 OWBHqN9DeztVhaHgHWxBGkgi0jQ5Y5DT9EBSN775V1TxdoM4m5w5gALKYKv2m3KllP
	 c+vzGPVfKZ/wmr+woYVayCSycQTogijXTntH/Y78OsYWHYPcKEP2+6W+Tk/+Nr8R+h
	 fd/kx0hLtkgAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA3F99C79
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651225368.28946.14130110894625934616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a55df71fe7855d6267eec0fc32a98cb7febe3a5d4602bdf450011368e25e06
Date: Sat, 18 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776512253
