Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F673B6373
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773168894; cv=none; b=t17r/VfDJS/I8tyfuHGkKzGEI2aq+yiC9Gv0kwjuYSBpgBoP5xiwHzr6aeG515p2lRoTcQPQw3yqalBYdYsjPEkVxejO0RFxGTza1zYnsW3/tQWMV1rx6IH6z1Upl7GQP94suhdFEoKneDZOlzMXdZVwISxDvNlUpbY311yeW3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773168894; c=relaxed/simple;
	bh=rErdXcvcKueNXrRYNzGAEabnwhhqmkofDcK2l5dIJZ4=;
	h=To:Subject:From:Message-Id:Date; b=UJfcYWdWHy+ZN2C5X/CIRYmw8Q/bueHWrbY7G+8/OtfsNjkPITZz69TcgzJgygYRVJHLBXnOlZN3BnFA7yjF71j3EHRDH3qP4+sNc35hO1SbNeN+LrbYjKRf18R1pPlYJFB7HNJeF+dssXnIeNr8wY3XxmHlGXX0WoVGD/6169k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzQpshKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzQpshKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B0C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773168893;
	bh=rErdXcvcKueNXrRYNzGAEabnwhhqmkofDcK2l5dIJZ4=;
	h=To:Subject:From:Date:From;
	b=MzQpshKmrh7IxER6RxIUgAhu8IVbJuCK4gNW1yq0PmD9xHt4eDYRT/qaQZH3f6djJ
	 LGcrlWGmWwFgVIRGvDsp9UZVzlMS31BTJHacUP4EA6ZLbWct7pAFsFwZXQsNTXHhbl
	 tgXgpSoVtEOHWxlsQzxstZGv2VxgdhRed51RBul+BO5ux4SgrsmCPrTt5CcydPsX7C
	 hdPShV9k5LuisqmDwEysrNye7jhE+R7E8Npibq81hMftL3BUI0xEWvHdgja5LTNPPA
	 JFpSO92ZB2mwiYfDKDwQD5i/03CvUCu7XsmMmDR2LvD+CoH6CsflJg19l2/Ci1kyPE
	 H7B22neW1E0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93768FD4F16
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316889358.15340.5125780466606454741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01af6c45a78a0e853246450b1f338508cc1adba464cbeb8def83c81eaa0c569a
Date: Tue, 10 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773168893
