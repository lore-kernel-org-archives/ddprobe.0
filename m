Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6322BF002
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784702314; cv=none; b=B3KEmCZQBfxKTV0zFbgB1xw4aF74JjG8nsmcnb+ieM8IyTNAE9hvjfu5OH7fy0c57jysqmDktCCR04KbGtCv2suRGKa3twaXX+GogC9/nhd2Di0b+UhcGOw5QB/25tnm/1Vtq7JT5NieEnwVnd4E3dk0WCGRxG1arOKTKFJ2j2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784702314; c=relaxed/simple;
	bh=OF/tCSrMukbU7qBlL8zWUic+iM1MwoBxXqo1wYo8Kos=;
	h=To:Subject:From:Message-Id:Date; b=oygdW3IH1/TyN4ekEsqjbPfq7pvKqnJOqTC8paYttsHYfbXqmJAAqnL4XjNEnk7OKr3kD9w7DgEWK3OhxQaEsAdlH15lnUGWMfvI39r/I0iijnyHF8RVaz/4Us6LSDdp9kegoYjiar+zX0rQG5GHSefpv44qhggnbxnVc1nYDEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdQlQ+l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdQlQ+l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F21C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784702313;
	bh=OF/tCSrMukbU7qBlL8zWUic+iM1MwoBxXqo1wYo8Kos=;
	h=To:Subject:From:Date:From;
	b=NdQlQ+l/zWI4cDVdBeHNuq0UZMCAfexhrOeuX49zh6USMyP0zdrAU98x2mJ5CcVgt
	 45rWx9ASiNhoUeRa1vSE+kBMXGwLZsL7XdmUCZS0fNz+Z2lHCSOLSVhazJRz1dWyXo
	 4W4iLE6ibfLMKEf5349JtMgP3Loa80+Bk0+JY9x5AjIde2nwuNXChRSUnuQCQdd3p9
	 WR+ot2kXn5m6efw76xCSnCcbK0izak7g/GISSYvpiqBbAN/2B7AY5simBHh3ESwlFi
	 rnBT3e8fh3yeqs4nsN4Or5PjtMbGj6kOLpau1lOdrRNcJRwKvwK63rm1SDx6FbmaFg
	 5bLKfy81zUImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD596C44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470231369.12525.7154747865304022167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428844e7d2706db858139c5efbaa63d023f80a42acb557dc551f3819f677bc48
Date: Wed, 22 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784702313
