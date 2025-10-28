Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4629129D280
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761641994; cv=none; b=nxPOPBiundLDLCxs/XXISGPLxeMUBzfLGn86zUSWysV20KY43frU38xylXyllN+gNmTyfc7r/PKVVogLgA9N+cMrnsJ2yEH6X4MjkhLmdTAqML0+Mq3P5hhTMAKLp9EEGINicNkGwGzOxo55qxRuiRLOacPDk6c4zhaaNrOS3lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761641994; c=relaxed/simple;
	bh=cWzq0C4tB8zqW2meg4cDpNxXNGrgTBxcjU5ob78IJb8=;
	h=To:Subject:From:Message-Id:Date; b=ATTz+/vFLgzRG4xdplxw1/2aEAw1y9kS5JkoU5EqfBwlVysNYLJofrXLrgqYjkSiJLLDH3cln4VmjmEWtx95fcgqjRN12R4OowYVvidCxfH6buH8sWBO2I3WCtG4X093Vdw3gsJVQ10Zbtqi8VgCHrz2EdogqNToX5uQxbyzOJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYXxeI5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYXxeI5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9173C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761641993;
	bh=cWzq0C4tB8zqW2meg4cDpNxXNGrgTBxcjU5ob78IJb8=;
	h=To:Subject:From:Date:From;
	b=dYXxeI5uKSOs7vKgL7WlujjFAvXQlxSYnEs4Tbgg58xMEPestrIFntpa4qob92/+9
	 OyAC3SCfJCBckuvKGUMdMs5sjQwgoLv1gcws0mVew1JidBNSOkG6d6ZnD/umGhL1W9
	 unQ76vm76Ni1FBF2OblnonycEVHlDX8L8CJ5qFwpsAzSBtvLLZSPW15Df2edONUdzw
	 qBOIOkUflme8YBEDbSCxvKPm7BNHg0gJVGPVaDlRJwXrrER7ghGbCIwY36//0J9cfx
	 7yu6yCvrh5OPoM0HYxU441AJAnb4e4Zy9zX3EUqSaBAobTZ8B9CwaRU5LW7FvxtiMr
	 HSiJ2DYgzK7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8F1CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164199364.13764.13763905735114491019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d6403c7ce33600fd240de881440f409ea403f56c878bae54f46dbb431afe7c
Date: Tue, 28 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761641993
