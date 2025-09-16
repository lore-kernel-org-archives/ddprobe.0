Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D4E32D5B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758044994; cv=none; b=vEttL8R0Fg5B5FBISt+rZtAcElPlUxe5W2xq0wLvLRm2SsXXU4D9/2UUxm8EUkx8mAU9jITJIPbcJJ8eJlMtarIlNd1t2HThqOSDYgbqag4nbME/mhJf4nnLv5J3h+BYr4eSYboGUdzfhXmlkKGx4210I8on0ZaPvWWdcQaMMEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758044994; c=relaxed/simple;
	bh=/0IhQMKpesMbyb1zkKuT74yOIB8byTIt/8WMbo6Hjl4=;
	h=To:Subject:From:Message-Id:Date; b=PC/J/Uy+Qu0tNwrnYt+2V3Y9kWrgox9tH29qp18yE9wpv8Keac2U0aObSo+9GUPmYT8CvscN34fBmfPbbxFn0z+hk2DoHGql4DbPpsUEI51rbC/Q7hYwpOieOuBiO5xL5QJ3WytaT15/b6hC/EwxilWnbPtA560Rh7sAGsrh1qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdsVik55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdsVik55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758044993;
	bh=/0IhQMKpesMbyb1zkKuT74yOIB8byTIt/8WMbo6Hjl4=;
	h=To:Subject:From:Date:From;
	b=pdsVik55Dk2fCYOpFeZbRw+gLOl0oviJav9ZL9jmbusoZtB2ewGkYyfmLO2ciNHns
	 5zFQMiVBe1ahL+xDx5jf5JMfnwSn465lCpUBXnxycYxOBpPcRdtznEzCVB2nyQLDN0
	 8KwcfK6zRVii87bZ13cGrZpDrIo9OWovxdbfNHEQm+vqZwE26x2g2/e4qilI1rrenc
	 ola+5I1e98V82LqrxzNb+lY28GuZG9PaaenmZUzEm3J2GXdR8U+KuSuxpyoym6kNmG
	 xu3Z8YTqmSycA/zMohTIr+gShDUBAZDx96hdU+/BLM5o6R4ROaknPxkXYLdErrFoe7
	 knb/mfsCVlhrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F672CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804499357.26507.4930931556166575872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f06b7ad7d8fe88ac594b3ab9a84d82217e2c7531e207cae48da36b9e57a6b3e
Date: Tue, 16 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758044993
