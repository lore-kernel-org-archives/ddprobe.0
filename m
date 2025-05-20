Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244E618DB29
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747747194; cv=none; b=XYHt0XPAuReZIt8ALvV7VpwJfcgEY16huduNGdsqtFKs23HwgjNWwR/9mkvzd7ZrdGwqTQSIsC2xomvYoDYoAzNWbrGvf3TuPM+4OPRed9nx7dyP01WDWr8CbZhioRyMtquXB3wiQg58+AxMrB4dCC14HcoCrzpADxfvwbYCBLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747747194; c=relaxed/simple;
	bh=KihLs1bBY1VFnzSkchUbSHYjl08G2EI6uo/IopLnBL8=;
	h=To:Subject:From:Message-Id:Date; b=mgxfoUPojdMC9fRCgunnzU76u8ZmvWchq9hLV4q3s1EWUSt/fr3p1z5azX9oepvlj4ewm/qmXRxo/aRGd8F1AOni3fS9nddSTR0bEpqGwbz8Fyv4g0ExZuZrAvD3QU3z85opdCXp6SYQwU3vtbQZhFeDitFQuZN2Xh5FISVPT78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQJeRNmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQJeRNmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E95BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747747193;
	bh=KihLs1bBY1VFnzSkchUbSHYjl08G2EI6uo/IopLnBL8=;
	h=To:Subject:From:Date:From;
	b=pQJeRNmJxmMVvU8ik2rRzeEfJoadV+Ml5+ZQ3BrlSRb7TvKxAALnynb0iMf2+Xn+u
	 W7Wap3Zd0HEZXe8ATmR2Ib+ikdyaSdbNTOG3z5CiujwtSI7bbkR4Wis3LoynsfFZY/
	 BpeAy1aVnOvEQai/hHqh/diTxsKflESEwFbNYu8nROKusQ0En6mBn7rUOwsYQYE3xy
	 DWw/W4oZ15Dsub4bhfSlt21BQhB3D7R8fBEyE6JwLAoEWhN37NhpCIuER9f18yAvYc
	 9KA8vQLVDLRKk4+YsfsKgPCHOZNMl4ZN26b+aN5aWWZUEUeu2gY/rHMgwP7Zld8CYq
	 eWnM8lqShn46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F203C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774719357.32337.8886899009638819431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c251abc0d76ac9ba4afe2d99a11cf6845c5197bd64b78d0ea1622314d2bbf772
Date: Tue, 20 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747747193
