Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1A620DD79
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742323195; cv=none; b=SxTSe48ak+FqeZF8ReBelHUEFyCp5rN68jiDpgggWCI2Bi/qC/lKGwRJbKHvGRGQQp6RO2tXv4aAkvK0pxDZWM10nN8GQGLVKQVnk/VEavoKHL6fifKWUnC53VZCvPo9Y8dh3wjBM5kVXRWnRZLJQhwJaEyeBDse+ex1kAsbWf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742323195; c=relaxed/simple;
	bh=Z3YgCkuayUUxJ+aDkjoetBiImNAhBI00guhW3bYwVB4=;
	h=To:Subject:From:Message-Id:Date; b=i2zLpy0tEPzPOn6/nhwPAcB2CSNdENL7I3Ck6WnSi8zQZZcbMymhK3GlcYtPA0BnZlRiHjgMEeC/Qa9hMbm2LfD8v3U8BmemAg9FsH74HdjNW4GwStmRC/HSTVq7HyA1Fwu0hS/w8TBitvr7ybFfXUIrlyy6JdjcMfKv1NzzqK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG9qUwmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG9qUwmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6813C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742323193;
	bh=Z3YgCkuayUUxJ+aDkjoetBiImNAhBI00guhW3bYwVB4=;
	h=To:Subject:From:Date:From;
	b=GG9qUwmMHdwKXBfobk4BEf01LqJ4Ne0YpG3rXbMqHHcYvUA9hsZ79ZYy4nHtABi90
	 8yQlT59hPtqp/oxd/HLS4/cgPVd/xwuSDqgSLv35rgbcuNeQ0kfxaxwpNonZbbmTog
	 JnM+JOlXrp8e30V6OdqP259C6qgJj7D9Ua4EFVCRVlkfgTXhe24m573BR1am7NHOZB
	 V0cpnq0Sp8GNjH/BExvjHJW0F4v4CnEaq2LYKLsDp2pMbYqff9pqhkdPv+zf4zmff7
	 o17eET2Xs1nsZkjQKnR9X37kPiNetwAd4mwW0ONhgbp1y7YwJWCktWe8yp5tLsXJ1x
	 RSW5rre//cBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92909C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232319359.19883.1891509758886028544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ccca9f410f3be957ae62dddeed9d9c7e6e31aae92d5514f3aade105c734cef
Date: Tue, 18 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742323193
