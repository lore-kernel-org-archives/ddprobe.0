Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485F21E4B2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738290954; cv=none; b=CqgZx1qGHKMmjV0rhvKUbXDsc3kzRcHz8zLFYfRHn8UYVFPeCJy+NWbK8tTrvpjXE0fMtRZ/mhcHzfKBpsTpDbHJuU7ysCZJs3alAh4LfCIGj4SbtZy6WPZPbXXV7LuqgEnacBFwvgx2AL5G6GXXEKVyaIw3IdJj3fr/O3/qtyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738290954; c=relaxed/simple;
	bh=jaq/pRgh9O9c4tPD+BfvrBmwUd8ty/1obVcme2w+pdo=;
	h=To:Subject:From:Message-Id:Date; b=g6IWCB2tFIm4ab8k3fZTjkIWKq/yca3cqaBhsrv0ARY1f0buyt5/Wyb53MY2V42g7uPRY41aeMI3SehIRH180rQJBfpqhd1fIL/0wcD2evyc2N0TNeoG+myPjmoqnmJJ7oJTrG3N058x7dPzo/iuIZsj+9i1JIT7p4sTy5tfBTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTsetmXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTsetmXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30CDC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738290953;
	bh=jaq/pRgh9O9c4tPD+BfvrBmwUd8ty/1obVcme2w+pdo=;
	h=To:Subject:From:Date:From;
	b=DTsetmXs9J6GR789et620O3XI09jjZ1/J9Ckd49oNuJHeKSqyS8O3NhSaJsoEj+Nf
	 h3vW9mzpqws9853XQBa/Ubdh/rt12xNgQqNmPewVeP1zhiTXyHCXeSh/2yr3QXhrNo
	 i/nX2g+3u7pXQ9myyjp1oCezraKSWf2IPpxeiD60Rmv5O1NHLNwhR3mJ2R3l8DBveG
	 +wyaL04RY9e1oMAvdtTgoB3z6FyN87FwRENn+B39GyPJZ19FqViN4geD6erXc2nvPi
	 PhRDfzbauhwdXu66rz14NskLDkRajmHOC1tccr58jRPjEnNnEhppm1yscAJpllpg0h
	 fb11CIrKdu2LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEEAC0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173829095359.4450.16051842570149078820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08c718d06b7988369454b8f56c1f1e81625ce186c644e0542ee2526e1826cdd
Date: Fri, 31 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738290953
