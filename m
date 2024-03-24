Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2A0CA64
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711292297; cv=none; b=oAH1y1jaA+KyRvoObWgzMnVJ+24yzHPxA/bLbJyapNpY3fgel1mACPWW1f6LQJoDIu517ODdjRv9UBospzjEgmSLDmsO9OiaGI5N1Ox+NNCngydieEcYblmSff018sXIygMbNs0LaeFr9SbNXOD9CkcAoWomEnZuy6ErfbssyFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711292297; c=relaxed/simple;
	bh=rPisx40a7tkroM2qgfJRvbrf//4AGTkhwQi9ziCD280=;
	h=To:Subject:From:Message-Id:Date; b=msznU0tSnGayAw9/eQNCUVB92wzq6jBNNxqCxFUcq8lFA9cZLPaF/EHtr3I3pEWG4CDK9XOCTd8A/+hjHo7FtWsp0lWbnufRHbWM9adlPLvkDmc/iPOamTQGs+NpUs1oq7bjhyn0KMtZ/aIvDvInABokeFQc5WuIkKCLDObYTUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0oiQNjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0oiQNjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7865CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711292296;
	bh=rPisx40a7tkroM2qgfJRvbrf//4AGTkhwQi9ziCD280=;
	h=To:Subject:From:Date:From;
	b=E0oiQNjTjBvBuga4/zaRL76286G2b0E6tbTnUwzupvY08G34/QCsvYCIAT25BM/9I
	 ml5CA83BIhBmpbz+xwXq1c1e0MpdlvHl8lQoMiaYojWWm7Sn1QdzHiElEUudR6iW14
	 /l4El2b0aPJFyw5aA6/ZxWZ2K5Obnyu3O0UhEEN+94yMfZEp2CayPJNm3roYteTdX8
	 Wy6Yt3LnpaQKfGZGQK4q63FtJDLEjvTrF99UT/VIhFtn1wjtZ2woknYCeqsWAX0Sl+
	 SnqYDcDKQbDgYHuxuZaA5Mb5+VhgsyqBVP3H3PkaK/VuHJeWnM9IDsGeG8iodAdTWS
	 EPoIx9drHWKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6047AC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171129229638.13553.3636180099192414932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b99d510c3eddad62ef0ad450ffd06e8dbb7088726c5660647e187360ba9612
Date: Sun, 24 Mar 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711292296
