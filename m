Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D53321CE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766492034; cv=none; b=nk3PB6YRMi8umetTslZ/gUtPPEEcbHOsOw80FH8KAT6I/xvDHQDpjy65nFexRDs+pE5/H9RCRA7xCLj6ik3XRroCYojhyk6RbOlrDgThtCUv9ihAfVhz3lJEj7Ua8Ce+gKgGZpzCKdC9U360C6iXYFXi9G0DFtgEGDbjcWcLnBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766492034; c=relaxed/simple;
	bh=VZ08f4mrblXRHzzDXNKopGnUqJVvpIjXdk0b1xrYoG0=;
	h=To:Subject:From:Message-Id:Date; b=TRCREvm2EAf52v/DS4oboihXAz6hxhwnfiuxeFkmvCjYFu/qArk/32yfBvyt9PxHyvQ2t6BplzFSGmBAEHa0u+xAKuNTfwAJCIgYLqBaSxgChLKFY+kW1PpUOXg2/bnF/5M7T7h5g/O2/fNT3Dlmf6/Hs+HDRPnZ8uvNStz9odE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpRHYgTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpRHYgTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766492033;
	bh=VZ08f4mrblXRHzzDXNKopGnUqJVvpIjXdk0b1xrYoG0=;
	h=To:Subject:From:Date:From;
	b=fpRHYgTMHuKPQKUHbv6a/Sfhig0Kei3k1hUaWRSxfEg7ItYo0q9upVyuBvtNsdwnR
	 rC0mccGdzYAYxhXhh/RG7U1CHFp/qvqTwu6mZA56s3iB5QuzN0liEgEhqm5C7Lf97x
	 PgmLTqcCcfxrHrfelqpqWNzUMAdDWKanqxJdHRE4hQRwz/atk+j1WewSLfro6TmjQE
	 65F9WM4R5UV2IsnPdyNrBmR9FNIXW/jlUjwh5v5ssq28YaxSZUQzEJAQVeiIJGDSr/
	 7OciOF3nsYg0vCITxgVdMDIMw24r+UMoVYEYdMjyXBT3ykJVCDt1GzkULnFYA85LdI
	 1qT9yP1ndt2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92452E6F084
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649203357.10992.11488123188345818905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b6978e278efddbda85d37263aba28382e63bd84e8dbb1004d1d173e728bf44
Date: Tue, 23 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766492033
