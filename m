Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E55632
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787980234; cv=none; b=rILcFIJgR+FFKjMmYp9V9LCNlXKNgHUS9roVOyqRmYTUXUYaDSFaULkIqLVp+9UzI2B+uChJc8zCVvRYQqhLc2qR9zjnFoOJZuJYgB+Bvs7TtODHTPdHd+Lge3+UHADD6+/NdhRIRk0qNhXV17Vo+PKtn3gNLmE+7aUqHV1jbvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787980234; c=relaxed/simple;
	bh=LO5hcXZ7Y0C9EK5RREl4n7yHRMMlSuSSJXu9mBtoHv4=;
	h=To:Subject:From:Message-Id:Date; b=ADIzDkPPdRVTZQXxS1gBPX2c5kMb1tkvTSd2clx2YYr3GroZd2ga0bWMs4YSYftiZ3bXYKHoxdUgwg/q+hloh0XXLmss9nOy60GT96X0W5FCki1hPqkaKhTYdC/RygtVey3L41O3i654PkBkZEmteXa4JkPU3voHTg9nL8LD3/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN1ztTKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN1ztTKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D5CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787980233;
	bh=LO5hcXZ7Y0C9EK5RREl4n7yHRMMlSuSSJXu9mBtoHv4=;
	h=To:Subject:From:Date:From;
	b=sN1ztTKRXsPY+8RHjXAMx/yHrVh1MJ8qHC2fE9nrDOJGJVnbOxzvX3XOfVfJ8Lbji
	 4CeUmdLAMDM5H6ozlYhK6v4IFHa3cXNTHPGRMP3BRnCBIfYhyfA1pcR+iaQgu+EOY9
	 O/5dM5ZWZqwkMU5bQ3smnned/HfzQCsd/Af2UiESNluBsWDAdt2r/gvMIWZk3g/B1U
	 khfA4k5nHzBhiG1CeYH9w/jDcsG8qhFJL9hFtp3RSNTXRWC12dQM6A3M6W9egxO/45
	 SMri5aoVj5E/QsO+iWtgdAIDCh6S2fXo5cTsKdXiHjxFv3eURfhPxQqiLkw82/uxUW
	 LMk3M1I5KlBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1129C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798023369.7610.10485370312391277577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefcae3e42fe214e918ca6e009d3419137343481c5b9a885f6d52003a8bd6d6e
Date: Sat, 29 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787980233
