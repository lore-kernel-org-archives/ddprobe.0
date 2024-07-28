Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133464C85
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722147954; cv=none; b=k6NDhQsc1TBKluJlZLW4GvKPKJmxFodWAlfQckep3S/CQvBGunq13eBVShlqdriGVyHD3VxhrzFCgra/SnQSCjuKmqL6bAEjObozq4yNru2EIJE5aL7XhPqm9pD9TEAmfDSmWnYM+YwS2suhYVPMgBwEJ/b1r30AY4qVh0r+bnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722147954; c=relaxed/simple;
	bh=vB1drCjUDHvJhNyj36SsXNlvkLApBCcob6fNYOpMABw=;
	h=To:Subject:From:Message-Id:Date; b=cBYoc0LqB+NqTRnB+hVb9zbD+xfUuzTAdLULNTCRoMh1uhyu/RHbsMpQU65g0sDWfaCvqtnc+V2vdNqLRPQDX7J2Z0WRwAtpJ1Es6X18DRx/M2JJPCQWWzyvWb9dJkKvrCoBIkpMplAADd0WfqxBwri17bUWtsvLokmHdVBNVrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruiyYDZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruiyYDZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB199C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722147953;
	bh=vB1drCjUDHvJhNyj36SsXNlvkLApBCcob6fNYOpMABw=;
	h=To:Subject:From:Date:From;
	b=ruiyYDZrj+x/fJE8bEuWTQODWkawfdzxtPFvrF6yOicSv4hJiTrUcUK0zO5eeN9bO
	 rf6+5W2JD5M1FgoPPvFKaX13V0EiYWBP4alty95NPOPml9d8B3LfljbOnRg06+GxSh
	 HC8sIEOPwgVYx7yiZ89IOrEYpejCEoveCfyP/LyN+jlpwjEKmPsBxAC76pcTLWV3Nv
	 fDckO0AP04q6jc5SvckhfwBbhyM1Myo0BdfWDMCA2YFwHJ9wK0n7sT8OCQtcAnhCAh
	 BrC3aLw0Ele/t7puc210doywPfppGm899kx3T/jiCFamrFk8bKFWvqwX9dDVBbkpzl
	 tU9r5PdXRmQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A37C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172214795360.14872.4404914950808944599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6563a6ae1f3ad55bc86173984a24232cbf8da0eaee5ab7e310820dfd7197f2d8
Date: Sun, 28 Jul 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722147953
