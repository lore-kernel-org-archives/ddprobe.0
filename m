Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3438884D0F
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735217754; cv=none; b=LwdxOwALe1u7Ied6mVRtH3eEUVlJ8YPBigU5Hh+14mQ6RRjdX/JIS3ucEhT5L0Epy1d7YkF/2vvKH1oJHTvyIlIuuEVBU9OfwMmPyeE8OND8JrlHkrh4xSxiJhwk6g7Nrjd2GYbAeCCkpWFemn1SPaBcSdSEHh11rWAJ4aOAVMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735217754; c=relaxed/simple;
	bh=+/ScBzsbFb8dRXVkwau2QSRyLY1zRyvoZe6LuXmPWHE=;
	h=To:Subject:From:Message-Id:Date; b=rO9ADlGz/hclB3cALlkye2oi4dgw0q//hXdoaVjerhQv9Ye5nOtxXneoe1mtDf+Z8ruezbJ0yhyWip7tJLZBzIInLLf39XyAXtfqKvY26vGnWxkdJQCC7JQ7MDVxD6wMQ+sULC9DI+fK7en45M/sR6ZEVKdlIPS3BIiyZXoY18M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyF1L/5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyF1L/5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB918C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735217753;
	bh=+/ScBzsbFb8dRXVkwau2QSRyLY1zRyvoZe6LuXmPWHE=;
	h=To:Subject:From:Date:From;
	b=TyF1L/5ioLrGBMQ8ACCn6Is3kHAPKVYIA5WtHp9V0XAVfqgxkk9/IO0SgEVAQqMF4
	 snlpc9iPyvL0EZwjeuB1zekBwLnrC/EweC5qL5e7vMdfYCdBerlxr6mnLlhHdpvMPu
	 V8XSTp0X0/HrkuO5850skaMOG1dQnL0QktT7xVd64xpC6Gf+x18KjzYaKO1O+URLeF
	 3oeDTfLLSPpxEwDqtZRAubMOEylnZfCGV+TK3gxdid9DK6qzVdQ/bqPM1TRGKITNye
	 uTx8xOxweBvPoh3D6OsJ/r6/rno0jR4ZSCnXL0MlZ5aHbsWJ6IU4iyaiFm1O3iw7Pq
	 FIuxx+/YyFx0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9729DE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173521775358.26027.1375584636497610422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58db3ca4e0178f2be06708b8a780fd22d134ba88040bc9bdb722aed2880dae8
Date: Thu, 26 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735217753
