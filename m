Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AB578F54
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750861194; cv=none; b=hTU+jWUCWTCbDZiamQq03KbEnDcs7aSA4g8dj02zhOUTttzA69xcyCoOg02UMf8TI8LyKCYtdT0Uon8FGldR4RMoNmXEcAo7C3ZUY2zjey90CgKxcOvDHBbjqrildtYOsqFeOaeAC7eESrTWAUR5ut/w9zMThF4F847JK7rIcU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750861194; c=relaxed/simple;
	bh=fF+z3ng7duAV+uEpT26yCm1Rr7zQJQo64mzSKAZMrRk=;
	h=To:Subject:From:Message-Id:Date; b=I7MyG9FNeFI1wC3V7+hOZuic1k2s3Ty/pSXh3SbnqgU6YdI6BOthD72TH3M9ElEEOsXx8DwxGYXlS39zCeeZ1MDepzuZE6c+VM7qS81dleiVj+M8ykuDhtnfWlGPQbj/t1Q4pWDqO0EmpE71ILsxs+A/iuJLwEK/IRLmoxlgin0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoOCIAdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoOCIAdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50AEC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750861193;
	bh=fF+z3ng7duAV+uEpT26yCm1Rr7zQJQo64mzSKAZMrRk=;
	h=To:Subject:From:Date:From;
	b=QoOCIAdDEFHsokQtGvHmfB18NYuHPt43PuGMROSY033tsnCQRijV0YWhh8TueGZNV
	 zfMg0xzyxgrlwNwT9FgZHrVQFSDRVzvta/59iZvnwjxcWCoseZhchZUm7Nm+KGq2oA
	 0Nluxo3tyqk29C/UvnOv4DSU0KLugP5f24RdKHpNWll7mn5LMH0hshhhggEqMsqBBp
	 7tO50WpW0PFDzULxKgUgNxKqe81Cx3IIVUvxCAe+ZwrlRsRloj7IbPyoYmFgGmFdPG
	 4+ct7VgBHJeoSO/PlAqCQcNY3z/J0ALdCHHp46WcvAz9zLiT0xbBx3fQEVwk9qYrXu
	 94KJbICyxJYIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548CC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086119360.16376.188269577520551104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163d2ec82f97b5afc692d3c377b91250260e3f94d2fad6ed6a8c0f2b019023b7
Date: Wed, 25 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750861193
