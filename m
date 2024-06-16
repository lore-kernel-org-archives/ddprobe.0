Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CE28F54
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718542103; cv=none; b=J1hY/re+qVIxX0UYBAe7wB+ZeNV5NlUwVucRiQ2M7ZZsXumQLUa2HyKNFMeZhPuGzSHq5MWA/UssnBoHyGbeAAq5b0KSmEHbwr0m76ydjAgJEKFkkqhR3obgak7jKT2Tro30rdD7nmq1gbrlY3UXg7cIMkfNHPOCfmfJh2+OGiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718542103; c=relaxed/simple;
	bh=XGGzOkhuFCqoA5diJvvw2kjI0yUp+J+CG6Wiw6HEZXY=;
	h=To:Subject:From:Message-Id:Date; b=NAsRS8pApKogRZ9XEbjBue8LrFMGJATbcFjvsK86aOmXu0a5OkroyTzzQSsuEOyop9wri3pi5aUofyy6B4y0XUvF1e4DmGx6Sbms6iCCF0TKoiv70WzW+AwJagIU24dycWFQfV4f3zBsj5QqHdLEkNtXxzDVqsjo6wMhIHEZRR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGVI+d0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGVI+d0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD85C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718542102;
	bh=XGGzOkhuFCqoA5diJvvw2kjI0yUp+J+CG6Wiw6HEZXY=;
	h=To:Subject:From:Date:From;
	b=ZGVI+d0dUn/iSvrprLS0G96GlKeMkcqznWYjAkPR+W+CSj3Wf5pzWRleumNwkdX4F
	 MgfsOMAypiYPjOO6ap4yAxK5lUXB+lwXq2yDUkV8mzVA/S7iqpAttvp8Cte1jCQGU2
	 1+wy8pT2Vc398MWc1M/i4fKSyntDRhPbSJ5NXoCw5ZYR/0GuLProJu0e6zIgJ1A4eQ
	 2yjosiO3gSN6hNs/PKdRnUIPO8nmdNp4Y6gnfjytLuEnVscLwsOTr9K0IBGdk3ojxk
	 XyHS9Pbi5WR3Ig9EbD8YSRxAL7EMN2F9twiXsiZKquyCQn5dngnvIZNQS82ZBKLp/9
	 3wphtsC6MGwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C506CC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854210277.12852.2518752938849210669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af7d7d5ef3840a0f3d5417b2a63b0d6b21f95f6a345494a08fee1374a77d4f7
Date: Sun, 16 Jun 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718542102
