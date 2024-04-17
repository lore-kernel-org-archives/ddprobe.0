Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5977141C6C
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713328163; cv=none; b=PyuSr4jLY8ZnNDy6t9d5zHTNRoFJ9iinxgFxp6pSiwW41De/89JJ/688dJz0RGcMC/izoDsDOY5rflLqnRRpOMTDcpSzOP0/V4PKIHe1Lx2mGDffLPJXG/rWEUXP19n6gXgxkiL4r4XYOvlBQjOqBWMhdTH06vvpMdc4X2Pa7DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713328163; c=relaxed/simple;
	bh=kkNQ6z6O80iKdvCn3vwE7jk6ym970DZdlTEOeTGQyQI=;
	h=To:Subject:From:Message-Id:Date; b=G5Z5l1ulZIKYFhwNktSlwIsTtAcQ6cibqMbH27jcyfimUO/Z7tmJDxlFQdHYFK7oNDa9vME9wE3yIGhIcBkJyyVnvSdYriGGwMb0Ezz3heqcW8BU1Ei7WUuc7wwSwVK6G/QnEHwNUlGdiUpgNLIBpq7DDDGpeDsklejACY4DCeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q43W3wCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q43W3wCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9967C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713328162;
	bh=kkNQ6z6O80iKdvCn3vwE7jk6ym970DZdlTEOeTGQyQI=;
	h=To:Subject:From:Date:From;
	b=q43W3wCJXj0+iPkuQX2SEVYXk9NCWurdLmWWu3qs8U1sQSUAjRsOz5I8bkOrDWiBt
	 MzUjOsjYVuYXXRpGav2i3gb9C7Fv2ameWAW3QET/Lk09Px2EyTqhwFf6SzuNZIPd7U
	 H5upVibkyJJSMacMa2dLZkTi18ev1s16C+/TtngGXlnlTqaZCLOZ4XIZ1tiSQsHMRa
	 VTd5VNEzEnfgJNab8Zxb3y+MlC3lRXMGyxRMmqTPNeFgAUx9ZSM4j8fUQBDN8NPkJ0
	 BoIvR7wdf1WHVixTfsRcy2GhzToezOyS30GSYO3B3pojqPitIEO4wdbGHWOY1E/u6U
	 4mCZT9wxVFstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B95C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332816283.23662.11838670019377089219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abfd5e6a1501fc6daec56ba50c6ab982d09a8d8734e709b6c68ca638d3ae8b7d
Date: Wed, 17 Apr 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713328162
