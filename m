Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F691548C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755320394; cv=none; b=IVpynrlmP36icHC0pIWmMCbAkEOy3pgFls8LXPFTYvz77Mds5lnjP+G3oOjiJ50AWr3FSsE9h86b4t8BbMKram7W02dn4aAnMwzW8ZjL2o7RlDUYSMGcYFrsOntDVBpEGNva6UVCRv71LBabM69b4zlS8b48KT6Mvwyj5fgoFF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755320394; c=relaxed/simple;
	bh=VJY1psjT2T/YOU504Y0oj/mRjk5GDwFh24OOmLI9NdI=;
	h=To:Subject:From:Message-Id:Date; b=mkWjaCioDuWtmgbeWuhnWp6SV6ww8IvoYQZIlItIG3/icXUMm7GjzIoHJ5HLCCy05v5dhpfcntD7WC+Wwr7Mp2oq9K24jYRmFrgZfOBM/i+cLpfAFY6bXOcX5izkNqpZ92fYuo9cc6cK1758lJwW4wxlQKbU85sBlIr2dH2m3Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eew7Kdnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eew7Kdnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF30C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755320393;
	bh=VJY1psjT2T/YOU504Y0oj/mRjk5GDwFh24OOmLI9NdI=;
	h=To:Subject:From:Date:From;
	b=eew7KdnhFi/G1CCybl6dtFix7iq9lPF6lpkTrhb6JGEsUVmoQsoI2iOFFcnsjW7G4
	 7x9UMiBHMLbAH4Nj3DZug9bPmQoRfevZA+Hkf2M1BL/cj56S2kKxx6LG/kGsNp1fnr
	 GZOT4R4Tsk/+WdtP8EVYNv5SKYUuAlIYLPl/it67Ff0T5dkZlCqb+vvHr9d5ntwvW+
	 QozRCNCa2f/fPujqztlD2gm/0U+ukxqDSTFarUasAqjZElLRshj0KMlLVx+pjDM7PW
	 U6uy1B4Gxbaxx2bDmOYc2v1A2WY29d8GBWwFHwwdef5cYGwGvRgSzGBmZmYoFI+HGw
	 2UvymbGEElm2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5ECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532039357.4794.10120979498791867255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e00e77f1171b52f0fd1ea8239aca89add2444b11a9c40990bbb68f39555e2ac
Date: Sat, 16 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755320393
