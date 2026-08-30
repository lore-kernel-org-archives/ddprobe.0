Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F82F19CD0A
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788125434; cv=none; b=aCpz9Kcxn44kjaZhZ8LmuaR60vNfPalqJKFedqwJcP9VcPCxJb/hwC9PlXgsUHaJHPdNYJaqjPGRkVyeG5MfkZj/noe/R8qqk+qtrpeYaUbG0nVVyJm6UfE2AuThG1tly8S/1E9PVI7sFiD61/bwS+N4t39V11oG3P3p6u7x1ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788125434; c=relaxed/simple;
	bh=l+iAM/RWE72SBau0QUQHDCZLhHvFwFE9hFVb/PZca9w=;
	h=To:Subject:From:Message-Id:Date; b=T1eiwVRpBC97PDhSKh3UCYmMdGxMLZC/adjs1/XlN7gYj4SKJGwLAtnCXq7iGdxfOJTdDnjBZBlrG4mKZFO0U3mum/U6WLBCnCT2Pr8bNVJEr9ZyVUVPdsb2KZx/XVjizVh1GugLgS1QZuxOIs8rai+Qd5HmqczgH4ayCDeZPIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr3AWsfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr3AWsfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECEAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788125433;
	bh=l+iAM/RWE72SBau0QUQHDCZLhHvFwFE9hFVb/PZca9w=;
	h=To:Subject:From:Date:From;
	b=Xr3AWsfJfW6ACYlIuT+X8TzscZajLwNgEJFDyX8uCDhabD+xqwy/np9SczlvzJF5v
	 MkczbT02edmRVQhUPSGwHhmysS9oGPYmggf2yFIHJ/IOJ3hGvTyE0hXSmiX0uzbmM9
	 3pvIlZQH812l2TVE5yZaQGIRMEAWbTDwbBmtYWJxbwA6G85sfXvNXKEVGK0ESvePIc
	 yTEvtNzUJU/f2P+VwYjRgBsxQC4QExxn2m/PoHxhhapYSSvbydI9Wod/TE5vCjEknH
	 rrj1brbX85hUG8lSIFfWebFamEY+gf/rQkH4mGzBmJaFTWX4SJlOD6pHSXEZ/cbpZ3
	 qWSz6EX2MRVNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA01BC61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812543368.16676.11287096651130238522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763123bedb3063c1ac425ed79e5a0a1e17ac106f3c44e9a518978e4e595369a6
Date: Sun, 30 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788125433
