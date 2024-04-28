Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D31242AA3
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714311743; cv=none; b=PXMRQukGI1oa09AYRJBHHNs/1CVg2y+cp9gfuvxumoZseHpcflU40/No4QM093Y8xrKyCqYsdmlRl3J6tWSR1RtaLqlRxmuZpmv42mm+sLdvJQTdKAPubYSVi8Y134oW6G2UBBetVS3C57wc67Zf7/JL1eAs0/QkgPfiSJ8tYBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714311743; c=relaxed/simple;
	bh=UhEqXV9JYkLXkHqmQEly5AzjJ2HTjUwHrLENPsDFxmE=;
	h=To:Subject:From:Message-Id:Date; b=HLQU5RZcHH8nEwV1jv9rP16tircClWtMCAUr4+J0MtzrYMYzR0I/1a/eXUA+sXSG4LjQfN9f2H+3h78JK6aH6qXCSuC7AJ6rXQ+GVXgARk8b8bBGBMstq1q9AhmuqAKnInvCLrDvGY7/To93MKtJQnWNwXkY1eZl5RKmjMUprGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGb82Ws+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGb82Ws+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B9BC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714311742;
	bh=UhEqXV9JYkLXkHqmQEly5AzjJ2HTjUwHrLENPsDFxmE=;
	h=To:Subject:From:Date:From;
	b=mGb82Ws+GvPpojuXPS4jXZ4c8h47lRMmi4JvxP2KxX+HrlUaH2izO3Okg9BIuVQiA
	 FPDO/sYCx8Luu6X2dsanKuAjWqmQdkXjEbegqIduqAvMQcb6iVL/1J6bNsXDzhplfC
	 OvGhl3lDFlTFUc1G88wLalkUAxK7m2Q4abGZD6DB90hJgZFSzE52pOgmk2/U1Racif
	 tZ/cQCK91o8HvSXh44/IFCrGf8m7o/R3I6yHd550dcmwcRFEyr5VgNG9SeYPmDgfWC
	 JcwJP0myEbVqZA7mkrt5ghA7vu4Avx+43JiZHGv/TN2z2UtZCvUZSVuba2SzqKnSwt
	 qBQbpr1EXNzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2EAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431174275.10472.10093508430060684412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c557ac09e596b5c679978b4e5a70c83f72a0de6658362371f86d5c9a37f454
Date: Sun, 28 Apr 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714311742
