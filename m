Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347B81A08B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147594; cv=none; b=ToIR6H9rAfmPE2v0zuPBaeRFo+1fV0hJ9gyc6rsHDA7Hvn4AOnqrkIhUCuVSt7BBP2dtZ3+foOIposC9Y8dkHwMEE8xqq0VRFScAi2laAwuVF0JjhB8/avO4d4i5kYmdaXEAk4o2hQIBokXPmJY/Xm4Be9IPd9Vl7B7HUDzsCLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147594; c=relaxed/simple;
	bh=7Svo7lykgXz0XxpxF9t2LZqYst8PWlp+9rGDdNeLVNw=;
	h=To:Subject:From:Message-Id:Date; b=M6QQQG7SyLxI7Q3SQOos9/YHKdHHVLvkpoCFEjC/+Fdl9ERhx1xBNYVSKMCXDF1Qi9TBCQiS55NO+wo+G9BLegCPqYCp8hoYPsKiDKyx6WbCcMbud+S/5FzcasBHHnBow5XmM1Qs2XqQpLDUDxCifRxl0C6CXUluvTsULO7ZZ/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm06Qocm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm06Qocm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F0BC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743147593;
	bh=7Svo7lykgXz0XxpxF9t2LZqYst8PWlp+9rGDdNeLVNw=;
	h=To:Subject:From:Date:From;
	b=Tm06Qocm6s0tZV+Tfe1ypj368f96Rn6p6pbRXTjzg84zDsDSHy7t2wEdIkJb+EHqB
	 1SnxStuz2DtwJkCb5f9QphG1wO+/P1NFD0k8c9Jpz0WF09kCSfpngxRCKDSwgK8OvA
	 1GebodI9ElDpffQV+2Q3ENO10TV/Vz5BflHJ7j6unf3yxneFArCQiuoGRK4OJ7lPRv
	 SI/QMnavvYTIXGwQoegAK1GTA2gohryiAiv061O55P29Qh3EAZI9jPF+kCqLwXlsZD
	 yFKI+BoKzEI6cSlqrW9/tkypUuMyH55MtiNoBlmnJAGxZU4I/ZTeuOkxfOpdlmGfI4
	 hAXm2QF6uEnxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A0C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314759359.11416.4189910308046767307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0000e352c9a936a07a2f416e1c9b308273878fc675995119244d05dff2a601d
Date: Fri, 28 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743147593
