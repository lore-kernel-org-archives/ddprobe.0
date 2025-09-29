Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FF5277C9D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759135794; cv=none; b=rFm++lVWZbt/MF1WV3tEMcjNwSoZTlh2TQZ377sWcP12cz2zpbmH9hwlgfArPy9x3KonN3jSRzk9RxBG1mGj8FyeceKWNAYr8rBAXhEkOlwM4P7mMm1neH7NhO2sKWZ46LPArRzfZOswN8a3atjMmZfLY+kTpG8vp3QC4cwutQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759135794; c=relaxed/simple;
	bh=iT8Fo9PlaYdaYw8kmzVwbie/zZkvvZAGv9qLm+PdBd0=;
	h=To:Subject:From:Message-Id:Date; b=Hcl1XF8W2AmNL8TeDPuCScSBhrSSXx6rKH8QJxgoBsZhOgGFS3GHtg8ULwwcRHcfD8hK5uQCiX5lrwICQFqhfiFo6Mi0u+8dFI2lZi4tWa3bIL4fuIpCJL+XzeekAPwaHOch6xvSMrhzcMqBX3nYr4ecleOkvKx2WlHedxiy0TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quXv4YBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quXv4YBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD6C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759135793;
	bh=iT8Fo9PlaYdaYw8kmzVwbie/zZkvvZAGv9qLm+PdBd0=;
	h=To:Subject:From:Date:From;
	b=quXv4YBS8EJEVnSB6//TzkBXhauRAzVBLGYZ+t/EI1DtfuzxxIR/f+92tlw0BPfiq
	 ZmadeZMlgikiHObHTbRhWcZwiMEAdrxas7LX6Ykm8PjjzE8EmAkePozjQUHKf20yI2
	 NePMufM70ni7uejjiNnOOuC/4L5IbIjdaY0cZRwCOCo4iBaBOlOs4gYFsNq8VH0OXX
	 d43MS2MvtMsxwbmjq5T6JTbNiQMZIu58GbxDaxGKavu7QYitGrJ0K1IcSDAFBOqoLg
	 aHpb4fjvK2Cyn1U/Sig3HW8sulDnGeXu5JUrjfcxgqaqwi1nkoHtnN8FefvnQu5bIp
	 pLd9wR2X6PmiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024DCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913579358.6053.3579618742526535288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c5229ca80894b05ba789320adb1e8a31938168e91b07522b1169ea2f76f6f8
Date: Mon, 29 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759135793
