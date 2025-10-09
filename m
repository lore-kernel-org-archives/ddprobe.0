Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165B22EBBAD
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760022594; cv=none; b=VE3xkySlx+Y0ZqPs9OvIhhX7aMdBL8/Kmqjy90ztMndKY8AwRHjjSg1A4tOliIbTnKYd2xquHuHzftOhpY7rVFSS8OGjZptkO8MK8rI3vdEn32g75+jRCpQIPp+uMS0qU3FFG/VqGB4UNz3AN8ZcMJCAEw8hOP9YWC8gluNSE58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760022594; c=relaxed/simple;
	bh=I64/cOQy/NaLhZFqSHiTbjNqZwZyUBCIaYuHaMyfd1E=;
	h=To:Subject:From:Message-Id:Date; b=eyTOrPX2JW/Mfw+Q6D6YgX1a0zBdtYXUVhqH74qTFGCqX9zFk8kvrL9Xt1D+ONX/Z/I+SyaIclc51i/AzPtfCb/S5crlgiitK0rpWb6xy8mGK7l1mY4gmsd+wQOZSfg0ea59IAmbJsGleX90OxMLgaacsd0V3fuLz8JgQLRTc4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCQa77hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCQa77hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D6C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760022593;
	bh=I64/cOQy/NaLhZFqSHiTbjNqZwZyUBCIaYuHaMyfd1E=;
	h=To:Subject:From:Date:From;
	b=VCQa77hA9WjAhgQCXIevWN2JbPK78hn/iV7QMFiAox24B5xJ0Nzz2TqZrwVY83jZB
	 8HEEwsdCAzp5BtQpGG/3TYiwbeG7CVJdw1kWuiAquxFF7KXsm/Pq1m8RdePXf5xtDs
	 kOD4NqdkaGlXwbjnDBikn7DnV7l+ngQApF/EsvwDEMwjkuFc4NDQs+89GR/NE0GDYN
	 f8WrcBoIR6wi5QFSD7xik50i1e5gCi0mQsXfOIi4Z6u45suz0xrdb7bG7rfJ9AusUQ
	 rHi9wDYUKDpZzxtP39u1M7xdA3BVSSM2i1AH9Nvub3GU14P5/NQEXziBGHegj4vMzg
	 DJxcqhpVnTk+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90110CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002259358.4405.2107969045259517351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae386a90fe6dbbe4b668329e1b12ab710a3a91e38f2e865b6b0dcb5a740dde7f
Date: Thu, 09 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760022593
