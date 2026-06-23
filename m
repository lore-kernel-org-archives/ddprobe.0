Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D15E344DB1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782199594; cv=none; b=n9BBQE+2n1gQSg45WQdVH3RENB/ixueIGA14x56i1vBGJpyv9Tc/NLfScF1WK6VoZJSsfgocFD+9Mk4OK8r1OJcaIuQGwQQO+ncConsAlSWyzOtvjK48kcMDUOeFdsvSH3a2H51sNuTwtcCdNb/BgTnG9iyTE8EJkFuv+rxa6EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782199594; c=relaxed/simple;
	bh=4B0VdZ54Q/2AS9JT+NGlZKTvqdSw4kop/KFhzi6squk=;
	h=To:Subject:From:Message-Id:Date; b=fAcJ96BB1XouQfJcV68gYEiQdue/CLrW2aEWBac/tHcPG7eLJmKyLGnNhee4QJF4Px9qrLoa7tdtxKfN/L9YlRxMl/8ZUla36irobroGImuZ97ecE15R0BR8Mg9KBL/cKzDbVCn6SdxPVHDhClIFWcXzeSLvWqgln8VLFPutHUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMZsU3KB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMZsU3KB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD258C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782199593;
	bh=4B0VdZ54Q/2AS9JT+NGlZKTvqdSw4kop/KFhzi6squk=;
	h=To:Subject:From:Date:From;
	b=qMZsU3KBJy02ncRDBa/roMXRe5wxGMyZQFPr/6fVZa2hJtspTFz1G60NZmS9a9reL
	 2UBal6dw9+LmqD+tdRGucCRyCFSILX8M3NVwYcYPtIbM1Kc9hN0ZBBDD4EjplzgYTP
	 Swm92bFrmfgBKyYGIRxiUIdraRa6bd19jHnZzVPBZZ62PF4torn7C2k0QCJptSCSQu
	 9Lct09e/FK3qSsnx59L4ILGwD8Wq2ZpWNwxNmcda+qsNOQu01pojF84uCwuinrv+gv
	 oIxKStpjqCyjPuHcsCZGZMeU/RiTIviINzJ6xYfnLw+x4zaA2NsnhvZo1r2Sy7jNyz
	 g1R8+efSKLyGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD69CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219959369.927.10490731537268055487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13cd4ae71ad4d4a7d4d3901b31bb7fefd22223846d27b2d03614fc74b21feb2
Date: Tue, 23 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782199593
