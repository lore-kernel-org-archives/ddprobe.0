Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2374726A1B8
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753425594; cv=none; b=RWIFmS5USkjeYaCMOEHWNiEUfIS9EP8Twa09C/CMVfJ2Kmpk53V2E1g5JyWtx4EtW5ktNUNkEmk7b7UsQvcVGv1DI/De8wOXdxAV/+79FhGEvdN/FvjdqdQoz6hgd++APTYmhBnRR0P9tbqF0L0Ne6UjZo8o2K2QYe0ubR5p9J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753425594; c=relaxed/simple;
	bh=/QGWL/c0om1GhBcS0ek6BmVLukKS3IlmHTVzNPT3xJw=;
	h=To:Subject:From:Message-Id:Date; b=HsE5pnzT12OtZdZP8Cp8Hv+gbXyWYjs/zzr7nlrVzSTvlPj0CprYNIlJOxF249nuezbiCamV+JslYhVh0sZirK7ygVjwUKzipUZHjfibWVBAbsOytMtS6yoa+wybmPV3Qw7dRBS+qjby+tkUOhv1juqmgTYHHBL3XpGoyZHAKls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuLe1tFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuLe1tFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753425593;
	bh=/QGWL/c0om1GhBcS0ek6BmVLukKS3IlmHTVzNPT3xJw=;
	h=To:Subject:From:Date:From;
	b=nuLe1tFaMOzq8kn4fywt/gT5fnblLuKlTTRgAVGlsjS0+sTZYbV0fBtbLwpyBEhZu
	 aBPTq+oqI+Xku3EmjM84tq/99pLvA4eUSuDBDRihdPD50fQAr/JI9ZKCKEz6W8HmLP
	 wkjb5HtQPp3bbjJEZfjaY1macurXYVXCU1yP6Zfc6c2C+pgxFE5o8zVQ0YsbmtbIga
	 fHd+zejExEVFFzRs4QfUGgeQR1015zdzEhmpaDIhekbFLJ45EZGuVud4DHiiZb0UHy
	 uo6serKJIqQkDxWro+CD6zbX8O68BZFU9kic71hjJsYkWH6iMXlsrJ8PZ9+48Rq1hT
	 tsueG4mFjH9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E2C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342559357.31308.16271809827888996297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3d909eb99e032e5b78c0968d0846ab8e6e65e6cc11664a575c72e733d21826
Date: Fri, 25 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753425593
