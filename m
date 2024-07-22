Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F4D1C2E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721646954; cv=none; b=jgUYsWN5IqdPbJxB0hXN9TmtTKT/v2uACfH03dFxlhaBDYfvEgBGd62auZBFFynq7hFFei+sMguBAbf5pbowGUvdr/a67qHvrHzQecjQkQ1N1+L7ulU05cWeSj5M9LOKNVJVaVi2Q91r1aC20i6iFH7a9yetMSS0Hf9FTehttuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721646954; c=relaxed/simple;
	bh=5kmBp9IGL8qcKlzi+juortBcfVneN4ySyfGzEzHuuZ0=;
	h=To:Subject:From:Message-Id:Date; b=IdgkYS79TKAf4YsSIIqD41Opu4E2HChv8ulImgB6u/3ZjqMEC89ahf7Stk2d0mQryusvvzPuC2bayPxKCgS4xvQBprOOwIlTjMtcI15aYaSPgUDuXkHKIehK1H1JJqvq5T6Fgw9uVj3R8IZIWel27cEfgytq1+ug9BifXyKzMl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHpjDbbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHpjDbbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E2C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721646953;
	bh=5kmBp9IGL8qcKlzi+juortBcfVneN4ySyfGzEzHuuZ0=;
	h=To:Subject:From:Date:From;
	b=eHpjDbbE6oYEaNgIRP1rAXlQNtq739QFWRy/5YcNflr0yUkGW9c5Pyrc/CPNrNOK6
	 PzgxyxnsmQj/hnfgln1Mg2u3B2f2GnWGNqDCt9P6fmFsUSI0uCF5pnbGOv/jZW7DQl
	 +rdQW5wboFbkuNeeFvniVMKiEdt9H3drlXcnW8sjZvn9d7cLfvszXia+7f/luTqESb
	 PTpM+na2QFARRQ/D7sovrzWAmZPGoPOAENw4TJP5rxEkraMxdCFJNqcT5cZtbd0Sa+
	 bGzns+y8YHHlFWVebpCziVwipuTsRPjeOywaECqSYoi14hpfkLd6UryIdTs6nF4FCD
	 Wq8BlFTtVoJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9202FC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164695358.11408.2688830092064921310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da87c93cd6da01f9447079ba843d2b440cb104685eb3c0c6138f46a700ddf17
Date: Mon, 22 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721646953
