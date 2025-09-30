Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FCE207A20
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759250994; cv=none; b=F4T2c5/olNRcsABkfcBEsDQCcPR964pu57I4lwMNmoEquN25bRJpHgOEja5EiSTExAlvVUDjZk6IIrwExQkNCcmh6SJFIk9uYc9PfhVYlonYBZNV1RFmLkvbUHmazC9beGNE4lGqXzrFcCjmHqvjwG4xKDMKisEj3tT5wolkdfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759250994; c=relaxed/simple;
	bh=QReo2Z9tCuPcxtXPkL04wExgPLOm9wRQA4Yyqt5xqc8=;
	h=To:Subject:From:Message-Id:Date; b=XW1QSaEDIwd1dIzAjJn/VE8bySP01CG8nd339OPK29MpaBx+6xDDht+AuInifD9ZUgzSuG1eYlZlC3x6MvsBZJv+D+3MNd4YbgcvQfwZwOjgeRha2wvDzoMfbwTAFE3IOXvFpEYS3D9X36X3Ml82E7vnHnJCgIxioeWLDLcl+ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ5CIkg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ5CIkg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84FEC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759250993;
	bh=QReo2Z9tCuPcxtXPkL04wExgPLOm9wRQA4Yyqt5xqc8=;
	h=To:Subject:From:Date:From;
	b=AJ5CIkg5dL9Lvg7E3qtWcnuPcuBBOtR3hLmka+deduqI4ugyNKTZLZv/0ozmzL9h1
	 MS0VPt+OYI2Q09BHqNEQPp4hTasvIQOR1nwrR6tYWbOW0QeeC52K2N0l5IyPCD+wOb
	 Sg4cjO7x+YcYU55v/10UX1gZWcM7BTxoXVgS0f0VbCTQoaEwYm5RFwjTd2H3hHpvkE
	 +NDRv23hFRBA2qYqEHd7SDap6E5i10YTDQMZiah6gHAI1uuOB7jTc4N90j540/8+am
	 6m+bhIspYOJmfIXLwnodr3gGal7PTfOHt60c34dk5VK/sfFFTUysBBYSfqkKJI1mzJ
	 K3Pj1XS5MqS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97615CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925099358.20464.11804308469844652491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17703cfa8eecb33c3cd74ab17c58209c89ac99f6247c9de5595b6a6aa1979e3
Date: Tue, 30 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759250993
