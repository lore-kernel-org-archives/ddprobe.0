Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A083DA7CC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792364434; cv=none; b=IBaOsPABIG29JRs6kO9lTENxWH9F5HgV96Na5AGw54timT9x4RQbGFKfYYQdVDdYdn57HoTz9dtlMvfsgZ3tEQvevEHXRn5c4xAXTpNjDimjz/sFm+r1DVzVP4Avd+j63XfinlxhXXCVQbezxVpH2qZ3AtE4MFqjmucHNkBVKkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792364434; c=relaxed/simple;
	bh=7HgKN/JJ56YvN1eRhSL28IPCr0O2ax5/6JzV1efRmVw=;
	h=To:Subject:From:Message-Id:Date; b=cSen7lCN98h3vohrFqdupz/YPyNcrWGs16KltUfuq8qcl1lVv4BL8UTMsW9ga11ZUdwZkrC2ca2CRdFQM0Eqgb6Cj12C/0MMVE/r8ICejYiK2Q6VBEGRn0jjtDjArNfXX7evOCl2TLNXgHWibK6EEutXDQ6tmHujc64UesFba2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhy2rDrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhy2rDrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DF4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792364433;
	bh=7HgKN/JJ56YvN1eRhSL28IPCr0O2ax5/6JzV1efRmVw=;
	h=To:Subject:From:Date:From;
	b=Vhy2rDrhzBaN6jotT+fizHGrRt3Z86XL3uXuDZGwXaHgbuvFQoOcuhhGg+r0nZ4nz
	 wEN78ut61wIb2QHCqFwK4To3f23gSRwFLVOgi9KAKHM0eOKRhHj3eOsJ+iUsDXTA+R
	 R1oai+IpWmZf5NjvXCz1RQ3oHELiaFdpy+6yUIBF7YoDV8dpmemX9XNa1NutTFPvcq
	 x/bMkUZ+8brUY3tX959Nkhu5GwSlk75GFx9z1WQ6X5oruZLHm60HswKip80zQd02lk
	 6ni4wQPtFNl+5zyzrvLJ/v6j/HREifvAqa1JRb8yXuqglwYl80dHV/8SfU0JRpXKUT
	 ++95LlkWwatwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA63BCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236443368.30846.18074776470869669788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a953ac2c3b882a7046d62550a85ab00e9b53db377502cb078c5cc53908800905
Date: Sun, 18 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792364433
