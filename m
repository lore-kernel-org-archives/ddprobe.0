Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223E715B971
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755965994; cv=none; b=Ntc8Sz7CPgujgf87WnS52pxxOu5fvtN6Idff+Wmp5ViF0R5Lu/Awn6aXiJkEKW7iy0zEeyqsmDkAztp4RQ+BFqNw7v9wLKMjLtZrEALJTQGgRdk1gZEnBkMynhoGADPW535iXq3PxkSzkbybAlq9uMuuIgJrl/AiUufkfYS+WTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755965994; c=relaxed/simple;
	bh=Z2PkLbftoiEXuUmi6NgmmgV2+OEcfdV7rToOe+anWjw=;
	h=To:Subject:From:Message-Id:Date; b=PkTH+DITglvLbFWa8ZtzHOJyccWULEvarjur0vKANJy0l/PSmdBhgvrH25rrciC6M3dnKCNsOYpoi2ZN/zQynp8aTDRmgROXzC0gwUWfLfpcqfEQJxMtw+zcglTjWcUCk0hr0OXn6y9hQybk1xsXN4+2KCV1nmQWZK7T9MsHCBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNSWcGnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNSWcGnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755965993;
	bh=Z2PkLbftoiEXuUmi6NgmmgV2+OEcfdV7rToOe+anWjw=;
	h=To:Subject:From:Date:From;
	b=jNSWcGnkcwvuQ33j3td5ZzowlLzFkjdd42vniDzOYf+5/xai23c7ikoFGs6aOg2SY
	 JZ5lrPrxVR+IRHNYnT7FY1xQgNY8ZeVbF7uY2xql18mHKgsaiWVQa6KQFQOnh9F+ep
	 KH2F3NZCeEpOTr5iym+58wzWKwxaXM+grD6Gohosi1hERWjqYVBWNG/d+5yluSaCdz
	 b3Nph/Iyi6qKGcXmtvdrJdcLhan66CWEdNM7YY9v0Ttpl9AFYu64BLBTuoEvhrvL+w
	 mRVTrKN3VlrrLewtzXba30V2bggokvZrzzruTN5EkTPJlAVnrtgbr0qvOWOMVW+nPB
	 QnaMtA/cmRbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5EACA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596599357.12617.5484803070909183914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20417794667143450c43e516f80fb6c9e3e62b1ed925e78d2a8554368819b65a
Date: Sat, 23 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755965993
