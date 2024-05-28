Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628F316C6BA
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716896063; cv=none; b=cI3Js+7EEDKMtiC9AtklgxYdVFD2a2qNE+3FpRvSB4l9D/NgqFMlsHRqsqr3DemrzT1W2dRo1gJvt1T3M/TEJdXx1irG0OjHWeSSKQEzKAhbpNxifVx2IukyqzNrFR2FvcoffegFpJDYw4hs22JyG3GVyuGpwZpvV2VA5FfhhU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716896063; c=relaxed/simple;
	bh=tnJOoWnzuQuh1bPpoc2geFjC/NyL9H3aQcqD0l76Usc=;
	h=To:Subject:From:Message-Id:Date; b=XfrZgKtW3dVMYO2/P3Ou6iN/K1yHwnxLqgVemQu4a0CLwk3vWsfnQDyIW5LshBe5QLHCgT0ZEKzMjAnNoqPKJ4TrILDhH8JgKKNh3LGB6CCD8ficqvQJeVeHlK4N7WDE8ym53zPA4Q0r5CHEruIpIeRoLZ6TigTIv9LcCqnde1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keOlrOco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keOlrOco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5A9C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716896062;
	bh=tnJOoWnzuQuh1bPpoc2geFjC/NyL9H3aQcqD0l76Usc=;
	h=To:Subject:From:Date:From;
	b=keOlrOcovksR6cE5QvlEcec5HoS7osL2jStDqwixve4xcnACYl9l2Lcp2bZ6Qk4NG
	 UYmVnVGi45QDtHQdM43rR7Ba8Z6icu0JI0e6v1s3tWmhyIkIW0fa018yTEBlGprHWz
	 kByoNAqQpYa+Og3xB2Xx5RnvfHAsgU2kMXMrl6C2hlYOGNzTnMjOoLgWuODdEIPqFX
	 L+EzN0YKpNmLiui0lDn7VrT7mi811YDsu+TQQTEBdsIGd6fry3KOY5d4wwZQxoF+pM
	 s8DtBmrgfD+HUjMqCuPh+ro+tXV5v2w4VEnOY87cygXV9IQWK/STA641kaZkz3xL2W
	 RwX2GkWVDgdyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4093C27C44
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689606279.31014.12758584738774247049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776aea6de9e50959c71158b77e1208775f639534026b844c7c5c347a1a508a0e
Date: Tue, 28 May 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716896062
