Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2536E2459E1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759058995; cv=none; b=osVfCpfizVUuxe7LWDYOwqU/5tsZo+BL0I1PIkNZvvkkwPygGp9ZddmO0Dgbm3AjYzC90Z94ahntI2NT5Ta41KUFV/Unw0I+jcl5tglXK0rS3RFW5KDmw6noe7gmDS0dlZQfz70VJ/QRN9iYueu1gYLJVvcddtXORYR41TrYA8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759058995; c=relaxed/simple;
	bh=Q3bmUbQ8oNifbr4FpuBJbhH4xe/FR0A6eMAGTW7d+cA=;
	h=To:Subject:From:Message-Id:Date; b=RLm2/+wCfQpXW0ybaLhzN/q/PxU2i3//4yPKxX0eBXAMdAcQZvi/Yuo8TIsvht6tQp9J86fMAJp1c6Eb5BeB3FxKuet0IuqnuqoC9qrybPFNMZpo0+HRe7YWehpOgF6K2wK4ifd0i+hSuerVHYGzXrLLL2DnT1DRcYk9nnyH+TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrH7utUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrH7utUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759058993;
	bh=Q3bmUbQ8oNifbr4FpuBJbhH4xe/FR0A6eMAGTW7d+cA=;
	h=To:Subject:From:Date:From;
	b=jrH7utUgsN+9VxYmwlY3m/sjJVxVpEnWFnOy6+QJ7lmemyrVZ7KJDCUI9mexBccz4
	 9ExbgUrZyFbWcmXrz/Acow0Q1v4+kex+hKV0cBiQ/920nQJ542amRRRa16qbIBrLnc
	 7NS8JiGsF9v3GagEcB3z7Ore1yM9xkaUvdplNrirxYrg+C37Sf0PjegDliIlJoirBj
	 I/fDAQ/YD4yuHhnLuWRK1B9vC47pD+JvihtSAFBCa+58WSaphygSkUYc7OiWG+UEdN
	 53NaY8DcpFqI0ec8TE54Mf4093nBzOZanWwaRne0QWz37/z3lE/RSjvD7837yClGKD
	 g1WPVzo+XoLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ACCAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905899358.13465.8600534490842884424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f63606a0b48343b7150253ee0546b32f9ba69a32618e90b0c6c16faf6bb1d85
Date: Sun, 28 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759058993
