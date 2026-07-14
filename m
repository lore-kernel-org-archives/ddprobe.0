Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E5E223707
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784000914; cv=none; b=uzaivd5mB4qAWoZ/T0GM5BNs+If8ZucYTqzWzhHhG+zaxQtAm3zSrVVlQEnyOLz3V44Z/L8T2glJmSBPNkCZyf8XD7m2YIlQVF3F4DAD12dyQ2cLxm+E26AciQKpvf/nG04u2Iwwoor70va5lhky2q87U8C06MZLZNgAMDDtEW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784000914; c=relaxed/simple;
	bh=Z2j7fxxxB+vmolRMjO7nVfxwVFG4zbkCcRnzlyBavcY=;
	h=To:Subject:From:Message-Id:Date; b=buYZ9SmW7Hs7oXNW6Xag0nrI1MvSmWF/MiDuBO+9An5I0xvRjLVbXOGvanxKNQcr8tahBNsnDkcbV7CsRPyLovAPnHKNAYwcnClt44HY8qvqZE0wvNapa6el9zBnsF1kLK1ZWCEVSbtbXZrJ4ShEkx0R2rC2eJVW3hyKGcHj9jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpdfsrDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpdfsrDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF127C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784000913;
	bh=Z2j7fxxxB+vmolRMjO7nVfxwVFG4zbkCcRnzlyBavcY=;
	h=To:Subject:From:Date:From;
	b=lpdfsrDJ0ReXwABe0fzp+C8/1IUb9WYs5oxbCWA6LaJLvcpZnuEOPEHiI3aQyMI+3
	 JKg66tVFDXc++k6Rh9gT/n5eqyPIRWgbwaIrK4UzfXwhI2Z8ZfQYQSp/VzfI9sHoX+
	 EamzdrjeGS3GFsFlGoneYYngeJVE1PZ3BJ06lGt2LZimYkwlnKNKxV/iyMRiCF0Jz2
	 muLza2DYnuqHm01UWifvZm7D6WmAosJlGCoX+wsHBYAaIzMyrD7Q3AcgntblqmturB
	 vYnJqokhvX0jnUAABCfScBN7rvOwTA6x//7hD4KZ+u2MWjzrSDGzlmG7JF67NDlshJ
	 j6Vdmsiud5Y4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FEC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400091368.30937.18251361953643955109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2582822226cb20d596af09d0019dd8303022d76ad7ba848fdff9a1aa51a44e19
Date: Tue, 14 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784000913
