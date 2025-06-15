Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285002E11A3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750028994; cv=none; b=FCWZG1YZZjEhh/gQADedscOJKO6z1HWtRQ4iJGirxY0o0Lm6ekiKXL8ervOvKs6K2wK1qB6cajIQSwjxGDoajdVR4+VqZQ7OpVG5DveDd6+jGdS21GKsk3QsghpgDyq9RGsDetGIHQrwcsbYNOL2/k2pfi/aU5HyhMKQBZ+gosE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750028994; c=relaxed/simple;
	bh=kU37t+HcYKg6Bdedh9zjudqBeN/OD7ceMo2ShHwTu7o=;
	h=To:Subject:From:Message-Id:Date; b=RZF4/By8cFK+ruSEiwXE1n/EnIFLJjnGQxbpStGKdy6L98aeA30bW/jHcfWGVOGw4sZ0ykCH65EKfAhXH7vRSIooNt3NFxwGr01QaSWGX7vcOtgZTYIj7lOO6x7E6d58meO6i4eWdCQz0UDyQlJJu28NKRIVrRt0Rs+pcUMzqcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8BMt2tM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8BMt2tM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB638C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750028993;
	bh=kU37t+HcYKg6Bdedh9zjudqBeN/OD7ceMo2ShHwTu7o=;
	h=To:Subject:From:Date:From;
	b=D8BMt2tMR/z6nhLVWpiRj3E6V+s2FC8i6mzjGPfYqchH8/Bzw8eboqq8JUf0OWWfH
	 J1o72QPHVQtv9SI7fKHzILrBz8A6+X19cnwl3tyIA9eHOsoEU6S8UOmkXRYTHlb6oh
	 t3A3YoWiJViYrIKnPP/IyBO87+cd8wwn3UO63rE23itJXKYBab6bQmHWWpSxiiSFtY
	 +zaL/++ek0AWYRYRCcG8xcuRjwpfhZBYvp1vFdC2BzbyVE+6s7a0Kn67anoNBgi/K8
	 KFUsGj/HGKtUInVXOtFCrbYI+1DZUUgO1GGQctkaADtD/pp6NdLlUsZ/yWkIntGVhn
	 XIJ5clCfdZpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD4C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002899358.21879.15090619517867627994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5870235fca0f1c5f94867a22bfd7543ca2cf0c3a4da717c785e14808265ce55
Date: Sun, 15 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750028993
