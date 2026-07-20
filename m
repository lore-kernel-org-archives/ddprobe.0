Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266973C988F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784585314; cv=none; b=Fs43P+SpM87xnZY0D3WrOlC0X6LsqNzn+L9HpnIkVi4OoHrbHmt3jRDdO7qcAjaRrGVS1DqKIrhXcMh9IlSIHDXpCRkmRvupmPxKruI3g+dLdA5YLP7ir6QeD8ZpGMQLo7CiTbaSFARMOy8uiD8USWSFyg1ZpC23Ao9eFU1ySuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784585314; c=relaxed/simple;
	bh=73u9Ey7PKe6EQ1dTw5crnTDjrR73P7T2x0O3mVYGTVc=;
	h=To:Subject:From:Message-Id:Date; b=kHz0mDnDiZ7kQYQ/aWvgle5sEW4SyWGSriI6i4JFCDgN2HaXBSRyIxEO8sZb1G9p92NeG9W0JtXACjzG4xpymj2Ai/EMNjmfYzkRzW5KL9Cj6sTQOq0KmHZPeS3e1qXRJ2Q0890i9AtJ1SgibH5QeG/sSWl5JaMdmN+Qho6wQXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvyD8eAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvyD8eAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB684C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784585313;
	bh=73u9Ey7PKe6EQ1dTw5crnTDjrR73P7T2x0O3mVYGTVc=;
	h=To:Subject:From:Date:From;
	b=bvyD8eAWDOjOdj3Gz/pIVLhhgj41tSkZoak+KqCTy0uEmdiljiMpUDXkxmj51hfJf
	 7vCqwU9tZUjXo/ttZRVDtaoARUA9GdOEl3zUq9dNY4MRC/OvuSa8uIouYFpKrUnngZ
	 nfXMm7hLIunZ+UeOA0sZRH/dzUDCMHSXL0x501QsyfgmbuB7CnhPo4ocEdf/oj7FJU
	 DqnwFOD7sHRO5ZKxS3DSKOeRZiNT+CvsJ7fVDaGKL+BfeEQRAZq+NxS5nqMlhoIKcd
	 N62TEQetP/9ljFXPN6YZ8mGnlj7tXbDXLyKAittszHmMVnoCtqOsYlQgMLxvSZNqdj
	 othBTJOX+OCOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B530FC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458531370.17097.10201637620038539677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d55ef6bd5245c0545e46eca604f6189a9c6a61cf3df300ecfd0758dacaa601
Date: Mon, 20 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784585313
