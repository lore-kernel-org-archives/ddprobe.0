Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4620036CE03
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781215594; cv=none; b=d4VbdIM8X7XG05/1gwMV66LAPflKdeDRD6YmfwjZCpxbrD3O5rTdA+j4yrVObTIHIaURVcnJQ8SbG7RYJmQfEjpDm4KVn5L1ib3vlGwv06Mc0bkcjpv099RFt4LfkjON/j5AjoVt18ai3jc3OmTZlK38Q75amyatrY3St5ht2+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781215594; c=relaxed/simple;
	bh=BWt8fn0p6r0FYjkahSUsTz3No4S+il9jSuD68OvZD6g=;
	h=To:Subject:From:Message-Id:Date; b=AJYfaoAthT0BM1ovuK4Z5yHIxzw0nicuTAbvUTGsL4PAvshE4vUjuTgNAI9ykbZo1OYAMIxV61h+ix5wt79nBQHoHHn4eJuQw7ZaxIlsLXnTxkaqT2GnCVJzYAR4Mpn8DNB9wITpuTJXtsvEbJ/BbjPMM5TAXH/ymHbjHnLUmO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMJ/sGT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMJ/sGT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACCCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781215593;
	bh=BWt8fn0p6r0FYjkahSUsTz3No4S+il9jSuD68OvZD6g=;
	h=To:Subject:From:Date:From;
	b=MMJ/sGT5ICddk9VIhO4Ypx9w5LB4bY+V3JHXrkKwFHtM1BMsqwpTtTjQga3DxEn1z
	 N6W+kFloSYBmd3AnQXVWfaw0/L9zfJANW8FPuD2HR3Vzpv9dGqZ4iQj9d3gXUI4VBH
	 o4Bw2vdYwbKKP9pJdifgsjCCmZCxEY68ayDDjvnBFZ6rH9pTbVh2JOdLa6MdivQAQv
	 l3dbFjV5u0T+ckToDCBoS7Fx9CVds8LV+VB522MueloCgnhrF0fYuYmJAoQcvw0kyQ
	 mVpZvolwc0brO+hvphf6U57a2V/eDco8ry+SFvf+kf0iSFMgxO4gqVxP60OnEf/APM
	 Zm/wGuB7Jnw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB03CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121559370.31129.718173835841248204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cbf0da63a15c827fc5e97e79b57ae9fd7d8476c5dfd708053d6500dc68f1b5
Date: Thu, 11 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781215593
